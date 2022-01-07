; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_opregion.c_asle_set_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_opregion.c_asle_set_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.backlight_device*, %struct.TYPE_4__ }
%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.opregion_asle* }
%struct.opregion_asle = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"asle set backlight %x\0A\00", align 1
@ASLE_BCLP_VALID = common dso_local global i32 0, align 4
@ASLE_BACKLIGHT_FAILED = common dso_local global i32 0, align 4
@ASLE_BCLP_MSK = common dso_local global i32 0, align 4
@ASLE_CBLV_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @asle_set_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asle_set_backlight(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca %struct.opregion_asle*, align 8
  %8 = alloca %struct.backlight_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %6, align 8
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %13 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.opregion_asle*, %struct.opregion_asle** %14, align 8
  store %struct.opregion_asle* %15, %struct.opregion_asle** %7, align 8
  %16 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %17 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %16, i32 0, i32 0
  %18 = load %struct.backlight_device*, %struct.backlight_device** %17, align 8
  store %struct.backlight_device* %18, %struct.backlight_device** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ASLE_BCLP_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ASLE_BACKLIGHT_FAILED, align 4
  store i32 %26, i32* %3, align 4
  br label %57

27:                                               ; preds = %2
  %28 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %29 = icmp eq %struct.backlight_device* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @ASLE_BACKLIGHT_FAILED, align 4
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %27
  %33 = load i32, i32* @ASLE_BCLP_MSK, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 255
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @ASLE_BACKLIGHT_FAILED, align 4
  store i32 %39, i32* %3, align 4
  br label %57

40:                                               ; preds = %32
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %44 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %42, %46
  %48 = sdiv i32 %47, 255
  %49 = call i32 @gma_backlight_set(%struct.drm_device* %41, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 100
  %52 = sdiv i32 %51, 255
  %53 = load i32, i32* @ASLE_CBLV_VALID, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.opregion_asle*, %struct.opregion_asle** %7, align 8
  %56 = getelementptr inbounds %struct.opregion_asle, %struct.opregion_asle* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %40, %38, %30, %25
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @gma_backlight_set(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
