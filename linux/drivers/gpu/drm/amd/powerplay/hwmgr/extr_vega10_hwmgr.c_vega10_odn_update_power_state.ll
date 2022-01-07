; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_odn_update_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_odn_update_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i64, %struct.pp_power_state*, %struct.vega10_hwmgr* }
%struct.pp_power_state = type { i32 }
%struct.vega10_hwmgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table }
%struct.vega10_single_dpm_table = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.vega10_power_state = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @vega10_odn_update_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_odn_update_power_state(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca %struct.pp_power_state*, align 8
  %5 = alloca %struct.vega10_power_state*, align 8
  %6 = alloca %struct.vega10_single_dpm_table*, align 8
  %7 = alloca %struct.vega10_single_dpm_table*, align 8
  %8 = alloca %struct.vega10_single_dpm_table*, align 8
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 4
  %12 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %11, align 8
  store %struct.vega10_hwmgr* %12, %struct.vega10_hwmgr** %3, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 3
  %15 = load %struct.pp_power_state*, %struct.pp_power_state** %14, align 8
  store %struct.pp_power_state* %15, %struct.pp_power_state** %4, align 8
  %16 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store %struct.vega10_single_dpm_table* %18, %struct.vega10_single_dpm_table** %6, align 8
  %19 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %20 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store %struct.vega10_single_dpm_table* %21, %struct.vega10_single_dpm_table** %7, align 8
  %22 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %23 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.vega10_single_dpm_table* %24, %struct.vega10_single_dpm_table** %8, align 8
  %25 = load %struct.pp_power_state*, %struct.pp_power_state** %4, align 8
  %26 = icmp ne %struct.pp_power_state* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %302

28:                                               ; preds = %1
  %29 = load %struct.pp_power_state*, %struct.pp_power_state** %4, align 8
  %30 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %29, i32 0, i32 0
  %31 = call %struct.vega10_power_state* @cast_phw_vega10_power_state(i32* %30)
  store %struct.vega10_power_state* %31, %struct.vega10_power_state** %5, align 8
  %32 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %33 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %37 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %45 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %48 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %43, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %28
  %57 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %58 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %61 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %69 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i64 %67, i64* %74, align 8
  br label %75

75:                                               ; preds = %56, %28
  %76 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %77 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %85 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %88 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %83, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %75
  %97 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %98 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %101 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %109 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i64 %107, i64* %114, align 8
  br label %115

115:                                              ; preds = %96, %75
  %116 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %117 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %125 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %128 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %123, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %115
  %137 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %138 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %141 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %149 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %148, i32 0, i32 1
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  store i64 %147, i64* %154, align 8
  br label %155

155:                                              ; preds = %136, %115
  %156 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %157 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  br label %302

161:                                              ; preds = %155
  %162 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %163 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %166 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %169 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, 1
  %172 = mul nsw i32 %167, %171
  %173 = sext i32 %172 to i64
  %174 = add i64 %164, %173
  %175 = inttoptr i64 %174 to %struct.pp_power_state*
  store %struct.pp_power_state* %175, %struct.pp_power_state** %4, align 8
  %176 = load %struct.pp_power_state*, %struct.pp_power_state** %4, align 8
  %177 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %176, i32 0, i32 0
  %178 = call %struct.vega10_power_state* @cast_phw_vega10_power_state(i32* %177)
  store %struct.vega10_power_state* %178, %struct.vega10_power_state** %5, align 8
  %179 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %180 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  %183 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %184 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %183, i32 0, i32 1
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %192 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %191, i32 0, i32 1
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %195 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %190, %201
  br i1 %202, label %203, label %222

203:                                              ; preds = %161
  %204 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %205 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %204, i32 0, i32 1
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %208 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %216 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %215, i32 0, i32 1
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  store i64 %214, i64* %221, align 8
  br label %222

222:                                              ; preds = %203, %161
  %223 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %224 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %223, i32 0, i32 1
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %232 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %231, i32 0, i32 1
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %235 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %230, %241
  br i1 %242, label %243, label %262

243:                                              ; preds = %222
  %244 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %245 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %244, i32 0, i32 1
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %248 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %256 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %255, i32 0, i32 1
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  store i64 %254, i64* %261, align 8
  br label %262

262:                                              ; preds = %243, %222
  %263 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %264 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %263, i32 0, i32 1
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %272 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %271, i32 0, i32 1
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %275 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %270, %281
  br i1 %282, label %283, label %302

283:                                              ; preds = %262
  %284 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %285 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %284, i32 0, i32 1
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %288 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.vega10_power_state*, %struct.vega10_power_state** %5, align 8
  %296 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %295, i32 0, i32 1
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %296, align 8
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 2
  store i64 %294, i64* %301, align 8
  br label %302

302:                                              ; preds = %27, %160, %283, %262
  ret void
}

declare dso_local %struct.vega10_power_state* @cast_phw_vega10_power_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
