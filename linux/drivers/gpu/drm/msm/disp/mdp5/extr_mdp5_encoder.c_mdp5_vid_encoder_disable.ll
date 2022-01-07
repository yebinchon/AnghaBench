; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_vid_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_vid_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.mdp5_encoder = type { i32, i32, %struct.mdp5_interface*, %struct.mdp5_ctl* }
%struct.mdp5_interface = type { i32 }
%struct.mdp5_ctl = type { i32 }
%struct.mdp5_kms = type { i32 }
%struct.mdp5_pipeline = type { i32 }
%struct.mdp5_hw_mixer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @mdp5_vid_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_vid_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.mdp5_encoder*, align 8
  %4 = alloca %struct.mdp5_kms*, align 8
  %5 = alloca %struct.mdp5_ctl*, align 8
  %6 = alloca %struct.mdp5_pipeline*, align 8
  %7 = alloca %struct.mdp5_hw_mixer*, align 8
  %8 = alloca %struct.mdp5_interface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = call %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder* %11)
  store %struct.mdp5_encoder* %12, %struct.mdp5_encoder** %3, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = call %struct.mdp5_kms* @get_kms(%struct.drm_encoder* %13)
  store %struct.mdp5_kms* %14, %struct.mdp5_kms** %4, align 8
  %15 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %15, i32 0, i32 3
  %17 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %16, align 8
  store %struct.mdp5_ctl* %17, %struct.mdp5_ctl** %5, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mdp5_pipeline* @mdp5_crtc_get_pipeline(i32 %20)
  store %struct.mdp5_pipeline* %21, %struct.mdp5_pipeline** %6, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %23 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.mdp5_hw_mixer* @mdp5_crtc_get_mixer(i32 %24)
  store %struct.mdp5_hw_mixer* %25, %struct.mdp5_hw_mixer** %7, align 8
  %26 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %27 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %26, i32 0, i32 2
  %28 = load %struct.mdp5_interface*, %struct.mdp5_interface** %27, align 8
  store %struct.mdp5_interface* %28, %struct.mdp5_interface** %8, align 8
  %29 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %30 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %29, i32 0, i32 2
  %31 = load %struct.mdp5_interface*, %struct.mdp5_interface** %30, align 8
  %32 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %35 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %74

43:                                               ; preds = %1
  %44 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %45 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %46 = call i32 @mdp5_ctl_set_encoder_state(%struct.mdp5_ctl* %44, %struct.mdp5_pipeline* %45, i32 0)
  %47 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %48 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %47, i32 0, i32 1
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @REG_MDP5_INTF_TIMING_ENGINE_EN(i32 %52)
  %54 = call i32 @mdp5_write(%struct.mdp5_kms* %51, i32 %53, i32 0)
  %55 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %56 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %55, i32 0, i32 1
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %60 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %61 = load %struct.mdp5_interface*, %struct.mdp5_interface** %8, align 8
  %62 = call i32 @mdp_ctl_flush_mask_encoder(%struct.mdp5_interface* %61)
  %63 = call i32 @mdp5_ctl_commit(%struct.mdp5_ctl* %59, %struct.mdp5_pipeline* %60, i32 %62, i32 1)
  %64 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %65 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %64, i32 0, i32 0
  %66 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %7, align 8
  %67 = load %struct.mdp5_interface*, %struct.mdp5_interface** %8, align 8
  %68 = call i32 @intf2vblank(%struct.mdp5_hw_mixer* %66, %struct.mdp5_interface* %67)
  %69 = call i32 @mdp_irq_wait(i32* %65, i32 %68)
  %70 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %71 = call i32 @bs_set(%struct.mdp5_encoder* %70, i32 0)
  %72 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %73 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %43, %42
  ret void
}

declare dso_local %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_encoder*) #1

declare dso_local %struct.mdp5_pipeline* @mdp5_crtc_get_pipeline(i32) #1

declare dso_local %struct.mdp5_hw_mixer* @mdp5_crtc_get_mixer(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mdp5_ctl_set_encoder_state(%struct.mdp5_ctl*, %struct.mdp5_pipeline*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_INTF_TIMING_ENGINE_EN(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdp5_ctl_commit(%struct.mdp5_ctl*, %struct.mdp5_pipeline*, i32, i32) #1

declare dso_local i32 @mdp_ctl_flush_mask_encoder(%struct.mdp5_interface*) #1

declare dso_local i32 @mdp_irq_wait(i32*, i32) #1

declare dso_local i32 @intf2vblank(%struct.mdp5_hw_mixer*, %struct.mdp5_interface*) #1

declare dso_local i32 @bs_set(%struct.mdp5_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
