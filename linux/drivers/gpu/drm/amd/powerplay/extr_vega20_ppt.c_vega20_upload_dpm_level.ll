; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_upload_dpm_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_upload_dpm_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vega20_dpm_table* }
%struct.vega20_dpm_table = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SMU_FEATURE_DPM_GFXCLK_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_GFXCLK_MASK = common dso_local global i32 0, align 4
@SMU_MSG_SetSoftMaxByFreq = common dso_local global i32 0, align 4
@SMU_MSG_SetSoftMinByFreq = common dso_local global i32 0, align 4
@PPCLK_GFXCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to set soft %s gfxclk !\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@SMU_FEATURE_DPM_UCLK_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_UCLK_MASK = common dso_local global i32 0, align 4
@PPCLK_UCLK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to set soft %s memclk !\0A\00", align 1
@SMU_FEATURE_DPM_SOCCLK_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_SOCCLK_MASK = common dso_local global i32 0, align 4
@PPCLK_SOCCLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to set soft %s socclk !\0A\00", align 1
@SMU_FEATURE_DPM_FCLK_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_FCLK_MASK = common dso_local global i32 0, align 4
@PPCLK_FCLK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to set soft %s fclk !\0A\00", align 1
@SMU_FEATURE_DPM_DCEFCLK_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_DCEFCLK_MASK = common dso_local global i32 0, align 4
@SMU_MSG_SetHardMinByFreq = common dso_local global i32 0, align 4
@PPCLK_DCEFCLK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to set hard min dcefclk !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i32)* @vega20_upload_dpm_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_upload_dpm_level(%struct.smu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vega20_dpm_table*, align 8
  %9 = alloca %struct.vega20_single_dpm_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %13 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %14, align 8
  store %struct.vega20_dpm_table* %15, %struct.vega20_dpm_table** %8, align 8
  %16 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %17 = load i32, i32* @SMU_FEATURE_DPM_GFXCLK_BIT, align 4
  %18 = call i64 @smu_feature_is_enabled(%struct.smu_context* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @FEATURE_DPM_GFXCLK_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %20
  %26 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %27 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %26, i32 0, i32 4
  store %struct.vega20_single_dpm_table* %27, %struct.vega20_single_dpm_table** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %32 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %37 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i32 [ %34, %30 ], [ %39, %35 ]
  store i32 %41, i32* %10, align 4
  %42 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @SMU_MSG_SetSoftMaxByFreq, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @SMU_MSG_SetSoftMinByFreq, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load i32, i32* @PPCLK_GFXCLK, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 65535
  %55 = or i32 %52, %54
  %56 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %42, i32 %50, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %260

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %20, %3
  %68 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %69 = load i32, i32* @SMU_FEATURE_DPM_UCLK_BIT, align 4
  %70 = call i64 @smu_feature_is_enabled(%struct.smu_context* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @FEATURE_DPM_UCLK_MASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %119

77:                                               ; preds = %72
  %78 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %79 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %78, i32 0, i32 3
  store %struct.vega20_single_dpm_table* %79, %struct.vega20_single_dpm_table** %9, align 8
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %84 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  br label %92

87:                                               ; preds = %77
  %88 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %89 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  br label %92

92:                                               ; preds = %87, %82
  %93 = phi i32 [ %86, %82 ], [ %91, %87 ]
  store i32 %93, i32* %10, align 4
  %94 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @SMU_MSG_SetSoftMaxByFreq, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @SMU_MSG_SetSoftMinByFreq, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load i32, i32* @PPCLK_UCLK, align 4
  %104 = shl i32 %103, 16
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, 65535
  %107 = or i32 %104, %106
  %108 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %94, i32 %102, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %101
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %116 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %4, align 4
  br label %260

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118, %72, %67
  %120 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %121 = load i32, i32* @SMU_FEATURE_DPM_SOCCLK_BIT, align 4
  %122 = call i64 @smu_feature_is_enabled(%struct.smu_context* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %171

124:                                              ; preds = %119
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @FEATURE_DPM_SOCCLK_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %171

129:                                              ; preds = %124
  %130 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %131 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %130, i32 0, i32 2
  store %struct.vega20_single_dpm_table* %131, %struct.vega20_single_dpm_table** %9, align 8
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %136 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  br label %144

139:                                              ; preds = %129
  %140 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %141 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  br label %144

144:                                              ; preds = %139, %134
  %145 = phi i32 [ %138, %134 ], [ %143, %139 ]
  store i32 %145, i32* %10, align 4
  %146 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* @SMU_MSG_SetSoftMaxByFreq, align 4
  br label %153

151:                                              ; preds = %144
  %152 = load i32, i32* @SMU_MSG_SetSoftMinByFreq, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %155 = load i32, i32* @PPCLK_SOCCLK, align 4
  %156 = shl i32 %155, 16
  %157 = load i32, i32* %10, align 4
  %158 = and i32 %157, 65535
  %159 = or i32 %156, %158
  %160 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %146, i32 %154, i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %153
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %168 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %167)
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %4, align 4
  br label %260

170:                                              ; preds = %153
  br label %171

171:                                              ; preds = %170, %124, %119
  %172 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %173 = load i32, i32* @SMU_FEATURE_DPM_FCLK_BIT, align 4
  %174 = call i64 @smu_feature_is_enabled(%struct.smu_context* %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %223

176:                                              ; preds = %171
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @FEATURE_DPM_FCLK_MASK, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %223

181:                                              ; preds = %176
  %182 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %183 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %182, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %183, %struct.vega20_single_dpm_table** %9, align 8
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %188 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  br label %196

191:                                              ; preds = %181
  %192 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %193 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  br label %196

196:                                              ; preds = %191, %186
  %197 = phi i32 [ %190, %186 ], [ %195, %191 ]
  store i32 %197, i32* %10, align 4
  %198 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = load i32, i32* @SMU_MSG_SetSoftMaxByFreq, align 4
  br label %205

203:                                              ; preds = %196
  %204 = load i32, i32* @SMU_MSG_SetSoftMinByFreq, align 4
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i32 [ %202, %201 ], [ %204, %203 ]
  %207 = load i32, i32* @PPCLK_FCLK, align 4
  %208 = shl i32 %207, 16
  %209 = load i32, i32* %10, align 4
  %210 = and i32 %209, 65535
  %211 = or i32 %208, %210
  %212 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %198, i32 %206, i32 %211)
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %205
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %220 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %219)
  %221 = load i32, i32* %11, align 4
  store i32 %221, i32* %4, align 4
  br label %260

222:                                              ; preds = %205
  br label %223

223:                                              ; preds = %222, %176, %171
  %224 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %225 = load i32, i32* @SMU_FEATURE_DPM_DCEFCLK_BIT, align 4
  %226 = call i64 @smu_feature_is_enabled(%struct.smu_context* %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %258

228:                                              ; preds = %223
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* @FEATURE_DPM_DCEFCLK_MASK, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %258

233:                                              ; preds = %228
  %234 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %235 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %234, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %235, %struct.vega20_single_dpm_table** %9, align 8
  %236 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %237 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %257, label %242

242:                                              ; preds = %233
  %243 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %244 = load i32, i32* @SMU_MSG_SetHardMinByFreq, align 4
  %245 = load i32, i32* @PPCLK_DCEFCLK, align 4
  %246 = shl i32 %245, 16
  %247 = load i32, i32* %10, align 4
  %248 = and i32 %247, 65535
  %249 = or i32 %246, %248
  %250 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %243, i32 %244, i32 %249)
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %242
  %254 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %255 = load i32, i32* %11, align 4
  store i32 %255, i32* %4, align 4
  br label %260

256:                                              ; preds = %242
  br label %257

257:                                              ; preds = %256, %233
  br label %258

258:                                              ; preds = %257, %228, %223
  %259 = load i32, i32* %11, align 4
  store i32 %259, i32* %4, align 4
  br label %260

260:                                              ; preds = %258, %253, %215, %163, %111, %59
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i64 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
