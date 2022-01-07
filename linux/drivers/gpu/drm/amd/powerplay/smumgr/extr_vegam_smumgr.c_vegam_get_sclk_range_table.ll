; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_get_sclk_range_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_get_sclk_range_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i32 }
%struct.pp_hwmgr = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i32 }
%struct.vegam_smumgr = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.pp_atom_ctrl_sclk_range_table = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.amdgpu_device = type { i32 }

@NUM_SCLK_RANGE = common dso_local global i64 0, align 8
@Range_Table = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, %struct.TYPE_14__*)* @vegam_get_sclk_range_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vegam_get_sclk_range_table(%struct.pp_hwmgr* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.vegam_smumgr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pp_atom_ctrl_sclk_range_table, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.vegam_smumgr*
  store %struct.vegam_smumgr* %12, %struct.vegam_smumgr** %5, align 8
  %13 = bitcast %struct.pp_atom_ctrl_sclk_range_table* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.amdgpu_device*
  %18 = call i64 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %20 = call i64 @atomctrl_get_smc_sclk_range_table(%struct.pp_hwmgr* %19, %struct.pp_atom_ctrl_sclk_range_table* %8)
  %21 = icmp eq i64 0, %20
  br i1 %21, label %22, label %116

22:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %112, %22
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @NUM_SCLK_RANGE, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %115

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pp_atom_ctrl_sclk_range_table, %struct.pp_atom_ctrl_sclk_range_table* %8, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 4
  store i32 %33, i32* %39, align 8
  %40 = getelementptr inbounds %struct.pp_atom_ctrl_sclk_range_table, %struct.pp_atom_ctrl_sclk_range_table* %8, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i64 %45, i64* %51, align 8
  %52 = getelementptr inbounds %struct.pp_atom_ctrl_sclk_range_table, %struct.pp_atom_ctrl_sclk_range_table* %8, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  store i64 %57, i64* %63, align 8
  %64 = getelementptr inbounds %struct.pp_atom_ctrl_sclk_range_table, %struct.pp_atom_ctrl_sclk_range_table* %8, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  store i64 %69, i64* %75, align 8
  %76 = getelementptr inbounds %struct.pp_atom_ctrl_sclk_range_table, %struct.pp_atom_ctrl_sclk_range_table* %8, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  store i64 %81, i64* %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %102)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %110)
  br label %112

112:                                              ; preds = %27
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %23

115:                                              ; preds = %23
  br label %242

116:                                              ; preds = %2
  store i64 0, i64* %6, align 8
  br label %117

117:                                              ; preds = %239, %116
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* @NUM_SCLK_RANGE, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %242

121:                                              ; preds = %117
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Range_Table, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = mul i64 %122, %127
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Range_Table, align 8
  %130 = load i64, i64* %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = lshr i64 %128, %133
  %135 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %5, align 8
  %136 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = load i64, i64* %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  store i64 %134, i64* %140, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Range_Table, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = mul i64 %141, %146
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Range_Table, align 8
  %149 = load i64, i64* %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = lshr i64 %147, %152
  %154 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %5, align 8
  %155 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %154, i32 0, i32 0
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = load i64, i64* %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  store i64 %153, i64* %159, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Range_Table, align 8
  %161 = load i64, i64* %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = load i64, i64* %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 4
  store i32 %164, i32* %170, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Range_Table, align 8
  %172 = load i64, i64* %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  store i64 %175, i64* %181, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Range_Table, align 8
  %183 = load i64, i64* %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = load i64, i64* %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  store i64 %186, i64* %192, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Range_Table, align 8
  %194 = load i64, i64* %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = load i64, i64* %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  store i64 %197, i64* %203, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** @Range_Table, align 8
  %205 = load i64, i64* %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = load i64, i64* %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 3
  store i64 %208, i64* %214, align 8
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = load i64, i64* %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %221)
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %224, align 8
  %226 = load i64, i64* %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %229)
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %232, align 8
  %234 = load i64, i64* %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i64 %237)
  br label %239

239:                                              ; preds = %121
  %240 = load i64, i64* %6, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %6, align 8
  br label %117

242:                                              ; preds = %115, %117
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @amdgpu_asic_get_xclk(%struct.amdgpu_device*) #2

declare dso_local i64 @atomctrl_get_smc_sclk_range_table(%struct.pp_hwmgr*, %struct.pp_atom_ctrl_sclk_range_table*) #2

declare dso_local i32 @CONVERT_FROM_HOST_TO_SMC_US(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
