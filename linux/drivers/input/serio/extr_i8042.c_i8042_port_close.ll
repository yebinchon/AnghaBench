; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c_i8042_port_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c_i8042_port_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.serio* }
%struct.serio = type { i32 }

@i8042_ports = common dso_local global %struct.TYPE_2__* null, align 8
@I8042_AUX_PORT_NO = common dso_local global i64 0, align 8
@I8042_CTR_AUXINT = common dso_local global i32 0, align 4
@I8042_CTR_AUXDIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"AUX\00", align 1
@I8042_CTR_KBDINT = common dso_local global i32 0, align 4
@I8042_CTR_KBDDIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"KBD\00", align 1
@i8042_ctr = common dso_local global i32 0, align 4
@I8042_CMD_CTL_WCTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't write CTR while closing %s port\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't reactivate %s port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @i8042_port_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i8042_port_close(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %6 = load %struct.serio*, %struct.serio** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i8042_ports, align 8
  %8 = load i64, i64* @I8042_AUX_PORT_NO, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.serio*, %struct.serio** %10, align 8
  %12 = icmp eq %struct.serio* %6, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @I8042_CTR_AUXINT, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @I8042_CTR_AUXDIS, align 4
  store i32 %15, i32* %4, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @I8042_CTR_KBDINT, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @I8042_CTR_KBDDIS, align 4
  store i32 %18, i32* %4, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %3, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @i8042_ctr, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* @i8042_ctr, align 4
  %24 = load i32, i32* @I8042_CMD_CTL_WCTR, align 4
  %25 = call i64 @i8042_command(i32* @i8042_ctr, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %19
  %31 = call i32 @udelay(i32 50)
  %32 = load i32, i32* %4, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @i8042_ctr, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* @i8042_ctr, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @i8042_ctr, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* @i8042_ctr, align 4
  %39 = load i32, i32* @I8042_CMD_CTL_WCTR, align 4
  %40 = call i64 @i8042_command(i32* @i8042_ctr, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %30
  %46 = call i32 @i8042_interrupt(i32 0, i32* null)
  ret void
}

declare dso_local i64 @i8042_command(i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @i8042_interrupt(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
