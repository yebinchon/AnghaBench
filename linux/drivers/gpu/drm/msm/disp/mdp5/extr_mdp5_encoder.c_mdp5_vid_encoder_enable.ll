; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_vid_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_vid_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.mdp5_encoder = type { i32, i32, %struct.mdp5_interface*, %struct.mdp5_ctl* }
%struct.mdp5_interface = type { i32 }
%struct.mdp5_ctl = type { i32 }
%struct.mdp5_kms = type { i32 }
%struct.mdp5_pipeline = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @mdp5_vid_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_vid_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.mdp5_encoder*, align 8
  %4 = alloca %struct.mdp5_kms*, align 8
  %5 = alloca %struct.mdp5_ctl*, align 8
  %6 = alloca %struct.mdp5_interface*, align 8
  %7 = alloca %struct.mdp5_pipeline*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %11 = call %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder* %10)
  store %struct.mdp5_encoder* %11, %struct.mdp5_encoder** %3, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %13 = call %struct.mdp5_kms* @get_kms(%struct.drm_encoder* %12)
  store %struct.mdp5_kms* %13, %struct.mdp5_kms** %4, align 8
  %14 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %14, i32 0, i32 3
  %16 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %15, align 8
  store %struct.mdp5_ctl* %16, %struct.mdp5_ctl** %5, align 8
  %17 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %18 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %17, i32 0, i32 2
  %19 = load %struct.mdp5_interface*, %struct.mdp5_interface** %18, align 8
  store %struct.mdp5_interface* %19, %struct.mdp5_interface** %6, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mdp5_pipeline* @mdp5_crtc_get_pipeline(i32 %22)
  store %struct.mdp5_pipeline* %23, %struct.mdp5_pipeline** %7, align 8
  %24 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %25 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %28 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %58

33:                                               ; preds = %1
  %34 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %35 = call i32 @bs_set(%struct.mdp5_encoder* %34, i32 1)
  %36 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %37 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %36, i32 0, i32 1
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @REG_MDP5_INTF_TIMING_ENGINE_EN(i32 %41)
  %43 = call i32 @mdp5_write(%struct.mdp5_kms* %40, i32 %42, i32 1)
  %44 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %45 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %44, i32 0, i32 1
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %49 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %7, align 8
  %50 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %51 = call i32 @mdp_ctl_flush_mask_encoder(%struct.mdp5_interface* %50)
  %52 = call i32 @mdp5_ctl_commit(%struct.mdp5_ctl* %48, %struct.mdp5_pipeline* %49, i32 %51, i32 1)
  %53 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %54 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %7, align 8
  %55 = call i32 @mdp5_ctl_set_encoder_state(%struct.mdp5_ctl* %53, %struct.mdp5_pipeline* %54, i32 1)
  %56 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %57 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %33, %32
  ret void
}

declare dso_local %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_encoder*) #1

declare dso_local %struct.mdp5_pipeline* @mdp5_crtc_get_pipeline(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @bs_set(%struct.mdp5_encoder*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_INTF_TIMING_ENGINE_EN(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdp5_ctl_commit(%struct.mdp5_ctl*, %struct.mdp5_pipeline*, i32, i32) #1

declare dso_local i32 @mdp_ctl_flush_mask_encoder(%struct.mdp5_interface*) #1

declare dso_local i32 @mdp5_ctl_set_encoder_state(%struct.mdp5_ctl*, %struct.mdp5_pipeline*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
