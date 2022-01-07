; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds_i2c.c_oaktrail_lvds_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds_i2c.c_oaktrail_lvds_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_7__*, %struct.drm_psb_private* }
%struct.TYPE_7__ = type { i32 }
%struct.drm_psb_private = type { i32 }
%struct.gma_encoder = type { %struct.psb_intel_i2c_chan* }
%struct.psb_intel_i2c_chan = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.drm_device* }
%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.psb_intel_i2c_chan*, i32, i32, i32, i32 (%struct.psb_intel_i2c_chan*, i32)*, i32 (%struct.psb_intel_i2c_chan*, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"gma500 LPC\00", align 1
@I2C_NAME_SIZE = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@get_data = common dso_local global i32 0, align 4
@get_clock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oaktrail_lvds_i2c_init(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.gma_encoder*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca %struct.psb_intel_i2c_chan*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %11 = call %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder* %10)
  store %struct.gma_encoder* %11, %struct.gma_encoder** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.drm_psb_private*, %struct.drm_psb_private** %13, align 8
  store %struct.drm_psb_private* %14, %struct.drm_psb_private** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.psb_intel_i2c_chan* @kzalloc(i32 88, i32 %15)
  store %struct.psb_intel_i2c_chan* %16, %struct.psb_intel_i2c_chan** %6, align 8
  %17 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %18 = icmp ne %struct.psb_intel_i2c_chan* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %98

20:                                               ; preds = %1
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %23 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %22, i32 0, i32 3
  store %struct.drm_device* %21, %struct.drm_device** %23, align 8
  %24 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %25 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %28 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %30 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* @I2C_NAME_SIZE, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @strncpy(i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @THIS_MODULE, align 4
  %37 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %38 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %41 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %40, i32 0, i32 1
  %42 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %43 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %44, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %50 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32* %48, i32** %52, align 8
  %53 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %54 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  store i32 (%struct.psb_intel_i2c_chan*, i32)* @set_data, i32 (%struct.psb_intel_i2c_chan*, i32)** %55, align 8
  %56 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %57 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  store i32 (%struct.psb_intel_i2c_chan*, i32)* @set_clock, i32 (%struct.psb_intel_i2c_chan*, i32)** %58, align 8
  %59 = load i32, i32* @get_data, align 4
  %60 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %61 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @get_clock, align 4
  %64 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %65 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %68 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 100, i32* %69, align 8
  %70 = call i32 @usecs_to_jiffies(i32 2200)
  %71 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %72 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %75 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %76 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store %struct.psb_intel_i2c_chan* %74, %struct.psb_intel_i2c_chan** %77, align 8
  %78 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %79 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %78, i32 0, i32 0
  %80 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %81 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %79, %struct.psb_intel_i2c_chan* %80)
  %82 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %83 = call i32 @set_data(%struct.psb_intel_i2c_chan* %82, i32 1)
  %84 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %85 = call i32 @set_clock(%struct.psb_intel_i2c_chan* %84, i32 1)
  %86 = call i32 @udelay(i32 50)
  %87 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %88 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %87, i32 0, i32 0
  %89 = call i64 @i2c_bit_add_bus(%struct.TYPE_9__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %20
  %92 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %93 = call i32 @kfree(%struct.psb_intel_i2c_chan* %92)
  br label %98

94:                                               ; preds = %20
  %95 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %6, align 8
  %96 = load %struct.gma_encoder*, %struct.gma_encoder** %4, align 8
  %97 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %96, i32 0, i32 0
  store %struct.psb_intel_i2c_chan* %95, %struct.psb_intel_i2c_chan** %97, align 8
  br label %98

98:                                               ; preds = %94, %91, %19
  ret void
}

declare dso_local %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.psb_intel_i2c_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @set_data(%struct.psb_intel_i2c_chan*, i32) #1

declare dso_local i32 @set_clock(%struct.psb_intel_i2c_chan*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, %struct.psb_intel_i2c_chan*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.psb_intel_i2c_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
