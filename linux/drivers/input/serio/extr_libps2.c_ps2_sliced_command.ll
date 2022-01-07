; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_sliced_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_sliced_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PS2_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@PS2_CMD_SETRES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%02x - %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps2_sliced_command(%struct.ps2dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ps2dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ps2dev* %0, %struct.ps2dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %9 = call i32 @ps2_begin_command(%struct.ps2dev* %8)
  %10 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %11 = load i32, i32* @PS2_CMD_SETSCALE11, align 4
  %12 = call i32 @__ps2_command(%struct.ps2dev* %10, i32* null, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  store i32 6, i32* %5, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %23, 3
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %26 = load i32, i32* @PS2_CMD_SETRES, align 4
  %27 = call i32 @__ps2_command(%struct.ps2dev* %25, i32* %7, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 2
  store i32 %34, i32* %5, align 4
  br label %17

35:                                               ; preds = %30, %17
  br label %36

36:                                               ; preds = %35, %15
  %37 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %38 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %45 = call i32 @ps2_end_command(%struct.ps2dev* %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @ps2_begin_command(%struct.ps2dev*) #1

declare dso_local i32 @__ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ps2_end_command(%struct.ps2dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
