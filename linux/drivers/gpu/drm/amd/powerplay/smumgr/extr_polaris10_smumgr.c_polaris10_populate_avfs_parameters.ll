; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_polaris10_smumgr.c_polaris10_populate_avfs_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_polaris10_smumgr.c_polaris10_populate_avfs_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i32, i32, i64, %struct.amdgpu_device*, i64, i64 }
%struct.amdgpu_device = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.smu7_hwmgr = type { i32, i32 }
%struct.polaris10_smumgr = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8*, i8* }
%struct.pp_atom_ctrl__avfs_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64*, i8*, i8*, i8*, i8*, i8**, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i8**, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64 }

@CHIP_POLARIS12 = common dso_local global i64 0, align 8
@NUM_VFT_COLUMNS = common dso_local global i64 0, align 8
@SMU7_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU74_Firmware_Header = common dso_local global i32 0, align 4
@AvfsMeanNSigma = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@AvfsSclkOffsetTable = common dso_local global i32 0, align 4
@BTCGB0_Vdroop_Enable_SHIFT = common dso_local global i32 0, align 4
@BTCGB1_Vdroop_Enable_SHIFT = common dso_local global i32 0, align 4
@AVFSGB0_Vdroop_Enable_SHIFT = common dso_local global i32 0, align 4
@AVFSGB1_Vdroop_Enable_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @polaris10_populate_avfs_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @polaris10_populate_avfs_parameters(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu7_hwmgr*, align 8
  %5 = alloca %struct.polaris10_smumgr*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pp_atom_ctrl__avfs_parameters, align 4
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.phm_ppt_v1_information*, align 8
  %15 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %19, %struct.smu7_hwmgr** %4, align 8
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.polaris10_smumgr*
  store %struct.polaris10_smumgr* %23, %struct.polaris10_smumgr** %5, align 8
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %25, align 8
  store %struct.amdgpu_device* %26, %struct.amdgpu_device** %6, align 8
  %27 = load %struct.polaris10_smumgr*, %struct.polaris10_smumgr** %5, align 8
  %28 = getelementptr inbounds %struct.polaris10_smumgr, %struct.polaris10_smumgr* %27, i32 0, i32 0
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %7, align 8
  store i32 0, i32* %8, align 4
  %29 = bitcast %struct.pp_atom_ctrl__avfs_parameters* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 104, i1 false)
  %30 = bitcast %struct.TYPE_17__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 56, i1 false)
  %31 = bitcast %struct.TYPE_18__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 16, i1 false)
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %35, %struct.phm_ppt_v1_information** %14, align 8
  %36 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %14, align 8
  %37 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %36, i32 0, i32 0
  %38 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %37, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %38, %struct.phm_ppt_v1_clock_voltage_dependency_table** %15, align 8
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %512

44:                                               ; preds = %1
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %46 = call i32 @atomctrl_get_avfs_information(%struct.pp_hwmgr* %45, %struct.pp_atom_ctrl__avfs_parameters* %9)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 0, %47
  br i1 %48, label %49, label %260

49:                                               ; preds = %44
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 26607
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 224
  br i1 %62, label %98, label %63

63:                                               ; preds = %56
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 229
  br i1 %69, label %98, label %70

70:                                               ; preds = %63, %49
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 26623
  br i1 %76, label %77, label %160

77:                                               ; preds = %70
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 207
  br i1 %83, label %98, label %84

84:                                               ; preds = %77
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 239
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 255
  br i1 %97, label %98, label %160

98:                                               ; preds = %91, %84, %77, %63, %56
  %99 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 26607
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 229
  br i1 %112, label %127, label %113

113:                                              ; preds = %106, %98
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 26623
  br i1 %119, label %120, label %159

120:                                              ; preds = %113
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %122 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %121, i32 0, i32 0
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 239
  br i1 %126, label %127, label %159

127:                                              ; preds = %120, %106
  %128 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, -363713069
  br i1 %130, label %131, label %158

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 353370
  br i1 %134, label %135, label %158

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 212894
  br i1 %138, label %139, label %158

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, -14900
  br i1 %142, label %143, label %158

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 6938
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, -787
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 1
  store i32 -149360172, i32* %152, align 4
  %153 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 2
  store i32 205821, i32* %153, align 4
  %154 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 3
  store i32 123989, i32* %154, align 4
  %155 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 4
  store i32 0, i32* %155, align 4
  %156 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 5
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 6
  store i32 35, i32* %157, align 4
  br label %158

158:                                              ; preds = %151, %147, %143, %139, %135, %131, %127
  br label %159

159:                                              ; preds = %158, %120, %113
  br label %259

160:                                              ; preds = %91, %70
  %161 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %162 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @CHIP_POLARIS12, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %179

166:                                              ; preds = %160
  %167 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %168 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 0
  store i32 1, i32* %172, align 4
  %173 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 1
  store i32 -156228387, i32* %173, align 4
  %174 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 2
  store i32 196702, i32* %174, align 4
  %175 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 3
  store i32 100959, i32* %175, align 4
  %176 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 4
  store i32 789, i32* %176, align 4
  %177 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 5
  store i32 65233, i32* %177, align 4
  %178 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 6
  store i32 59, i32* %178, align 4
  br label %258

179:                                              ; preds = %166, %160
  %180 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %181 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %180, i32 0, i32 0
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 26591
  br i1 %185, label %186, label %228

186:                                              ; preds = %179
  %187 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %188 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %187, i32 0, i32 0
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 224
  br i1 %192, label %249, label %193

193:                                              ; preds = %186
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %195 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %194, i32 0, i32 0
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 227
  br i1 %199, label %249, label %200

200:                                              ; preds = %193
  %201 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %202 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %201, i32 0, i32 0
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 228
  br i1 %206, label %249, label %207

207:                                              ; preds = %200
  %208 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %209 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %208, i32 0, i32 0
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 229
  br i1 %213, label %249, label %214

214:                                              ; preds = %207
  %215 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %216 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %215, i32 0, i32 0
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 231
  br i1 %220, label %249, label %221

221:                                              ; preds = %214
  %222 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %223 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %222, i32 0, i32 0
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 239
  br i1 %227, label %249, label %228

228:                                              ; preds = %221, %179
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %230 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %229, i32 0, i32 0
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 28639
  br i1 %234, label %235, label %257

235:                                              ; preds = %228
  %236 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %237 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %236, i32 0, i32 0
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 239
  br i1 %241, label %249, label %242

242:                                              ; preds = %235
  %243 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %244 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %243, i32 0, i32 0
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 255
  br i1 %248, label %249, label %257

249:                                              ; preds = %242, %235, %221, %214, %207, %200, %193, %186
  %250 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 0
  store i32 1, i32* %250, align 4
  %251 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 1
  store i32 -129780117, i32* %251, align 4
  %252 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 2
  store i32 367797, i32* %252, align 4
  %253 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 3
  store i32 -55169, i32* %253, align 4
  %254 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 4
  store i32 0, i32* %254, align 4
  %255 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 5
  store i32 65315, i32* %255, align 4
  %256 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 6
  store i32 88, i32* %256, align 4
  br label %257

257:                                              ; preds = %249, %242, %228
  br label %258

258:                                              ; preds = %257, %171
  br label %259

259:                                              ; preds = %258, %159
  br label %260

260:                                              ; preds = %259, %44
  %261 = load i32, i32* %8, align 4
  %262 = icmp eq i32 0, %261
  br i1 %262, label %263, label %510

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 7
  %265 = load i32, i32* %264, align 4
  %266 = call i8* @PP_HOST_TO_SMC_UL(i32 %265)
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 2
  store i8* %266, i8** %271, align 8
  %272 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 8
  %273 = load i32, i32* %272, align 4
  %274 = call i8* @PP_HOST_TO_SMC_UL(i32 %273)
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 1
  store i8* %274, i8** %279, align 8
  %280 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 9
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @PP_HOST_TO_SMC_UL(i32 %281)
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i64 0
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  store i8* %282, i8** %287, align 8
  %288 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call i8* @PP_HOST_TO_SMC_UL(i32 %289)
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i64 1
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 2
  store i8* %290, i8** %295, align 8
  %296 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = call i8* @PP_HOST_TO_SMC_UL(i32 %297)
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i64 1
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 1
  store i8* %298, i8** %303, align 8
  %304 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = call i8* @PP_HOST_TO_SMC_UL(i32 %305)
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i64 1
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  store i8* %306, i8** %311, align 8
  %312 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 10
  %313 = load i32, i32* %312, align 4
  %314 = call i8* @PP_HOST_TO_SMC_UL(i32 %313)
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i64 0
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 4
  store i8* %314, i8** %319, align 8
  %320 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 11
  %321 = load i32, i32* %320, align 4
  %322 = call i8* @PP_HOST_TO_SMC_US(i32 %321)
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i64 0
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 3
  store i8* %322, i8** %327, align 8
  %328 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 12
  %329 = load i32, i32* %328, align 4
  %330 = call i8* @PP_HOST_TO_SMC_UL(i32 %329)
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i64 0
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 2
  store i8* %330, i8** %335, align 8
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i64 0
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 0
  store i32 24, i32* %340, align 8
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i64 0
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 1
  store i32 12, i32* %345, align 4
  %346 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = call i8* @PP_HOST_TO_SMC_UL(i32 %347)
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i64 1
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 4
  store i8* %348, i8** %353, align 8
  %354 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 5
  %355 = load i32, i32* %354, align 4
  %356 = call i8* @PP_HOST_TO_SMC_US(i32 %355)
  %357 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 1
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i64 1
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 3
  store i8* %356, i8** %361, align 8
  %362 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 6
  %363 = load i32, i32* %362, align 4
  %364 = call i8* @PP_HOST_TO_SMC_UL(i32 %363)
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i64 1
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 2
  store i8* %364, i8** %369, align 8
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i64 1
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 0
  store i32 24, i32* %374, align 8
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_11__*, %struct.TYPE_11__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i64 1
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i32 0, i32 1
  store i32 12, i32* %379, align 4
  %380 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 13
  %381 = load i32, i32* %380, align 4
  %382 = call i8* @PP_HOST_TO_SMC_US(i32 %381)
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 0
  store i8* %382, i8** %384, align 8
  %385 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 14
  %386 = load i32, i32* %385, align 4
  %387 = call i8* @PP_HOST_TO_SMC_UL(i32 %386)
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  %389 = load i8**, i8*** %388, align 8
  %390 = getelementptr inbounds i8*, i8** %389, i64 0
  store i8* %387, i8** %390, align 8
  %391 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 15
  %392 = load i32, i32* %391, align 4
  %393 = call i8* @PP_HOST_TO_SMC_UL(i32 %392)
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  %395 = load i8**, i8*** %394, align 8
  %396 = getelementptr inbounds i8*, i8** %395, i64 1
  store i8* %393, i8** %396, align 8
  %397 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 16
  %398 = load i32, i32* %397, align 4
  %399 = call i8* @PP_HOST_TO_SMC_UL(i32 %398)
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  %401 = load i8**, i8*** %400, align 8
  %402 = getelementptr inbounds i8*, i8** %401, i64 2
  store i8* %399, i8** %402, align 8
  %403 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 17
  %404 = load i32, i32* %403, align 4
  %405 = call i8* @PP_HOST_TO_SMC_US(i32 %404)
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  store i8* %405, i8** %406, align 8
  %407 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 18
  %408 = load i32, i32* %407, align 4
  %409 = call i8* @PP_HOST_TO_SMC_US(i32 %408)
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i8* %409, i8** %410, align 8
  %411 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 19
  %412 = load i32, i32* %411, align 4
  %413 = call i8* @PP_HOST_TO_SMC_US(i32 %412)
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i8* %413, i8** %414, align 8
  %415 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 20
  %416 = load i32, i32* %415, align 4
  %417 = call i8* @PP_HOST_TO_SMC_US(i32 %416)
  %418 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i8* %417, i8** %418, align 8
  store i64 0, i64* %13, align 8
  br label %419

419:                                              ; preds = %452, %263
  %420 = load i64, i64* %13, align 8
  %421 = load i64, i64* @NUM_VFT_COLUMNS, align 8
  %422 = icmp ult i64 %420, %421
  br i1 %422, label %423, label %455

423:                                              ; preds = %419
  %424 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %15, align 8
  %425 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %424, i32 0, i32 0
  %426 = load %struct.TYPE_12__*, %struct.TYPE_12__** %425, align 8
  %427 = load i64, i64* %13, align 8
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %426, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = mul nsw i32 %430, 100
  %432 = sdiv i32 %431, 625
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %435 = load i64*, i64** %434, align 8
  %436 = load i64, i64* %13, align 8
  %437 = getelementptr inbounds i64, i64* %435, i64 %436
  store i64 %433, i64* %437, align 8
  %438 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %15, align 8
  %439 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %438, i32 0, i32 0
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %439, align 8
  %441 = load i64, i64* %13, align 8
  %442 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = trunc i64 %444 to i32
  %446 = sdiv i32 %445, 100
  %447 = call i8* @PP_HOST_TO_SMC_US(i32 %446)
  %448 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %449 = load i8**, i8*** %448, align 8
  %450 = load i64, i64* %13, align 8
  %451 = getelementptr inbounds i8*, i8** %449, i64 %450
  store i8* %447, i8** %451, align 8
  br label %452

452:                                              ; preds = %423
  %453 = load i64, i64* %13, align 8
  %454 = add i64 %453, 1
  store i64 %454, i64* %13, align 8
  br label %419

455:                                              ; preds = %419
  %456 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %457 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %458 = load i32, i32* @SMU74_Firmware_Header, align 4
  %459 = load i32, i32* @AvfsMeanNSigma, align 4
  %460 = call i64 @offsetof(i32 %458, i32 %459)
  %461 = add nsw i64 %457, %460
  %462 = load i32, i32* @SMC_RAM_END, align 4
  %463 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %456, i64 %461, i64* %12, i32 %462)
  store i32 %463, i32* %8, align 4
  %464 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %465 = load i64, i64* %12, align 8
  %466 = bitcast %struct.TYPE_17__* %10 to i64*
  %467 = load i32, i32* @SMC_RAM_END, align 4
  %468 = call i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr* %464, i64 %465, i64* %466, i32 56, i32 %467)
  %469 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %470 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %471 = load i32, i32* @SMU74_Firmware_Header, align 4
  %472 = load i32, i32* @AvfsSclkOffsetTable, align 4
  %473 = call i64 @offsetof(i32 %471, i32 %472)
  %474 = add nsw i64 %470, %473
  %475 = load i32, i32* @SMC_RAM_END, align 4
  %476 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %469, i64 %474, i64* %12, i32 %475)
  store i32 %476, i32* %8, align 4
  %477 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %478 = load i64, i64* %12, align 8
  %479 = bitcast %struct.TYPE_18__* %11 to i64*
  %480 = load i32, i32* @SMC_RAM_END, align 4
  %481 = call i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr* %477, i64 %478, i64* %479, i32 16, i32 %480)
  %482 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 21
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @BTCGB0_Vdroop_Enable_SHIFT, align 4
  %485 = shl i32 %483, %484
  %486 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 22
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @BTCGB1_Vdroop_Enable_SHIFT, align 4
  %489 = shl i32 %487, %488
  %490 = or i32 %485, %489
  %491 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 23
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @AVFSGB0_Vdroop_Enable_SHIFT, align 4
  %494 = shl i32 %492, %493
  %495 = or i32 %490, %494
  %496 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 24
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @AVFSGB1_Vdroop_Enable_SHIFT, align 4
  %499 = shl i32 %497, %498
  %500 = or i32 %495, %499
  %501 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %502 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %501, i32 0, i32 0
  store i32 %500, i32* %502, align 4
  %503 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %9, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = icmp eq i32 %504, 1
  %506 = zext i1 %505 to i64
  %507 = select i1 %505, i32 1, i32 0
  %508 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %509 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %508, i32 0, i32 1
  store i32 %507, i32* %509, align 4
  br label %510

510:                                              ; preds = %455, %260
  %511 = load i32, i32* %8, align 4
  store i32 %511, i32* %2, align 4
  br label %512

512:                                              ; preds = %510, %43
  %513 = load i32, i32* %2, align 4
  ret i32 %513
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @atomctrl_get_avfs_information(%struct.pp_hwmgr*, %struct.pp_atom_ctrl__avfs_parameters*) #2

declare dso_local i8* @PP_HOST_TO_SMC_UL(i32) #2

declare dso_local i8* @PP_HOST_TO_SMC_US(i32) #2

declare dso_local i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr*, i64, i64*, i32) #2

declare dso_local i64 @offsetof(i32, i32) #2

declare dso_local i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr*, i64, i64*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
