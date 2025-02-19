; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"backlight level is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"NO LVDS backlight info\0A\00", align 1
@BLC_I2C_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_intel_lvds_set_brightness(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_psb_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 1
  %8 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  store %struct.drm_psb_private* %8, %struct.drm_psb_private** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %15 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %25 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BLC_I2C_TYPE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @psb_lvds_i2c_set_brightness(%struct.drm_device* %32, i32 %33)
  br label %39

35:                                               ; preds = %23
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @psb_lvds_pwm_set_brightness(%struct.drm_device* %36, i32 %37)
  br label %39

39:                                               ; preds = %18, %35, %31
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @psb_lvds_i2c_set_brightness(%struct.drm_device*, i32) #1

declare dso_local i32 @psb_lvds_pwm_set_brightness(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
