; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_force_clk_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_force_clk_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.arcturus_dpm_table* }
%struct.arcturus_dpm_table = type { %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table }
%struct.arcturus_single_dpm_table = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Clock level specified %d is over max allowed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FEATURE_DPM_GFXCLK_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to upload boot level to lowest!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to upload dpm max level to highest!\0A\00", align 1
@FEATURE_DPM_UCLK_MASK = common dso_local global i32 0, align 4
@FEATURE_DPM_SOCCLK_MASK = common dso_local global i32 0, align 4
@FEATURE_DPM_FCLK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i64)* @arcturus_force_clk_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcturus_force_clk_levels(%struct.smu_context* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.arcturus_dpm_table*, align 8
  %8 = alloca %struct.arcturus_single_dpm_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %13 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @ffs(i64 %18)
  %20 = sub i64 %19, 1
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i64 [ %20, %17 ], [ 0, %21 ]
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @fls(i64 %27)
  %29 = sub i64 %28, 1
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i64 [ %29, %26 ], [ 0, %30 ]
  store i64 %32, i64* %10, align 8
  %33 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %34 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %35, align 8
  store %struct.arcturus_dpm_table* %36, %struct.arcturus_dpm_table** %7, align 8
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %254 [
    i32 129, label %38
    i32 130, label %92
    i32 128, label %146
    i32 131, label %200
  ]

38:                                               ; preds = %31
  %39 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %7, align 8
  %40 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %39, i32 0, i32 3
  store %struct.arcturus_single_dpm_table* %40, %struct.arcturus_single_dpm_table** %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %43 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp uge i64 %41, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %49 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, 1
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %255

55:                                               ; preds = %38
  %56 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %57 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %64 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %67 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %74 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %77 = load i32, i32* @FEATURE_DPM_GFXCLK_MASK, align 4
  %78 = call i32 @arcturus_upload_dpm_level(%struct.smu_context* %76, i32 0, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %55
  %82 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %255

83:                                               ; preds = %55
  %84 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %85 = load i32, i32* @FEATURE_DPM_GFXCLK_MASK, align 4
  %86 = call i32 @arcturus_upload_dpm_level(%struct.smu_context* %84, i32 1, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %83
  br label %255

92:                                               ; preds = %31
  %93 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %7, align 8
  %94 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %93, i32 0, i32 2
  store %struct.arcturus_single_dpm_table* %94, %struct.arcturus_single_dpm_table** %8, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %97 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp uge i64 %95, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %103 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %104, 1
  %106 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %101, i64 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %11, align 4
  br label %255

109:                                              ; preds = %92
  %110 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %111 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %118 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %121 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %128 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %131 = load i32, i32* @FEATURE_DPM_UCLK_MASK, align 4
  %132 = call i32 @arcturus_upload_dpm_level(%struct.smu_context* %130, i32 0, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %109
  %136 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %255

137:                                              ; preds = %109
  %138 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %139 = load i32, i32* @FEATURE_DPM_UCLK_MASK, align 4
  %140 = call i32 @arcturus_upload_dpm_level(%struct.smu_context* %138, i32 1, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %137
  br label %255

146:                                              ; preds = %31
  %147 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %7, align 8
  %148 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %147, i32 0, i32 1
  store %struct.arcturus_single_dpm_table* %148, %struct.arcturus_single_dpm_table** %8, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %151 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp uge i64 %149, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %146
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %157 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sub i64 %158, 1
  %160 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %155, i64 %159)
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %11, align 4
  br label %255

163:                                              ; preds = %146
  %164 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %165 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %172 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  %174 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %175 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %174, i32 0, i32 1
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %182 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  %184 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %185 = load i32, i32* @FEATURE_DPM_SOCCLK_MASK, align 4
  %186 = call i32 @arcturus_upload_dpm_level(%struct.smu_context* %184, i32 0, i32 %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %163
  %190 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %255

191:                                              ; preds = %163
  %192 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %193 = load i32, i32* @FEATURE_DPM_SOCCLK_MASK, align 4
  %194 = call i32 @arcturus_upload_dpm_level(%struct.smu_context* %192, i32 1, i32 %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %191
  br label %255

200:                                              ; preds = %31
  %201 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %7, align 8
  %202 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %201, i32 0, i32 0
  store %struct.arcturus_single_dpm_table* %202, %struct.arcturus_single_dpm_table** %8, align 8
  %203 = load i64, i64* %10, align 8
  %204 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %205 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp uge i64 %203, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %200
  %209 = load i64, i64* %10, align 8
  %210 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %211 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = sub i64 %212, 1
  %214 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %209, i64 %213)
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %11, align 4
  br label %255

217:                                              ; preds = %200
  %218 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %219 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %218, i32 0, i32 1
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = load i64, i64* %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %226 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  store i32 %224, i32* %227, align 4
  %228 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %229 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %228, i32 0, i32 1
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = load i64, i64* %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %8, align 8
  %236 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  store i32 %234, i32* %237, align 8
  %238 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %239 = load i32, i32* @FEATURE_DPM_FCLK_MASK, align 4
  %240 = call i32 @arcturus_upload_dpm_level(%struct.smu_context* %238, i32 0, i32 %239)
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %217
  %244 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %255

245:                                              ; preds = %217
  %246 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %247 = load i32, i32* @FEATURE_DPM_FCLK_MASK, align 4
  %248 = call i32 @arcturus_upload_dpm_level(%struct.smu_context* %246, i32 1, i32 %247)
  store i32 %248, i32* %11, align 4
  %249 = load i32, i32* %11, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %245
  br label %255

254:                                              ; preds = %31
  br label %255

255:                                              ; preds = %254, %253, %243, %208, %199, %189, %154, %145, %135, %100, %91, %81, %46
  %256 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %257 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %256, i32 0, i32 0
  %258 = call i32 @mutex_unlock(i32* %257)
  %259 = load i32, i32* %11, align 4
  ret i32 %259
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ffs(i64) #1

declare dso_local i64 @fls(i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @arcturus_upload_dpm_level(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
