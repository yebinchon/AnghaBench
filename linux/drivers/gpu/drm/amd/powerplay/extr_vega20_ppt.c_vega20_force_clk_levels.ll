; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_force_clk_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_force_clk_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.smu_dpm_context }
%struct.smu_dpm_context = type { i64, %struct.vega20_dpm_table* }
%struct.vega20_dpm_table = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@AMD_DPM_FORCED_LEVEL_MANUAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"force clock level is for dpm manual mode only.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Clock level specified %d is over max allowed %d\0A\00", align 1
@FEATURE_DPM_GFXCLK_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to upload boot level to lowest!\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to upload dpm max level to highest!\0A\00", align 1
@FEATURE_DPM_UCLK_MASK = common dso_local global i32 0, align 4
@FEATURE_DPM_SOCCLK_MASK = common dso_local global i32 0, align 4
@FEATURE_DPM_FCLK_MASK = common dso_local global i32 0, align 4
@FEATURE_DPM_DCEFCLK_MASK = common dso_local global i32 0, align 4
@NUM_LINK_LEVELS = common dso_local global i64 0, align 8
@SMU_MSG_SetMinLinkDpmByIndex = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to set min link dpm level!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i64)* @vega20_force_clk_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_force_clk_levels(%struct.smu_context* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vega20_dpm_table*, align 8
  %9 = alloca %struct.vega20_single_dpm_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.smu_dpm_context*, align 8
  %14 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %16 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %15, i32 0, i32 1
  store %struct.smu_dpm_context* %16, %struct.smu_dpm_context** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %13, align 8
  %18 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AMD_DPM_FORCED_LEVEL_MANUAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %333

26:                                               ; preds = %3
  %27 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %28 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @ffs(i64 %33)
  %35 = sub i64 %34, 1
  br label %37

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i64 [ %35, %32 ], [ 0, %36 ]
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @fls(i64 %42)
  %44 = sub i64 %43, 1
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i64 [ %44, %41 ], [ 0, %45 ]
  store i64 %47, i64* %11, align 8
  %48 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %49 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %49, i32 0, i32 1
  %51 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %50, align 8
  store %struct.vega20_dpm_table* %51, %struct.vega20_dpm_table** %8, align 8
  %52 = load i32, i32* %6, align 4
  switch i32 %52, label %327 [
    i32 129, label %53
    i32 131, label %107
    i32 128, label %161
    i32 132, label %215
    i32 133, label %269
    i32 130, label %306
  ]

53:                                               ; preds = %46
  %54 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %55 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %54, i32 0, i32 4
  store %struct.vega20_single_dpm_table* %55, %struct.vega20_single_dpm_table** %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %58 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp uge i64 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %64 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %65, 1
  %67 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %328

70:                                               ; preds = %53
  %71 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %72 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %79 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %82 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %89 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %92 = load i32, i32* @FEATURE_DPM_GFXCLK_MASK, align 4
  %93 = call i32 @vega20_upload_dpm_level(%struct.smu_context* %91, i32 0, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %70
  %97 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %328

98:                                               ; preds = %70
  %99 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %100 = load i32, i32* @FEATURE_DPM_GFXCLK_MASK, align 4
  %101 = call i32 @vega20_upload_dpm_level(%struct.smu_context* %99, i32 1, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %98
  br label %328

107:                                              ; preds = %46
  %108 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %109 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %108, i32 0, i32 3
  store %struct.vega20_single_dpm_table* %109, %struct.vega20_single_dpm_table** %9, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %112 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp uge i64 %110, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %107
  %116 = load i64, i64* %11, align 8
  %117 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %118 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub i64 %119, 1
  %121 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %116, i64 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %14, align 4
  br label %328

124:                                              ; preds = %107
  %125 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %126 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %133 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %136 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i64, i64* %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %143 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 4
  %145 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %146 = load i32, i32* @FEATURE_DPM_UCLK_MASK, align 4
  %147 = call i32 @vega20_upload_dpm_level(%struct.smu_context* %145, i32 0, i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %124
  %151 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %328

152:                                              ; preds = %124
  %153 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %154 = load i32, i32* @FEATURE_DPM_UCLK_MASK, align 4
  %155 = call i32 @vega20_upload_dpm_level(%struct.smu_context* %153, i32 1, i32 %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %152
  br label %328

161:                                              ; preds = %46
  %162 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %163 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %162, i32 0, i32 2
  store %struct.vega20_single_dpm_table* %163, %struct.vega20_single_dpm_table** %9, align 8
  %164 = load i64, i64* %11, align 8
  %165 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %166 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp uge i64 %164, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %161
  %170 = load i64, i64* %11, align 8
  %171 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %172 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = sub i64 %173, 1
  %175 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %170, i64 %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %14, align 4
  br label %328

178:                                              ; preds = %161
  %179 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %180 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %179, i32 0, i32 1
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i64, i64* %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %187 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  store i32 %185, i32* %188, align 8
  %189 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %190 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %189, i32 0, i32 1
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %197 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 4
  %199 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %200 = load i32, i32* @FEATURE_DPM_SOCCLK_MASK, align 4
  %201 = call i32 @vega20_upload_dpm_level(%struct.smu_context* %199, i32 0, i32 %200)
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %178
  %205 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %328

206:                                              ; preds = %178
  %207 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %208 = load i32, i32* @FEATURE_DPM_SOCCLK_MASK, align 4
  %209 = call i32 @vega20_upload_dpm_level(%struct.smu_context* %207, i32 1, i32 %208)
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* %14, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %206
  br label %328

215:                                              ; preds = %46
  %216 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %217 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %216, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %217, %struct.vega20_single_dpm_table** %9, align 8
  %218 = load i64, i64* %11, align 8
  %219 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %220 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp uge i64 %218, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %215
  %224 = load i64, i64* %11, align 8
  %225 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %226 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = sub i64 %227, 1
  %229 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %224, i64 %228)
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %14, align 4
  br label %328

232:                                              ; preds = %215
  %233 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %234 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %233, i32 0, i32 1
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i64, i64* %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %241 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  store i32 %239, i32* %242, align 8
  %243 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %244 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %243, i32 0, i32 1
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %244, align 8
  %246 = load i64, i64* %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %251 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 1
  store i32 %249, i32* %252, align 4
  %253 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %254 = load i32, i32* @FEATURE_DPM_FCLK_MASK, align 4
  %255 = call i32 @vega20_upload_dpm_level(%struct.smu_context* %253, i32 0, i32 %254)
  store i32 %255, i32* %14, align 4
  %256 = load i32, i32* %14, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %232
  %259 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %328

260:                                              ; preds = %232
  %261 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %262 = load i32, i32* @FEATURE_DPM_FCLK_MASK, align 4
  %263 = call i32 @vega20_upload_dpm_level(%struct.smu_context* %261, i32 1, i32 %262)
  store i32 %263, i32* %14, align 4
  %264 = load i32, i32* %14, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %260
  br label %328

269:                                              ; preds = %46
  %270 = load i64, i64* %10, align 8
  store i64 %270, i64* %12, align 8
  %271 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %272 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %271, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %272, %struct.vega20_single_dpm_table** %9, align 8
  %273 = load i64, i64* %12, align 8
  %274 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %275 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp uge i64 %273, %276
  br i1 %277, label %278, label %287

278:                                              ; preds = %269
  %279 = load i64, i64* %12, align 8
  %280 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %281 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = sub i64 %282, 1
  %284 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %279, i64 %283)
  %285 = load i32, i32* @EINVAL, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %14, align 4
  br label %328

287:                                              ; preds = %269
  %288 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %289 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %288, i32 0, i32 1
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %289, align 8
  %291 = load i64, i64* %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %296 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 0
  store i32 %294, i32* %297, align 8
  %298 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %299 = load i32, i32* @FEATURE_DPM_DCEFCLK_MASK, align 4
  %300 = call i32 @vega20_upload_dpm_level(%struct.smu_context* %298, i32 0, i32 %299)
  store i32 %300, i32* %14, align 4
  %301 = load i32, i32* %14, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %287
  %304 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %305

305:                                              ; preds = %303, %287
  br label %328

306:                                              ; preds = %46
  %307 = load i64, i64* %10, align 8
  %308 = load i64, i64* @NUM_LINK_LEVELS, align 8
  %309 = icmp uge i64 %307, %308
  br i1 %309, label %314, label %310

310:                                              ; preds = %306
  %311 = load i64, i64* %11, align 8
  %312 = load i64, i64* @NUM_LINK_LEVELS, align 8
  %313 = icmp uge i64 %311, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %310, %306
  %315 = load i32, i32* @EINVAL, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %14, align 4
  br label %328

317:                                              ; preds = %310
  %318 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %319 = load i32, i32* @SMU_MSG_SetMinLinkDpmByIndex, align 4
  %320 = load i64, i64* %10, align 8
  %321 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %318, i32 %319, i64 %320)
  store i32 %321, i32* %14, align 4
  %322 = load i32, i32* %14, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %317
  %325 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %326

326:                                              ; preds = %324, %317
  br label %328

327:                                              ; preds = %46
  br label %328

328:                                              ; preds = %327, %326, %314, %305, %278, %268, %258, %223, %214, %204, %169, %160, %150, %115, %106, %96, %61
  %329 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %330 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %329, i32 0, i32 0
  %331 = call i32 @mutex_unlock(i32* %330)
  %332 = load i32, i32* %14, align 4
  store i32 %332, i32* %4, align 4
  br label %333

333:                                              ; preds = %328, %22
  %334 = load i32, i32* %4, align 4
  ret i32 %334
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ffs(i64) #1

declare dso_local i64 @fls(i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @vega20_upload_dpm_level(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
