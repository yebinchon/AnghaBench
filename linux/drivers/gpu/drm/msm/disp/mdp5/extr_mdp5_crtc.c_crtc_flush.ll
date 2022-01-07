; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_crtc_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_crtc_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32 }
%struct.mdp5_crtc_state = type { i32, %struct.mdp5_pipeline, %struct.mdp5_ctl* }
%struct.mdp5_pipeline = type { i32 }
%struct.mdp5_ctl = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s: flush=%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32)* @crtc_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crtc_flush(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdp5_crtc_state*, align 8
  %6 = alloca %struct.mdp5_ctl*, align 8
  %7 = alloca %struct.mdp5_pipeline*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32 %11)
  store %struct.mdp5_crtc_state* %12, %struct.mdp5_crtc_state** %5, align 8
  %13 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %14 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %13, i32 0, i32 2
  %15 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %14, align 8
  store %struct.mdp5_ctl* %15, %struct.mdp5_ctl** %6, align 8
  %16 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %17 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %16, i32 0, i32 1
  store %struct.mdp5_pipeline* %17, %struct.mdp5_pipeline** %7, align 8
  %18 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %19 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %25 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %32 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @mdp5_ctl_commit(%struct.mdp5_ctl* %31, %struct.mdp5_pipeline* %32, i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @mdp5_ctl_commit(%struct.mdp5_ctl*, %struct.mdp5_pipeline*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
