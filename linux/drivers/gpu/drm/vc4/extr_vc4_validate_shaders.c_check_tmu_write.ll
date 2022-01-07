; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_check_tmu_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_check_tmu_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_validated_shader_info = type { i32 }
%struct.vc4_shader_validation_state = type { i64, i32*, i64*, i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32*, i32 }

@QPU_WADDR_MUL = common dso_local global i32 0, align 4
@QPU_WADDR_ADD = common dso_local global i32 0, align 4
@QPU_RADDR_A = common dso_local global i32 0, align 4
@QPU_RADDR_B = common dso_local global i32 0, align 4
@QPU_W_TMU0_B = common dso_local global i64 0, align 8
@QPU_SIG = common dso_local global i32 0, align 4
@QPU_ADD_B = common dso_local global i32 0, align 4
@QPU_SIG_SMALL_IMM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"direct TMU read used small immediate\0A\00", align 1
@QPU_OP_ADD = common dso_local global i32 0, align 4
@QPU_A_ADD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"direct TMU load wasn't an add\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"direct TMU load wasn't clamped\0A\00", align 1
@QPU_MUX_A = common dso_local global i64 0, align 8
@QPU_R_UNIF = common dso_local global i64 0, align 8
@QPU_MUX_B = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"direct TMU load didn't add to a uniform\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"uniform read in the same instruction as texture setup.\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"TMU%d got too many parameters before dispatch\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Texturing with undefined uniform address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*, i32)* @check_tmu_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tmu_write(%struct.vc4_validated_shader_info* %0, %struct.vc4_shader_validation_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc4_validated_shader_info*, align 8
  %6 = alloca %struct.vc4_shader_validation_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.vc4_validated_shader_info* %0, %struct.vc4_validated_shader_info** %5, align 8
  store %struct.vc4_shader_validation_state* %1, %struct.vc4_shader_validation_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %20 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %23 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @QPU_WADDR_MUL, align 4
  %32 = call i64 @QPU_GET_FIELD(i32 %30, i32 %31)
  br label %37

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @QPU_WADDR_ADD, align 4
  %36 = call i64 @QPU_GET_FIELD(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  store i64 %38, i64* %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @QPU_RADDR_A, align 4
  %41 = call i64 @QPU_GET_FIELD(i32 %39, i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @QPU_RADDR_B, align 4
  %44 = call i64 @QPU_GET_FIELD(i32 %42, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @QPU_W_TMU0_B, align 8
  %47 = icmp sgt i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @is_tmu_submit(i64 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %37
  %54 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %55 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %53, %37
  %63 = phi i1 [ false, %37 ], [ %61, %53 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @QPU_SIG, align 4
  %67 = call i64 @QPU_GET_FIELD(i32 %65, i32 %66)
  store i64 %67, i64* %15, align 8
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %145

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @QPU_ADD_B, align 4
  %73 = call i64 @QPU_GET_FIELD(i32 %71, i32 %72)
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* @QPU_SIG_SMALL_IMM, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %233

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @QPU_OP_ADD, align 4
  %85 = call i64 @QPU_GET_FIELD(i32 %83, i32 %84)
  %86 = load i64, i64* @QPU_A_ADD, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82, %79
  %89 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %233

90:                                               ; preds = %82
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @raddr_add_a_to_live_reg_index(i32 %91)
  store i64 %92, i64* %17, align 8
  %93 = load i64, i64* %17, align 8
  %94 = icmp eq i64 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %233

97:                                               ; preds = %90
  %98 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %99 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %17, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %18, align 8
  %104 = load i64, i64* %18, align 8
  %105 = icmp eq i64 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %233

108:                                              ; preds = %97
  %109 = load i64, i64* %18, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %112 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %111, i32 0, i32 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %110, i32* %119, align 4
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* @QPU_MUX_A, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %108
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* @QPU_R_UNIF, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %137, label %127

127:                                              ; preds = %123, %108
  %128 = load i64, i64* %16, align 8
  %129 = load i64, i64* @QPU_MUX_B, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* @QPU_R_UNIF, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %137, label %135

135:                                              ; preds = %131, %127
  %136 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %233

137:                                              ; preds = %131, %123
  %138 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %139 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %138, i32 0, i32 4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store i32 1, i32* %144, align 8
  br label %160

145:                                              ; preds = %62
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* @QPU_R_UNIF, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %157, label %149

149:                                              ; preds = %145
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* @QPU_SIG_SMALL_IMM, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* @QPU_R_UNIF, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153, %145
  %158 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %233

159:                                              ; preds = %153, %149
  br label %160

160:                                              ; preds = %159, %137
  %161 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %162 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp sge i32 %167, 4
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load i32, i32* %12, align 4
  %171 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %170)
  store i32 0, i32* %4, align 4
  br label %233

172:                                              ; preds = %160
  %173 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %5, align 8
  %174 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %177 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %176, i32 0, i32 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %185 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %183, i64 %191
  store i32 %175, i32* %192, align 4
  %193 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %194 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %172
  %204 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %205 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %233

210:                                              ; preds = %203
  %211 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %5, align 8
  %212 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 4
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %210, %172
  %216 = load i32, i32* %13, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %232

218:                                              ; preds = %215
  %219 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %5, align 8
  %220 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %221 = load i32, i32* %12, align 4
  %222 = call i32 @record_texture_sample(%struct.vc4_validated_shader_info* %219, %struct.vc4_shader_validation_state* %220, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %218
  store i32 0, i32* %4, align 4
  br label %233

225:                                              ; preds = %218
  %226 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %227 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 0, i32* %231, align 4
  br label %232

232:                                              ; preds = %225, %215
  store i32 1, i32* %4, align 4
  br label %233

233:                                              ; preds = %232, %224, %208, %169, %157, %135, %106, %95, %88, %77
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i64 @QPU_GET_FIELD(i32, i32) #1

declare dso_local i32 @is_tmu_submit(i64) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i64 @raddr_add_a_to_live_reg_index(i32) #1

declare dso_local i32 @record_texture_sample(%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
