; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mixer.c_mdp5_mixer_assign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mixer.c_mdp5_mixer_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.mdp5_hw_mixer = type { i64, i32, i32 }
%struct.mdp5_kms = type { i32, %struct.mdp5_hw_mixer** }
%struct.mdp5_global_state = type { %struct.mdp5_hw_mixer_state }
%struct.mdp5_hw_mixer_state = type { %struct.drm_crtc** }

@EINVAL = common dso_local global i32 0, align 4
@MDP_LM_CAP_PAIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"assigning Layer Mixer %d to crtc %s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"assigning Right Layer Mixer %d to crtc %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_mixer_assign(%struct.drm_atomic_state* %0, %struct.drm_crtc* %1, i32 %2, %struct.mdp5_hw_mixer** %3, %struct.mdp5_hw_mixer** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_atomic_state*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mdp5_hw_mixer**, align 8
  %11 = alloca %struct.mdp5_hw_mixer**, align 8
  %12 = alloca %struct.msm_drm_private*, align 8
  %13 = alloca %struct.mdp5_kms*, align 8
  %14 = alloca %struct.mdp5_global_state*, align 8
  %15 = alloca %struct.mdp5_hw_mixer_state*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mdp5_hw_mixer*, align 8
  %18 = alloca i32, align 4
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %7, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.mdp5_hw_mixer** %3, %struct.mdp5_hw_mixer*** %10, align 8
  store %struct.mdp5_hw_mixer** %4, %struct.mdp5_hw_mixer*** %11, align 8
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %20 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.msm_drm_private*, %struct.msm_drm_private** %22, align 8
  store %struct.msm_drm_private* %23, %struct.msm_drm_private** %12, align 8
  %24 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  %25 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @to_mdp_kms(i32 %26)
  %28 = call %struct.mdp5_kms* @to_mdp5_kms(i32 %27)
  store %struct.mdp5_kms* %28, %struct.mdp5_kms** %13, align 8
  %29 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %30 = call %struct.mdp5_global_state* @mdp5_get_global_state(%struct.drm_atomic_state* %29)
  store %struct.mdp5_global_state* %30, %struct.mdp5_global_state** %14, align 8
  %31 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %14, align 8
  %32 = call i64 @IS_ERR(%struct.mdp5_global_state* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %14, align 8
  %36 = call i32 @PTR_ERR(%struct.mdp5_global_state* %35)
  store i32 %36, i32* %6, align 4
  br label %191

37:                                               ; preds = %5
  %38 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %14, align 8
  %39 = getelementptr inbounds %struct.mdp5_global_state, %struct.mdp5_global_state* %38, i32 0, i32 0
  store %struct.mdp5_hw_mixer_state* %39, %struct.mdp5_hw_mixer_state** %15, align 8
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %132, %37
  %41 = load i32, i32* %16, align 4
  %42 = load %struct.mdp5_kms*, %struct.mdp5_kms** %13, align 8
  %43 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %135

46:                                               ; preds = %40
  %47 = load %struct.mdp5_kms*, %struct.mdp5_kms** %13, align 8
  %48 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %47, i32 0, i32 1
  %49 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %49, i64 %51
  %53 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %52, align 8
  store %struct.mdp5_hw_mixer* %53, %struct.mdp5_hw_mixer** %17, align 8
  %54 = load %struct.mdp5_hw_mixer_state*, %struct.mdp5_hw_mixer_state** %15, align 8
  %55 = getelementptr inbounds %struct.mdp5_hw_mixer_state, %struct.mdp5_hw_mixer_state* %54, i32 0, i32 0
  %56 = load %struct.drm_crtc**, %struct.drm_crtc*** %55, align 8
  %57 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %17, align 8
  %58 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.drm_crtc*, %struct.drm_crtc** %56, i64 %59
  %61 = load %struct.drm_crtc*, %struct.drm_crtc** %60, align 8
  %62 = icmp ne %struct.drm_crtc* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %46
  %64 = load %struct.mdp5_hw_mixer_state*, %struct.mdp5_hw_mixer_state** %15, align 8
  %65 = getelementptr inbounds %struct.mdp5_hw_mixer_state, %struct.mdp5_hw_mixer_state* %64, i32 0, i32 0
  %66 = load %struct.drm_crtc**, %struct.drm_crtc*** %65, align 8
  %67 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %17, align 8
  %68 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.drm_crtc*, %struct.drm_crtc** %66, i64 %69
  %71 = load %struct.drm_crtc*, %struct.drm_crtc** %70, align 8
  %72 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %73 = icmp ne %struct.drm_crtc* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %132

75:                                               ; preds = %63, %46
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %17, align 8
  %78 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = xor i32 %79, -1
  %81 = and i32 %76, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %132

84:                                               ; preds = %75
  %85 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %11, align 8
  %86 = icmp ne %struct.mdp5_hw_mixer** %85, null
  br i1 %86, label %87, label %117

87:                                               ; preds = %84
  %88 = load %struct.mdp5_kms*, %struct.mdp5_kms** %13, align 8
  %89 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %17, align 8
  %90 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @get_right_pair_idx(%struct.mdp5_kms* %88, i32 %91)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %191

98:                                               ; preds = %87
  %99 = load %struct.mdp5_hw_mixer_state*, %struct.mdp5_hw_mixer_state** %15, align 8
  %100 = getelementptr inbounds %struct.mdp5_hw_mixer_state, %struct.mdp5_hw_mixer_state* %99, i32 0, i32 0
  %101 = load %struct.drm_crtc**, %struct.drm_crtc*** %100, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.drm_crtc*, %struct.drm_crtc** %101, i64 %103
  %105 = load %struct.drm_crtc*, %struct.drm_crtc** %104, align 8
  %106 = icmp ne %struct.drm_crtc* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %132

108:                                              ; preds = %98
  %109 = load %struct.mdp5_kms*, %struct.mdp5_kms** %13, align 8
  %110 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %109, i32 0, i32 1
  %111 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %111, i64 %113
  %115 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %114, align 8
  %116 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %11, align 8
  store %struct.mdp5_hw_mixer* %115, %struct.mdp5_hw_mixer** %116, align 8
  br label %117

117:                                              ; preds = %108, %84
  %118 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %10, align 8
  %119 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %118, align 8
  %120 = icmp ne %struct.mdp5_hw_mixer* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %17, align 8
  %123 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MDP_LM_CAP_PAIR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121, %117
  %129 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %17, align 8
  %130 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %10, align 8
  store %struct.mdp5_hw_mixer* %129, %struct.mdp5_hw_mixer** %130, align 8
  br label %131

131:                                              ; preds = %128, %121
  br label %132

132:                                              ; preds = %131, %107, %83, %74
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  br label %40

135:                                              ; preds = %40
  %136 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %10, align 8
  %137 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %136, align 8
  %138 = icmp ne %struct.mdp5_hw_mixer* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %191

142:                                              ; preds = %135
  %143 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %11, align 8
  %144 = icmp ne %struct.mdp5_hw_mixer** %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %11, align 8
  %147 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %146, align 8
  %148 = icmp ne %struct.mdp5_hw_mixer* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %191

152:                                              ; preds = %145, %142
  %153 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %10, align 8
  %154 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %153, align 8
  %155 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %158 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %159)
  %161 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %162 = load %struct.mdp5_hw_mixer_state*, %struct.mdp5_hw_mixer_state** %15, align 8
  %163 = getelementptr inbounds %struct.mdp5_hw_mixer_state, %struct.mdp5_hw_mixer_state* %162, i32 0, i32 0
  %164 = load %struct.drm_crtc**, %struct.drm_crtc*** %163, align 8
  %165 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %10, align 8
  %166 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %165, align 8
  %167 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.drm_crtc*, %struct.drm_crtc** %164, i64 %168
  store %struct.drm_crtc* %161, %struct.drm_crtc** %169, align 8
  %170 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %11, align 8
  %171 = icmp ne %struct.mdp5_hw_mixer** %170, null
  br i1 %171, label %172, label %190

172:                                              ; preds = %152
  %173 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %11, align 8
  %174 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %173, align 8
  %175 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %178 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %176, i32 %179)
  %181 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %182 = load %struct.mdp5_hw_mixer_state*, %struct.mdp5_hw_mixer_state** %15, align 8
  %183 = getelementptr inbounds %struct.mdp5_hw_mixer_state, %struct.mdp5_hw_mixer_state* %182, i32 0, i32 0
  %184 = load %struct.drm_crtc**, %struct.drm_crtc*** %183, align 8
  %185 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %11, align 8
  %186 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %185, align 8
  %187 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.drm_crtc*, %struct.drm_crtc** %184, i64 %188
  store %struct.drm_crtc* %181, %struct.drm_crtc** %189, align 8
  br label %190

190:                                              ; preds = %172, %152
  store i32 0, i32* %6, align 4
  br label %191

191:                                              ; preds = %190, %149, %139, %95, %34
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

declare dso_local %struct.mdp5_kms* @to_mdp5_kms(i32) #1

declare dso_local i32 @to_mdp_kms(i32) #1

declare dso_local %struct.mdp5_global_state* @mdp5_get_global_state(%struct.drm_atomic_state*) #1

declare dso_local i64 @IS_ERR(%struct.mdp5_global_state*) #1

declare dso_local i32 @PTR_ERR(%struct.mdp5_global_state*) #1

declare dso_local i32 @get_right_pair_idx(%struct.mdp5_kms*, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
