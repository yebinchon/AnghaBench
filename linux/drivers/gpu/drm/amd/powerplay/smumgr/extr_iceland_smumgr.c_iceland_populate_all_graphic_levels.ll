; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_all_graphic_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_all_graphic_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_11__, %struct.smu7_dpm_table }
%struct.TYPE_11__ = type { i32, i32 }
%struct.smu7_dpm_table = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.iceland_smumgr = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i64 }

@SMU71_Discrete_DpmTable = common dso_local global i32 0, align 4
@GraphicsLevel = common dso_local global i32 0, align 4
@SMU71_MAX_LEVELS_GRAPHICS = common dso_local global i32 0, align 4
@PPSMC_DISPLAY_WATERMARK_HIGH = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @iceland_populate_all_graphic_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iceland_populate_all_graphic_levels(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu7_hwmgr*, align 8
  %5 = alloca %struct.iceland_smumgr*, align 8
  %6 = alloca %struct.smu7_dpm_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %19, %struct.smu7_hwmgr** %4, align 8
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.iceland_smumgr*
  store %struct.iceland_smumgr* %23, %struct.iceland_smumgr** %5, align 8
  %24 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %25 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %24, i32 0, i32 1
  store %struct.smu7_dpm_table* %25, %struct.smu7_dpm_table** %6, align 8
  %26 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %5, align 8
  %27 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @SMU71_Discrete_DpmTable, align 4
  %31 = load i32, i32* @GraphicsLevel, align 4
  %32 = call i64 @offsetof(i32 %30, i32 %31)
  %33 = add i64 %29, %32
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* @SMU71_MAX_LEVELS_GRAPHICS, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 24, %35
  store i64 %36, i64* %8, align 8
  %37 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %5, align 8
  %38 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @memset(%struct.TYPE_13__* %41, i32 0, i64 %42)
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %84, %1
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %47 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %44
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %54 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %5, align 8
  %62 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %65
  %67 = call i32 @iceland_populate_single_graphic_level(%struct.pp_hwmgr* %52, i32 %60, %struct.TYPE_13__* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %51
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %2, align 4
  br label %233

72:                                               ; preds = %51
  %73 = load i64, i64* %10, align 8
  %74 = icmp ugt i64 %73, 1
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %5, align 8
  %77 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %75, %72
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %10, align 8
  br label %44

87:                                               ; preds = %44
  %88 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %5, align 8
  %89 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %95 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ugt i64 %97, 1
  br i1 %98, label %99, label %112

99:                                               ; preds = %87
  %100 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_HIGH, align 4
  %101 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %5, align 8
  %102 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %106 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub i64 %108, 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  store i32 %100, i32* %111, align 8
  br label %112

112:                                              ; preds = %99, %87
  %113 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %114 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %5, align 8
  %119 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %122 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %121, i32 0, i32 0
  %123 = call i32 @phm_get_dpm_level_enable_mask_value(%struct.TYPE_14__* %122)
  %124 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %125 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %137, %112
  %128 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %129 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  %134 = shl i32 1, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %127

140:                                              ; preds = %127
  br label %141

141:                                              ; preds = %150, %140
  %142 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %143 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = shl i32 1, %146
  %148 = and i32 %145, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  br label %141

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %172, %153
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %160 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %164, %165
  %167 = shl i32 1, %166
  %168 = and i32 %162, %167
  %169 = icmp eq i32 %168, 0
  br label %170

170:                                              ; preds = %158, %154
  %171 = phi i1 [ false, %154 ], [ %169, %158 ]
  br i1 %171, label %172, label %175

172:                                              ; preds = %170
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  br label %154

175:                                              ; preds = %170
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* %11, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %175
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %184, %185
  br label %189

187:                                              ; preds = %175
  %188 = load i32, i32* %11, align 4
  br label %189

189:                                              ; preds = %187, %182
  %190 = phi i32 [ %186, %182 ], [ %188, %187 ]
  store i32 %190, i32* %13, align 4
  store i64 2, i64* %10, align 8
  br label %191

191:                                              ; preds = %207, %189
  %192 = load i64, i64* %10, align 8
  %193 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %194 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ult i64 %192, %196
  br i1 %197, label %198, label %210

198:                                              ; preds = %191
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %5, align 8
  %201 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = load i64, i64* %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  store i32 %199, i32* %206, align 4
  br label %207

207:                                              ; preds = %198
  %208 = load i64, i64* %10, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %10, align 8
  br label %191

210:                                              ; preds = %191
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %5, align 8
  %213 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  store i32 %211, i32* %217, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %5, align 8
  %220 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i64 1
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 1
  store i32 %218, i32* %224, align 4
  %225 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %226 = load i64, i64* %7, align 8
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %228 = bitcast %struct.TYPE_13__* %227 to i32*
  %229 = load i64, i64* %8, align 8
  %230 = load i32, i32* @SMC_RAM_END, align 4
  %231 = call i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr* %225, i64 %226, i32* %228, i64 %229, i32 %230)
  store i32 %231, i32* %15, align 4
  %232 = load i32, i32* %15, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %210, %70
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @iceland_populate_single_graphic_level(%struct.pp_hwmgr*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @phm_get_dpm_level_enable_mask_value(%struct.TYPE_14__*) #1

declare dso_local i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr*, i64, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
