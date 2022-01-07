; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_arc_ps2.c_arc_ps2_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_arc_ps2.c_arc_ps2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32, %struct.arc_ps2_port* }
%struct.arc_ps2_port = type { i32, i32 }

@STAT_TIMEOUT = common dso_local global i32 0, align 4
@PS2_STAT_TX_ISNOT_FUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"write timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @arc_ps2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_ps2_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.arc_ps2_port*, align 8
  %8 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load %struct.serio*, %struct.serio** %4, align 8
  %10 = getelementptr inbounds %struct.serio, %struct.serio* %9, i32 0, i32 1
  %11 = load %struct.arc_ps2_port*, %struct.arc_ps2_port** %10, align 8
  store %struct.arc_ps2_port* %11, %struct.arc_ps2_port** %7, align 8
  %12 = load i32, i32* @STAT_TIMEOUT, align 4
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %33, %2
  %14 = load %struct.arc_ps2_port*, %struct.arc_ps2_port** %7, align 8
  %15 = getelementptr inbounds %struct.arc_ps2_port, %struct.arc_ps2_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ioread32(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = call i32 (...) @cpu_relax()
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PS2_STAT_TX_ISNOT_FUL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i8
  %28 = load %struct.arc_ps2_port*, %struct.arc_ps2_port** %7, align 8
  %29 = getelementptr inbounds %struct.arc_ps2_port, %struct.arc_ps2_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iowrite32(i8 zeroext %27, i32 %30)
  store i32 0, i32* %3, align 4
  br label %43

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %13, label %37

37:                                               ; preds = %33
  %38 = load %struct.serio*, %struct.serio** %4, align 8
  %39 = getelementptr inbounds %struct.serio, %struct.serio* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %23
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @iowrite32(i8 zeroext, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
