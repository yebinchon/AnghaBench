; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_gmbus.c_intel_gpio_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_gmbus.c_intel_gpio_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.TYPE_5__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { %struct.intel_gpio*, i32, i32, i32, i32, i32, i32 }
%struct.intel_gpio = type { i32, %struct.i2c_adapter, %struct.TYPE_8__, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@intel_gpio_create.map_pin_to_reg = internal constant [8 x i32] [i32 0, i32 132, i32 133, i32 131, i32 130, i32 129, i32 0, i32 128], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"gma500 GPIO%c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"?BACDE?F\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@set_data = common dso_local global i32 0, align 4
@set_clock = common dso_local global i32 0, align 4
@get_data = common dso_local global i32 0, align 4
@get_clock = common dso_local global i32 0, align 4
@I2C_RISEFALL_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_adapter* (%struct.drm_psb_private*, i64)* @intel_gpio_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_adapter* @intel_gpio_create(%struct.drm_psb_private* %0, i64 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.intel_gpio*, align 8
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @intel_gpio_create.map_pin_to_reg, i64 0, i64 0))
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* @intel_gpio_create.map_pin_to_reg, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %3, align 8
  br label %97

16:                                               ; preds = %10
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.intel_gpio* @kzalloc(i32 72, i32 %17)
  store %struct.intel_gpio* %18, %struct.intel_gpio** %6, align 8
  %19 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %20 = icmp eq %struct.intel_gpio* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %3, align 8
  br label %97

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* @intel_gpio_create.map_pin_to_reg, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %27 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %29 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %30 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %29, i32 0, i32 3
  store %struct.drm_psb_private* %28, %struct.drm_psb_private** %30, align 8
  %31 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %32 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.1, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 signext %37)
  %39 = load i32, i32* @THIS_MODULE, align 4
  %40 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %41 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %44 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %43, i32 0, i32 2
  %45 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %46 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %46, i32 0, i32 1
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %47, align 8
  %48 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %49 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %55 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32* %53, i32** %57, align 8
  %58 = load i32, i32* @set_data, align 4
  %59 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %60 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 6
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @set_clock, align 4
  %63 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %64 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @get_data, align 4
  %67 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %68 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @get_clock, align 4
  %71 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %72 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @I2C_RISEFALL_TIME, align 4
  %75 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %76 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  %78 = call i32 @usecs_to_jiffies(i32 2200)
  %79 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %80 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 8
  %82 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %83 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %84 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store %struct.intel_gpio* %82, %struct.intel_gpio** %85, align 8
  %86 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %87 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %86, i32 0, i32 1
  %88 = call i64 @i2c_bit_add_bus(%struct.i2c_adapter* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %22
  br label %94

91:                                               ; preds = %22
  %92 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %93 = getelementptr inbounds %struct.intel_gpio, %struct.intel_gpio* %92, i32 0, i32 1
  store %struct.i2c_adapter* %93, %struct.i2c_adapter** %3, align 8
  br label %97

94:                                               ; preds = %90
  %95 = load %struct.intel_gpio*, %struct.intel_gpio** %6, align 8
  %96 = call i32 @kfree(%struct.intel_gpio* %95)
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %3, align 8
  br label %97

97:                                               ; preds = %94, %91, %21, %15
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  ret %struct.i2c_adapter* %98
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.intel_gpio* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8 signext) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i64 @i2c_bit_add_bus(%struct.i2c_adapter*) #1

declare dso_local i32 @kfree(%struct.intel_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
