; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_i2c.c_psb_intel_i2c_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_i2c.c_psb_intel_i2c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_i2c_chan = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.drm_device* }
%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.psb_intel_i2c_chan*, i32, i32, i32, i32 (%struct.psb_intel_i2c_chan*, i32)*, i32 (%struct.psb_intel_i2c_chan*, i32)* }
%struct.drm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"intel drm %s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@get_data = common dso_local global i32 0, align 4
@get_clock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.psb_intel_i2c_chan* @psb_intel_i2c_create(%struct.drm_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.psb_intel_i2c_chan*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.psb_intel_i2c_chan*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.psb_intel_i2c_chan* @kzalloc(i32 88, i32 %9)
  store %struct.psb_intel_i2c_chan* %10, %struct.psb_intel_i2c_chan** %8, align 8
  %11 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %12 = icmp ne %struct.psb_intel_i2c_chan* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %86

14:                                               ; preds = %3
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %17 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %16, i32 0, i32 3
  store %struct.drm_device* %15, %struct.drm_device** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %20 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %22 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @I2C_NAME_SIZE, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @snprintf(i32 %24, i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @THIS_MODULE, align 4
  %29 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %30 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %33 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %32, i32 0, i32 1
  %34 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %35 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %36, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %42 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32* %40, i32** %44, align 8
  %45 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %46 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 6
  store i32 (%struct.psb_intel_i2c_chan*, i32)* @set_data, i32 (%struct.psb_intel_i2c_chan*, i32)** %47, align 8
  %48 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %49 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 5
  store i32 (%struct.psb_intel_i2c_chan*, i32)* @set_clock, i32 (%struct.psb_intel_i2c_chan*, i32)** %50, align 8
  %51 = load i32, i32* @get_data, align 4
  %52 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %53 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @get_clock, align 4
  %56 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %57 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %60 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 20, i32* %61, align 8
  %62 = call i32 @usecs_to_jiffies(i32 2200)
  %63 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %64 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %67 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %68 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store %struct.psb_intel_i2c_chan* %66, %struct.psb_intel_i2c_chan** %69, align 8
  %70 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %71 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %70, i32 0, i32 0
  %72 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %73 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %71, %struct.psb_intel_i2c_chan* %72)
  %74 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %75 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %74, i32 0, i32 0
  %76 = call i64 @i2c_bit_add_bus(%struct.TYPE_9__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %14
  br label %86

79:                                               ; preds = %14
  %80 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %81 = call i32 @set_data(%struct.psb_intel_i2c_chan* %80, i32 1)
  %82 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %83 = call i32 @set_clock(%struct.psb_intel_i2c_chan* %82, i32 1)
  %84 = call i32 @udelay(i32 20)
  %85 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  store %struct.psb_intel_i2c_chan* %85, %struct.psb_intel_i2c_chan** %4, align 8
  br label %89

86:                                               ; preds = %78, %13
  %87 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %8, align 8
  %88 = call i32 @kfree(%struct.psb_intel_i2c_chan* %87)
  store %struct.psb_intel_i2c_chan* null, %struct.psb_intel_i2c_chan** %4, align 8
  br label %89

89:                                               ; preds = %86, %79
  %90 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %4, align 8
  ret %struct.psb_intel_i2c_chan* %90
}

declare dso_local %struct.psb_intel_i2c_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @set_data(%struct.psb_intel_i2c_chan*, i32) #1

declare dso_local i32 @set_clock(%struct.psb_intel_i2c_chan*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, %struct.psb_intel_i2c_chan*) #1

declare dso_local i64 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @kfree(%struct.psb_intel_i2c_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
