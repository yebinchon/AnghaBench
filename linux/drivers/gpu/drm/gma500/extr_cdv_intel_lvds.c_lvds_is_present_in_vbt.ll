; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_lvds.c_lvds_is_present_in_vbt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_lvds.c_lvds_is_present_in_vbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, %struct.TYPE_2__, %struct.child_device_config* }
%struct.TYPE_2__ = type { i64 }
%struct.child_device_config = type { i64, i64, i64 }

@DEVICE_TYPE_INT_LFP = common dso_local global i64 0, align 8
@DEVICE_TYPE_LFP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i64*)* @lvds_is_present_in_vbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lvds_is_present_in_vbt(%struct.drm_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.child_device_config*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %6, align 8
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %13 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %67, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %21 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %18
  %25 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %26 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %25, i32 0, i32 2
  %27 = load %struct.child_device_config*, %struct.child_device_config** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %27, i64 %29
  store %struct.child_device_config* %30, %struct.child_device_config** %8, align 8
  %31 = load %struct.child_device_config*, %struct.child_device_config** %8, align 8
  %32 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DEVICE_TYPE_INT_LFP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.child_device_config*, %struct.child_device_config** %8, align 8
  %38 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DEVICE_TYPE_LFP, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %67

43:                                               ; preds = %36, %24
  %44 = load %struct.child_device_config*, %struct.child_device_config** %8, align 8
  %45 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.child_device_config*, %struct.child_device_config** %8, align 8
  %50 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %5, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.child_device_config*, %struct.child_device_config** %8, align 8
  %55 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %71

59:                                               ; preds = %53
  %60 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %61 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %71

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %18

70:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %65, %58, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
