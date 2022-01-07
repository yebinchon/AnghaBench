; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_cmd_encoder.c_pingpong_tearcheck_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_cmd_encoder.c_pingpong_tearcheck_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.mdp5_kms = type { i32 }
%struct.mdp5_hw_mixer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @pingpong_tearcheck_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pingpong_tearcheck_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca %struct.mdp5_hw_mixer*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.mdp5_kms* @get_kms(%struct.drm_encoder* %6)
  store %struct.mdp5_kms* %7, %struct.mdp5_kms** %3, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mdp5_hw_mixer* @mdp5_crtc_get_mixer(i32 %10)
  store %struct.mdp5_hw_mixer* %11, %struct.mdp5_hw_mixer** %4, align 8
  %12 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %13 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @REG_MDP5_PP_TEAR_CHECK_EN(i32 %16)
  %18 = call i32 @mdp5_write(%struct.mdp5_kms* %15, i32 %17, i32 0)
  %19 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %20 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_disable_unprepare(i32 %21)
  ret void
}

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_encoder*) #1

declare dso_local %struct.mdp5_hw_mixer* @mdp5_crtc_get_mixer(i32) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_PP_TEAR_CHECK_EN(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
