; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_lvds_i2c_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_lvds_i2c_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i64 }
%struct.drm_psb_private = type { %struct.TYPE_2__*, %struct.psb_intel_i2c_chan* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.psb_intel_i2c_chan = type { i32, i32 }
%struct.i2c_msg = type { i32, i64*, i32, i32 }

@BRIGHTNESS_MASK = common dso_local global i32 0, align 4
@BRIGHTNESS_MAX_LEVEL = common dso_local global i32 0, align 4
@BLC_POLARITY_INVERSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"I2C set brightness.(command, value) (%d, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"I2C transfer error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @psb_lvds_i2c_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_lvds_i2c_set_brightness(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca %struct.psb_intel_i2c_chan*, align 8
  %8 = alloca [2 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.drm_psb_private*
  store %struct.drm_psb_private* %14, %struct.drm_psb_private** %6, align 8
  %15 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %16 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %15, i32 0, i32 1
  %17 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %16, align 8
  store %struct.psb_intel_i2c_chan* %17, %struct.psb_intel_i2c_chan** %7, align 8
  %18 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64* %21, i64** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 3
  %24 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %7, align 8
  %25 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = load i32, i32* @BRIGHTNESS_MASK, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BRIGHTNESS_MASK, align 4
  %30 = mul i32 %28, %29
  %31 = load i32, i32* @BRIGHTNESS_MAX_LEVEL, align 4
  %32 = udiv i32 %30, %31
  %33 = and i32 %27, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %35 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BLC_POLARITY_INVERSE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load i32, i32* @BRIGHTNESS_MASK, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub i32 %42, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %2
  %46 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %47 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %50, i64* %51, align 16
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %53, i64* %54, align 8
  %55 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %7, align 8
  %56 = getelementptr inbounds %struct.psb_intel_i2c_chan, %struct.psb_intel_i2c_chan* %55, i32 0, i32 0
  %57 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %58 = call i32 @i2c_transfer(i32* %56, %struct.i2c_msg* %57, i32 1)
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %71

60:                                               ; preds = %45
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %65 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %76

71:                                               ; preds = %45
  %72 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %73 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %60
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
