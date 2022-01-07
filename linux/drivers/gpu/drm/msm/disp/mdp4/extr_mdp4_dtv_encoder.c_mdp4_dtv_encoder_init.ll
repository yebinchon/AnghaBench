; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_dtv_encoder.c_mdp4_dtv_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_dtv_encoder.c_mdp4_dtv_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }
%struct.mdp4_dtv_encoder = type { i8*, i8*, %struct.drm_encoder }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdp4_dtv_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@mdp4_dtv_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hdmi_clk\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to get hdmi_clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tv_clk\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to get tv_clk\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_encoder* @mdp4_dtv_encoder_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.mdp4_dtv_encoder*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_encoder* null, %struct.drm_encoder** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mdp4_dtv_encoder* @kzalloc(i32 24, i32 %7)
  store %struct.mdp4_dtv_encoder* %8, %struct.mdp4_dtv_encoder** %5, align 8
  %9 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %5, align 8
  %10 = icmp ne %struct.mdp4_dtv_encoder* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %5, align 8
  %16 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %15, i32 0, i32 2
  store %struct.drm_encoder* %16, %struct.drm_encoder** %4, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %20 = call i32 @drm_encoder_init(%struct.drm_device* %17, %struct.drm_encoder* %18, i32* @mdp4_dtv_encoder_funcs, i32 %19, i32* null)
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %21, i32* @mdp4_dtv_encoder_helper_funcs)
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @devm_clk_get(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %5, align 8
  %28 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %5, align 8
  %30 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %14
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DRM_DEV_ERROR(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %5, align 8
  %40 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %6, align 4
  br label %68

43:                                               ; preds = %14
  %44 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @devm_clk_get(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %5, align 8
  %49 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %5, align 8
  %51 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %43
  %56 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DRM_DEV_ERROR(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %5, align 8
  %61 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @PTR_ERR(i8* %62)
  store i32 %63, i32* %6, align 4
  br label %68

64:                                               ; preds = %43
  %65 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %5, align 8
  %66 = call i32 @bs_init(%struct.mdp4_dtv_encoder* %65)
  %67 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  store %struct.drm_encoder* %67, %struct.drm_encoder** %2, align 8
  br label %77

68:                                               ; preds = %55, %34, %11
  %69 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %70 = icmp ne %struct.drm_encoder* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %73 = call i32 @mdp4_dtv_encoder_destroy(%struct.drm_encoder* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %6, align 4
  %76 = call %struct.drm_encoder* @ERR_PTR(i32 %75)
  store %struct.drm_encoder* %76, %struct.drm_encoder** %2, align 8
  br label %77

77:                                               ; preds = %74, %64
  %78 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  ret %struct.drm_encoder* %78
}

declare dso_local %struct.mdp4_dtv_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @bs_init(%struct.mdp4_dtv_encoder*) #1

declare dso_local i32 @mdp4_dtv_encoder_destroy(%struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
