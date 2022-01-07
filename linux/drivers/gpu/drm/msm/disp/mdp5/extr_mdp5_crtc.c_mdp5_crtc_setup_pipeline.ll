; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_setup_pipeline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_setup_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.mdp5_crtc_state = type { i32, i64, i32, i32, %struct.mdp5_pipeline }
%struct.mdp5_pipeline = type { %struct.mdp5_hw_mixer*, %struct.mdp5_interface*, %struct.mdp5_hw_mixer* }
%struct.mdp5_interface = type { i64, i64, i32 }
%struct.mdp5_hw_mixer = type { i32 }

@MDP_LM_CAP_DISPLAY = common dso_local global i32 0, align 4
@MDP_LM_CAP_PAIR = common dso_local global i32 0, align 4
@INTF_DSI = common dso_local global i64 0, align 8
@MDP5_INTF_DSI_MODE_COMMAND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_crtc_setup_pipeline(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdp5_crtc_state*, align 8
  %9 = alloca %struct.mdp5_pipeline*, align 8
  %10 = alloca %struct.mdp5_interface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mdp5_hw_mixer*, align 8
  %13 = alloca %struct.mdp5_hw_mixer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %17 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.drm_crtc_state* %16)
  store %struct.mdp5_crtc_state* %17, %struct.mdp5_crtc_state** %8, align 8
  %18 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %8, align 8
  %19 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %18, i32 0, i32 4
  store %struct.mdp5_pipeline* %19, %struct.mdp5_pipeline** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %9, align 8
  %21 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %20, i32 0, i32 0
  %22 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %21, align 8
  %23 = icmp ne %struct.mdp5_hw_mixer* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %9, align 8
  %30 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %29, i32 0, i32 2
  %31 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %30, align 8
  %32 = icmp ne %struct.mdp5_hw_mixer* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28, %3
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %9, align 8
  %38 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %37, i32 0, i32 2
  %39 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %38, align 8
  %40 = icmp ne %struct.mdp5_hw_mixer* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %28
  store i32 1, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %36, %33
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %101

45:                                               ; preds = %42
  %46 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %9, align 8
  %47 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %46, i32 0, i32 0
  %48 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %47, align 8
  store %struct.mdp5_hw_mixer* %48, %struct.mdp5_hw_mixer** %12, align 8
  %49 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %9, align 8
  %50 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %49, i32 0, i32 2
  %51 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %50, align 8
  store %struct.mdp5_hw_mixer* %51, %struct.mdp5_hw_mixer** %13, align 8
  %52 = load i32, i32* @MDP_LM_CAP_DISPLAY, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @MDP_LM_CAP_PAIR, align 4
  %57 = load i32, i32* %14, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %55, %45
  %60 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %61 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %9, align 8
  %66 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %9, align 8
  %71 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %70, i32 0, i32 2
  br label %73

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi %struct.mdp5_hw_mixer** [ %71, %69 ], [ null, %72 ]
  %75 = call i32 @mdp5_mixer_assign(i32 %62, %struct.drm_crtc* %63, i32 %64, %struct.mdp5_hw_mixer** %66, %struct.mdp5_hw_mixer** %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %4, align 4
  br label %144

80:                                               ; preds = %73
  %81 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %82 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %12, align 8
  %85 = call i32 @mdp5_mixer_release(i32 %83, %struct.mdp5_hw_mixer* %84)
  %86 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %13, align 8
  %87 = icmp ne %struct.mdp5_hw_mixer* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %90 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %13, align 8
  %93 = call i32 @mdp5_mixer_release(i32 %91, %struct.mdp5_hw_mixer* %92)
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %9, align 8
  %98 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %97, i32 0, i32 2
  store %struct.mdp5_hw_mixer* null, %struct.mdp5_hw_mixer** %98, align 8
  br label %99

99:                                               ; preds = %96, %88
  br label %100

100:                                              ; preds = %99, %80
  br label %101

101:                                              ; preds = %100, %42
  %102 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %9, align 8
  %103 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %102, i32 0, i32 1
  %104 = load %struct.mdp5_interface*, %struct.mdp5_interface** %103, align 8
  store %struct.mdp5_interface* %104, %struct.mdp5_interface** %10, align 8
  %105 = load %struct.mdp5_interface*, %struct.mdp5_interface** %10, align 8
  %106 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @intf2err(i32 %107)
  %109 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %8, align 8
  %110 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %9, align 8
  %112 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %111, i32 0, i32 0
  %113 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %112, align 8
  %114 = load %struct.mdp5_interface*, %struct.mdp5_interface** %10, align 8
  %115 = call i32 @intf2vblank(%struct.mdp5_hw_mixer* %113, %struct.mdp5_interface* %114)
  %116 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %8, align 8
  %117 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.mdp5_interface*, %struct.mdp5_interface** %10, align 8
  %119 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @INTF_DSI, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %101
  %124 = load %struct.mdp5_interface*, %struct.mdp5_interface** %10, align 8
  %125 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MDP5_INTF_DSI_MODE_COMMAND, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %9, align 8
  %131 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %130, i32 0, i32 0
  %132 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %131, align 8
  %133 = call i64 @lm2ppdone(%struct.mdp5_hw_mixer* %132)
  %134 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %8, align 8
  %135 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %8, align 8
  %137 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  br label %143

138:                                              ; preds = %123, %101
  %139 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %8, align 8
  %140 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %8, align 8
  %142 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  br label %143

143:                                              ; preds = %138, %129
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %78
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @mdp5_mixer_assign(i32, %struct.drm_crtc*, i32, %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer**) #1

declare dso_local i32 @mdp5_mixer_release(i32, %struct.mdp5_hw_mixer*) #1

declare dso_local i32 @intf2err(i32) #1

declare dso_local i32 @intf2vblank(%struct.mdp5_hw_mixer*, %struct.mdp5_interface*) #1

declare dso_local i64 @lm2ppdone(%struct.mdp5_hw_mixer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
