; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_get_dependency_volt_by_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_get_dependency_volt_by_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, i64 }
%struct.smu7_hwmgr = type { i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@VOLTAGE_SCALE = common dso_local global i64 0, align 8
@VDDC_SHIFT = common dso_local global i64 0, align 8
@SMU7_VOLTAGE_CONTROL_NONE = common dso_local global i64 0, align 8
@VDDCI_SHIFT = common dso_local global i64 0, align 8
@VDDC_VDDCI_DELTA = common dso_local global i64 0, align 8
@PHASES_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, i64, i64*, i64*)* @fiji_get_dependency_volt_by_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_get_dependency_volt_by_clk(%struct.pp_hwmgr* %0, %struct.phm_ppt_v1_clock_voltage_dependency_table* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_hwmgr*, align 8
  %8 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %7, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %1, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %18, %struct.smu7_hwmgr** %14, align 8
  %19 = load i64*, i64** %11, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %10, align 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %22 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %272

28:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %167, %28
  %30 = load i64, i64* %12, align 8
  %31 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %32 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %170

35:                                               ; preds = %29
  %36 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %37 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %166

45:                                               ; preds = %35
  %46 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %47 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VOLTAGE_SCALE, align 8
  %54 = mul i64 %52, %53
  %55 = load i64, i64* @VDDC_SHIFT, align 8
  %56 = shl i64 %54, %55
  %57 = load i64*, i64** %10, align 8
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %58, %56
  store i64 %59, i64* %57, align 8
  %60 = load i64, i64* @SMU7_VOLTAGE_CONTROL_NONE, align 8
  %61 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %14, align 8
  %62 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %45
  %66 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %14, align 8
  %67 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @VOLTAGE_SCALE, align 8
  %71 = mul i64 %69, %70
  %72 = load i64, i64* @VDDCI_SHIFT, align 8
  %73 = shl i64 %71, %72
  %74 = load i64*, i64** %10, align 8
  %75 = load i64, i64* %74, align 8
  %76 = or i64 %75, %73
  store i64 %76, i64* %74, align 8
  br label %124

77:                                               ; preds = %45
  %78 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %79 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %77
  %87 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %88 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @VOLTAGE_SCALE, align 8
  %96 = mul i64 %94, %95
  %97 = load i64, i64* @VDDCI_SHIFT, align 8
  %98 = shl i64 %96, %97
  %99 = load i64*, i64** %10, align 8
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %100, %98
  store i64 %101, i64* %99, align 8
  br label %123

102:                                              ; preds = %77
  %103 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %14, align 8
  %104 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %103, i32 0, i32 3
  %105 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %106 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i64, i64* %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @VDDC_VDDCI_DELTA, align 8
  %113 = sub i64 %111, %112
  %114 = call i64 @phm_find_closest_vddci(i32* %104, i64 %113)
  store i64 %114, i64* %13, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* @VOLTAGE_SCALE, align 8
  %117 = mul i64 %115, %116
  %118 = load i64, i64* @VDDCI_SHIFT, align 8
  %119 = shl i64 %117, %118
  %120 = load i64*, i64** %10, align 8
  %121 = load i64, i64* %120, align 8
  %122 = or i64 %121, %119
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %102, %86
  br label %124

124:                                              ; preds = %123, %65
  %125 = load i64, i64* @SMU7_VOLTAGE_CONTROL_NONE, align 8
  %126 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %14, align 8
  %127 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %14, align 8
  %132 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @VOLTAGE_SCALE, align 8
  %136 = mul i64 %134, %135
  %137 = load i64*, i64** %11, align 8
  store i64 %136, i64* %137, align 8
  br label %159

138:                                              ; preds = %124
  %139 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %140 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %138
  %148 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %149 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i64, i64* %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @VOLTAGE_SCALE, align 8
  %156 = mul i64 %154, %155
  %157 = load i64*, i64** %11, align 8
  store i64 %156, i64* %157, align 8
  br label %158

158:                                              ; preds = %147, %138
  br label %159

159:                                              ; preds = %158, %130
  %160 = load i32, i32* @PHASES_SHIFT, align 4
  %161 = shl i32 1, %160
  %162 = sext i32 %161 to i64
  %163 = load i64*, i64** %10, align 8
  %164 = load i64, i64* %163, align 8
  %165 = or i64 %164, %162
  store i64 %165, i64* %163, align 8
  store i32 0, i32* %6, align 4
  br label %272

166:                                              ; preds = %35
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %12, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %12, align 8
  br label %29

170:                                              ; preds = %29
  %171 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %172 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i64, i64* %12, align 8
  %175 = sub i64 %174, 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @VOLTAGE_SCALE, align 8
  %180 = mul i64 %178, %179
  %181 = load i64, i64* @VDDC_SHIFT, align 8
  %182 = shl i64 %180, %181
  %183 = load i64*, i64** %10, align 8
  %184 = load i64, i64* %183, align 8
  %185 = or i64 %184, %182
  store i64 %185, i64* %183, align 8
  %186 = load i64, i64* @SMU7_VOLTAGE_CONTROL_NONE, align 8
  %187 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %14, align 8
  %188 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %186, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %170
  %192 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %14, align 8
  %193 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @VOLTAGE_SCALE, align 8
  %197 = mul i64 %195, %196
  %198 = load i64, i64* @VDDCI_SHIFT, align 8
  %199 = shl i64 %197, %198
  %200 = load i64*, i64** %10, align 8
  %201 = load i64, i64* %200, align 8
  %202 = or i64 %201, %199
  store i64 %202, i64* %200, align 8
  br label %235

203:                                              ; preds = %170
  %204 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %205 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %204, i32 0, i32 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load i64, i64* %12, align 8
  %208 = sub i64 %207, 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %234

213:                                              ; preds = %203
  %214 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %14, align 8
  %215 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %214, i32 0, i32 3
  %216 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %217 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %216, i32 0, i32 1
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = load i64, i64* %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @VDDC_VDDCI_DELTA, align 8
  %224 = sub i64 %222, %223
  %225 = call i64 @phm_find_closest_vddci(i32* %215, i64 %224)
  store i64 %225, i64* %13, align 8
  %226 = load i64, i64* %13, align 8
  %227 = load i64, i64* @VOLTAGE_SCALE, align 8
  %228 = mul i64 %226, %227
  %229 = load i64, i64* @VDDCI_SHIFT, align 8
  %230 = shl i64 %228, %229
  %231 = load i64*, i64** %10, align 8
  %232 = load i64, i64* %231, align 8
  %233 = or i64 %232, %230
  store i64 %233, i64* %231, align 8
  br label %234

234:                                              ; preds = %213, %203
  br label %235

235:                                              ; preds = %234, %191
  %236 = load i64, i64* @SMU7_VOLTAGE_CONTROL_NONE, align 8
  %237 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %14, align 8
  %238 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp eq i64 %236, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %235
  %242 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %14, align 8
  %243 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @VOLTAGE_SCALE, align 8
  %247 = mul i64 %245, %246
  %248 = load i64*, i64** %11, align 8
  store i64 %247, i64* %248, align 8
  br label %271

249:                                              ; preds = %235
  %250 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %251 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %250, i32 0, i32 1
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %251, align 8
  %253 = load i64, i64* %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %249
  %259 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %260 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %259, i32 0, i32 1
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = load i64, i64* %12, align 8
  %263 = sub i64 %262, 1
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @VOLTAGE_SCALE, align 8
  %268 = mul i64 %266, %267
  %269 = load i64*, i64** %11, align 8
  store i64 %268, i64* %269, align 8
  br label %270

270:                                              ; preds = %258, %249
  br label %271

271:                                              ; preds = %270, %241
  store i32 0, i32* %6, align 4
  br label %272

272:                                              ; preds = %271, %159, %25
  %273 = load i32, i32* %6, align 4
  ret i32 %273
}

declare dso_local i64 @phm_find_closest_vddci(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
