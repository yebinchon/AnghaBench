; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_cmd_encoder.c_mdp5_cmd_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_cmd_encoder.c_mdp5_cmd_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.mdp5_encoder = type { i32, %struct.mdp5_interface*, %struct.mdp5_ctl* }
%struct.mdp5_interface = type { i32 }
%struct.mdp5_ctl = type { i32 }
%struct.mdp5_pipeline = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp5_cmd_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.mdp5_encoder*, align 8
  %4 = alloca %struct.mdp5_ctl*, align 8
  %5 = alloca %struct.mdp5_interface*, align 8
  %6 = alloca %struct.mdp5_pipeline*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = call %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder* %7)
  store %struct.mdp5_encoder* %8, %struct.mdp5_encoder** %3, align 8
  %9 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %9, i32 0, i32 2
  %11 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %10, align 8
  store %struct.mdp5_ctl* %11, %struct.mdp5_ctl** %4, align 8
  %12 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %12, i32 0, i32 1
  %14 = load %struct.mdp5_interface*, %struct.mdp5_interface** %13, align 8
  store %struct.mdp5_interface* %14, %struct.mdp5_interface** %5, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mdp5_pipeline* @mdp5_crtc_get_pipeline(i32 %17)
  store %struct.mdp5_pipeline* %18, %struct.mdp5_pipeline** %6, align 8
  %19 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %20 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %43

25:                                               ; preds = %1
  %26 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %27 = call i32 @bs_set(%struct.mdp5_encoder* %26, i32 1)
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %29 = call i64 @pingpong_tearcheck_enable(%struct.drm_encoder* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %43

32:                                               ; preds = %25
  %33 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %4, align 8
  %34 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %35 = load %struct.mdp5_interface*, %struct.mdp5_interface** %5, align 8
  %36 = call i32 @mdp_ctl_flush_mask_encoder(%struct.mdp5_interface* %35)
  %37 = call i32 @mdp5_ctl_commit(%struct.mdp5_ctl* %33, %struct.mdp5_pipeline* %34, i32 %36, i32 1)
  %38 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %4, align 8
  %39 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %40 = call i32 @mdp5_ctl_set_encoder_state(%struct.mdp5_ctl* %38, %struct.mdp5_pipeline* %39, i32 1)
  %41 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %42 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %32, %31, %24
  ret void
}

declare dso_local %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.mdp5_pipeline* @mdp5_crtc_get_pipeline(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @bs_set(%struct.mdp5_encoder*, i32) #1

declare dso_local i64 @pingpong_tearcheck_enable(%struct.drm_encoder*) #1

declare dso_local i32 @mdp5_ctl_commit(%struct.mdp5_ctl*, %struct.mdp5_pipeline*, i32, i32) #1

declare dso_local i32 @mdp_ctl_flush_mask_encoder(%struct.mdp5_interface*) #1

declare dso_local i32 @mdp5_ctl_set_encoder_state(%struct.mdp5_ctl*, %struct.mdp5_pipeline*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
