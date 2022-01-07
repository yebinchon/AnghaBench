; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_cmd_encoder.c_pingpong_tearcheck_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_cmd_encoder.c_pingpong_tearcheck_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mdp5_kms = type { i32 }
%struct.mdp5_hw_mixer = type { i32 }

@VSYNC_CLK_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"vsync_clk clk_set_rate failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"vsync_clk clk_prepare_enable failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @pingpong_tearcheck_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pingpong_tearcheck_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.mdp5_kms*, align 8
  %5 = alloca %struct.mdp5_hw_mixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = call %struct.mdp5_kms* @get_kms(%struct.drm_encoder* %8)
  store %struct.mdp5_kms* %9, %struct.mdp5_kms** %4, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.mdp5_hw_mixer* @mdp5_crtc_get_mixer(i32 %12)
  store %struct.mdp5_hw_mixer* %13, %struct.mdp5_hw_mixer** %5, align 8
  %14 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %5, align 8
  %15 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %18 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %21 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VSYNC_CLK_RATE, align 4
  %24 = call i32 @clk_round_rate(i32 %22, i32 %23)
  %25 = call i32 @clk_set_rate(i32 %19, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %30 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @DRM_DEV_ERROR(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %58

37:                                               ; preds = %1
  %38 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %39 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_prepare_enable(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %46 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @DRM_DEV_ERROR(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %37
  %54 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @REG_MDP5_PP_TEAR_CHECK_EN(i32 %55)
  %57 = call i32 @mdp5_write(%struct.mdp5_kms* %54, i32 %56, i32 1)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %44, %28
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_encoder*) #1

declare dso_local %struct.mdp5_hw_mixer* @mdp5_crtc_get_mixer(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_PP_TEAR_CHECK_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
