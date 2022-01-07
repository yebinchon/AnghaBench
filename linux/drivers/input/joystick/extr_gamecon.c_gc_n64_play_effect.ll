; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_play_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_play_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ff_rumble_effect }
%struct.ff_rumble_effect = type { i64, i64 }
%struct.gc = type { i32 }
%struct.gc_subdev = type { i32 }

@FF_RUMBLE = common dso_local global i64 0, align 8
@GC_N64_CMD_01 = common dso_local global i32 0, align 4
@GC_N64_CMD_00 = common dso_local global i32 0, align 4
@GC_N64_CMD_03 = common dso_local global i32 0, align 4
@GC_N64_CMD_80 = common dso_local global i32 0, align 4
@GC_N64_DELAY = common dso_local global i32 0, align 4
@GC_N64_CMD_c0 = common dso_local global i32 0, align 4
@GC_N64_CMD_1b = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @gc_n64_play_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gc_n64_play_effect(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.gc*, align 8
  %10 = alloca %struct.gc_subdev*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.ff_rumble_effect*, align 8
  %13 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %6, align 8
  %14 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %15 = call %struct.gc* @input_get_drvdata(%struct.input_dev* %14)
  store %struct.gc* %15, %struct.gc** %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.gc_subdev*
  store %struct.gc_subdev* %17, %struct.gc_subdev** %10, align 8
  %18 = load %struct.gc_subdev*, %struct.gc_subdev** %10, align 8
  %19 = getelementptr inbounds %struct.gc_subdev, %struct.gc_subdev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 1, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %11, align 1
  %23 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %24 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FF_RUMBLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %107

28:                                               ; preds = %3
  %29 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %30 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.ff_rumble_effect* %31, %struct.ff_rumble_effect** %12, align 8
  %32 = load %struct.ff_rumble_effect*, %struct.ff_rumble_effect** %12, align 8
  %33 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load %struct.ff_rumble_effect*, %struct.ff_rumble_effect** %12, align 8
  %38 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %28
  %42 = load i32, i32* @GC_N64_CMD_01, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @GC_N64_CMD_00, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %13, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @local_irq_save(i64 %47)
  %49 = load %struct.gc*, %struct.gc** %9, align 8
  %50 = load i32, i32* @GC_N64_CMD_03, align 4
  %51 = load i8, i8* %11, align 1
  %52 = call i32 @gc_n64_send_command(%struct.gc* %49, i32 %50, i8 zeroext %51)
  %53 = load %struct.gc*, %struct.gc** %9, align 8
  %54 = load i32, i32* @GC_N64_CMD_80, align 4
  %55 = load i8, i8* %11, align 1
  %56 = call i32 @gc_n64_send_command(%struct.gc* %53, i32 %54, i8 zeroext %55)
  %57 = load %struct.gc*, %struct.gc** %9, align 8
  %58 = load i32, i32* @GC_N64_CMD_01, align 4
  %59 = load i8, i8* %11, align 1
  %60 = call i32 @gc_n64_send_command(%struct.gc* %57, i32 %58, i8 zeroext %59)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %69, %45
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 32
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.gc*, %struct.gc** %9, align 8
  %66 = load i32, i32* @GC_N64_CMD_80, align 4
  %67 = load i8, i8* %11, align 1
  %68 = call i32 @gc_n64_send_command(%struct.gc* %65, i32 %66, i8 zeroext %67)
  br label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %61

72:                                               ; preds = %61
  %73 = load %struct.gc*, %struct.gc** %9, align 8
  %74 = load i8, i8* %11, align 1
  %75 = call i32 @gc_n64_send_stop_bit(%struct.gc* %73, i8 zeroext %74)
  %76 = load i32, i32* @GC_N64_DELAY, align 4
  %77 = call i32 @udelay(i32 %76)
  %78 = load %struct.gc*, %struct.gc** %9, align 8
  %79 = load i32, i32* @GC_N64_CMD_03, align 4
  %80 = load i8, i8* %11, align 1
  %81 = call i32 @gc_n64_send_command(%struct.gc* %78, i32 %79, i8 zeroext %80)
  %82 = load %struct.gc*, %struct.gc** %9, align 8
  %83 = load i32, i32* @GC_N64_CMD_c0, align 4
  %84 = load i8, i8* %11, align 1
  %85 = call i32 @gc_n64_send_command(%struct.gc* %82, i32 %83, i8 zeroext %84)
  %86 = load %struct.gc*, %struct.gc** %9, align 8
  %87 = load i32, i32* @GC_N64_CMD_1b, align 4
  %88 = load i8, i8* %11, align 1
  %89 = call i32 @gc_n64_send_command(%struct.gc* %86, i32 %87, i8 zeroext %88)
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %98, %72
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 32
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.gc*, %struct.gc** %9, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i8, i8* %11, align 1
  %97 = call i32 @gc_n64_send_command(%struct.gc* %94, i32 %95, i8 zeroext %96)
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %90

101:                                              ; preds = %90
  %102 = load %struct.gc*, %struct.gc** %9, align 8
  %103 = load i8, i8* %11, align 1
  %104 = call i32 @gc_n64_send_stop_bit(%struct.gc* %102, i8 zeroext %103)
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @local_irq_restore(i64 %105)
  br label %107

107:                                              ; preds = %101, %3
  ret i32 0
}

declare dso_local %struct.gc* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gc_n64_send_command(%struct.gc*, i32, i8 zeroext) #1

declare dso_local i32 @gc_n64_send_stop_bit(%struct.gc*, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
