; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_track_live_clamps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_track_live_clamps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_validated_shader_info = type { i32 }
%struct.vc4_shader_validation_state = type { i32*, i64, i32*, i32* }

@QPU_OP_ADD = common dso_local global i32 0, align 4
@QPU_WADDR_ADD = common dso_local global i32 0, align 4
@QPU_WADDR_MUL = common dso_local global i32 0, align 4
@QPU_COND_ADD = common dso_local global i32 0, align 4
@QPU_ADD_A = common dso_local global i32 0, align 4
@QPU_ADD_B = common dso_local global i32 0, align 4
@QPU_RADDR_A = common dso_local global i32 0, align 4
@QPU_RADDR_B = common dso_local global i32 0, align 4
@QPU_SIG = common dso_local global i32 0, align 4
@QPU_WS = common dso_local global i32 0, align 4
@QPU_COND_ALWAYS = common dso_local global i64 0, align 8
@QPU_A_MAX = common dso_local global i64 0, align 8
@QPU_SIG_SMALL_IMM = common dso_local global i64 0, align 8
@QPU_MUX_B = common dso_local global i64 0, align 8
@QPU_A_MIN = common dso_local global i64 0, align 8
@QPU_MUX_A = common dso_local global i64 0, align 8
@QPU_R_UNIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*)* @track_live_clamps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @track_live_clamps(%struct.vc4_validated_shader_info* %0, %struct.vc4_shader_validation_state* %1) #0 {
  %3 = alloca %struct.vc4_validated_shader_info*, align 8
  %4 = alloca %struct.vc4_shader_validation_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.vc4_validated_shader_info* %0, %struct.vc4_validated_shader_info** %3, align 8
  store %struct.vc4_shader_validation_state* %1, %struct.vc4_shader_validation_state** %4, align 8
  %20 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %4, align 8
  %21 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %4, align 8
  %24 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @QPU_OP_ADD, align 4
  %30 = call i64 @QPU_GET_FIELD(i32 %28, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @QPU_WADDR_ADD, align 4
  %33 = call i64 @QPU_GET_FIELD(i32 %31, i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @QPU_WADDR_MUL, align 4
  %36 = call i64 @QPU_GET_FIELD(i32 %34, i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @QPU_COND_ADD, align 4
  %39 = call i64 @QPU_GET_FIELD(i32 %37, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @QPU_ADD_A, align 4
  %42 = call i64 @QPU_GET_FIELD(i32 %40, i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @QPU_ADD_B, align 4
  %45 = call i64 @QPU_GET_FIELD(i32 %43, i32 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @QPU_RADDR_A, align 4
  %48 = call i64 @QPU_GET_FIELD(i32 %46, i32 %47)
  store i64 %48, i64* %12, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @QPU_RADDR_B, align 4
  %51 = call i64 @QPU_GET_FIELD(i32 %49, i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @QPU_SIG, align 4
  %54 = call i64 @QPU_GET_FIELD(i32 %52, i32 %53)
  store i64 %54, i64* %14, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @QPU_WS, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @raddr_add_a_to_live_reg_index(i32 %58)
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %16, align 8
  %61 = icmp ne i64 %60, -1
  br i1 %61, label %62, label %70

62:                                               ; preds = %2
  %63 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %4, align 8
  %64 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %16, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %62, %2
  %71 = phi i1 [ false, %2 ], [ %69, %62 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %19, align 4
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i64 @waddr_to_live_reg_index(i64 %73, i32 %74)
  store i64 %75, i64* %17, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @waddr_to_live_reg_index(i64 %76, i32 %80)
  store i64 %81, i64* %18, align 8
  %82 = load i64, i64* %18, align 8
  %83 = icmp ne i64 %82, -1
  br i1 %83, label %84, label %95

84:                                               ; preds = %70
  %85 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %4, align 8
  %86 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %18, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 0, i32* %89, align 4
  %90 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %4, align 8
  %91 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %18, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 -1, i32* %94, align 4
  br label %95

95:                                               ; preds = %84, %70
  %96 = load i64, i64* %17, align 8
  %97 = icmp ne i64 %96, -1
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %4, align 8
  %100 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %17, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 0, i32* %103, align 4
  %104 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %4, align 8
  %105 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %17, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 -1, i32* %108, align 4
  br label %110

109:                                              ; preds = %95
  br label %180

110:                                              ; preds = %98
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* @QPU_COND_ALWAYS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %180

115:                                              ; preds = %110
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @QPU_A_MAX, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %141

119:                                              ; preds = %115
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* @QPU_SIG_SMALL_IMM, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %134, label %123

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* @QPU_MUX_B, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* @QPU_MUX_B, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %123, %119
  br label %180

135:                                              ; preds = %130, %126
  %136 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %4, align 8
  %137 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* %17, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 1, i32* %140, align 4
  br label %180

141:                                              ; preds = %115
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* @QPU_A_MIN, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %179

145:                                              ; preds = %141
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %180

149:                                              ; preds = %145
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* @QPU_MUX_A, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i64, i64* %12, align 8
  %155 = load i64, i64* @QPU_R_UNIF, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %170, label %157

157:                                              ; preds = %153, %149
  %158 = load i64, i64* %11, align 8
  %159 = load i64, i64* @QPU_MUX_B, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load i64, i64* %13, align 8
  %163 = load i64, i64* @QPU_R_UNIF, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load i64, i64* %14, align 8
  %167 = load i64, i64* @QPU_SIG_SMALL_IMM, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %170, label %169

169:                                              ; preds = %165, %161, %157
  br label %180

170:                                              ; preds = %165, %153
  %171 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %3, align 8
  %172 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %4, align 8
  %175 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* %17, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32 %173, i32* %178, align 4
  br label %179

179:                                              ; preds = %170, %141
  br label %180

180:                                              ; preds = %109, %114, %134, %148, %169, %179, %135
  ret void
}

declare dso_local i64 @QPU_GET_FIELD(i32, i32) #1

declare dso_local i64 @raddr_add_a_to_live_reg_index(i32) #1

declare dso_local i64 @waddr_to_live_reg_index(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
