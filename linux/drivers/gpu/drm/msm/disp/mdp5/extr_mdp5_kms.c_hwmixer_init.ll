; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_hwmixer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_hwmixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i32, %struct.mdp5_hw_mixer**, i32, %struct.drm_device* }
%struct.mdp5_hw_mixer = type { i32 }
%struct.drm_device = type { i32 }
%struct.mdp5_cfg_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [31 x i8] c"failed to construct LM%d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp5_kms*)* @hwmixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwmixer_init(%struct.mdp5_kms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.mdp5_cfg_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdp5_hw_mixer*, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %3, align 8
  %9 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %10 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %9, i32 0, i32 3
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %13 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.mdp5_cfg_hw* @mdp5_cfg_get_hw_config(i32 %14)
  store %struct.mdp5_cfg_hw* %15, %struct.mdp5_cfg_hw** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %61, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %5, align 8
  %19 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %16
  %24 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %5, align 8
  %25 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call %struct.mdp5_hw_mixer* @mdp5_mixer_init(i32* %30)
  store %struct.mdp5_hw_mixer* %31, %struct.mdp5_hw_mixer** %8, align 8
  %32 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %8, align 8
  %33 = call i64 @IS_ERR(%struct.mdp5_hw_mixer* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %8, align 8
  %37 = call i32 @PTR_ERR(%struct.mdp5_hw_mixer* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @DRM_DEV_ERROR(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %65

45:                                               ; preds = %23
  %46 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %47 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %8, align 8
  %50 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %8, align 8
  %52 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %53 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %52, i32 0, i32 1
  %54 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %53, align 8
  %55 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %56 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %54, i64 %59
  store %struct.mdp5_hw_mixer* %51, %struct.mdp5_hw_mixer** %60, align 8
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %16

64:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.mdp5_cfg_hw* @mdp5_cfg_get_hw_config(i32) #1

declare dso_local %struct.mdp5_hw_mixer* @mdp5_mixer_init(i32*) #1

declare dso_local i64 @IS_ERR(%struct.mdp5_hw_mixer*) #1

declare dso_local i32 @PTR_ERR(%struct.mdp5_hw_mixer*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
