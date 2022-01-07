; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_ff-memless.c_input_ff_create_memless.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_ff-memless.c_input_ff_create_memless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, %struct.ff_device* }
%struct.ff_device = type { i32*, i32, i32, i32, i32, i32, %struct.ml_device* }
%struct.ml_device = type { i32 (%struct.input_dev.0*, i8*, %struct.ff_effect*)*, i32, %struct.TYPE_2__*, i32, i8*, %struct.input_dev* }
%struct.input_dev.0 = type opaque
%struct.ff_effect = type opaque
%struct.TYPE_2__ = type { i32* }
%struct.ff_effect.1 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ml_effect_timer = common dso_local global i32 0, align 4
@FF_GAIN = common dso_local global i32 0, align 4
@FF_MEMLESS_EFFECTS = common dso_local global i32 0, align 4
@ml_ff_upload = common dso_local global i32 0, align 4
@ml_ff_playback = common dso_local global i32 0, align 4
@ml_ff_set_gain = common dso_local global i32 0, align 4
@ml_ff_destroy = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@FF_PERIODIC = common dso_local global i32 0, align 4
@FF_SINE = common dso_local global i32 0, align 4
@FF_TRIANGLE = common dso_local global i32 0, align 4
@FF_SQUARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_ff_create_memless(%struct.input_dev* %0, i8* %1, i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)*, align 8
  %8 = alloca %struct.ml_device*, align 8
  %9 = alloca %struct.ff_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)* %2, i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ml_device* @kzalloc(i32 48, i32 %12)
  store %struct.ml_device* %13, %struct.ml_device** %8, align 8
  %14 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %15 = icmp ne %struct.ml_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %119

19:                                               ; preds = %3
  %20 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %21 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %22 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %21, i32 0, i32 5
  store %struct.input_dev* %20, %struct.input_dev** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %25 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)*, i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)** %7, align 8
  %27 = bitcast i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)* %26 to i32 (%struct.input_dev.0*, i8*, %struct.ff_effect*)*
  %28 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %29 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %28, i32 0, i32 0
  store i32 (%struct.input_dev.0*, i8*, %struct.ff_effect*)* %27, i32 (%struct.input_dev.0*, i8*, %struct.ff_effect*)** %29, align 8
  %30 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %31 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %30, i32 0, i32 1
  store i32 65535, i32* %31, align 8
  %32 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %33 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %32, i32 0, i32 3
  %34 = load i32, i32* @ml_effect_timer, align 4
  %35 = call i32 @timer_setup(i32* %33, i32 %34, i32 0)
  %36 = load i32, i32* @FF_GAIN, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @set_bit(i32 %36, i32 %39)
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = load i32, i32* @FF_MEMLESS_EFFECTS, align 4
  %43 = call i32 @input_ff_create(%struct.input_dev* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %19
  %47 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %48 = call i32 @kfree(%struct.ml_device* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %119

50:                                               ; preds = %19
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 1
  %53 = load %struct.ff_device*, %struct.ff_device** %52, align 8
  store %struct.ff_device* %53, %struct.ff_device** %9, align 8
  %54 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %55 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %56 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %55, i32 0, i32 6
  store %struct.ml_device* %54, %struct.ml_device** %56, align 8
  %57 = load i32, i32* @ml_ff_upload, align 4
  %58 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %59 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @ml_ff_playback, align 4
  %61 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %62 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ml_ff_set_gain, align 4
  %64 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %65 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @ml_ff_destroy, align 4
  %67 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %68 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @FF_RUMBLE, align 4
  %70 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %71 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @test_bit(i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %50
  %76 = load i32, i32* @FF_PERIODIC, align 4
  %77 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @set_bit(i32 %76, i32 %79)
  %81 = load i32, i32* @FF_SINE, align 4
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @set_bit(i32 %81, i32 %84)
  %86 = load i32, i32* @FF_TRIANGLE, align 4
  %87 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @set_bit(i32 %86, i32 %89)
  %91 = load i32, i32* @FF_SQUARE, align 4
  %92 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %93 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @set_bit(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %75, %50
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %115, %96
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @FF_MEMLESS_EFFECTS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  %102 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %103 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %109 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32* %107, i32** %114, align 8
  br label %115

115:                                              ; preds = %101
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %97

118:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %46, %16
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.ml_device* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_ff_create(%struct.input_dev*, i32) #1

declare dso_local i32 @kfree(%struct.ml_device*) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
