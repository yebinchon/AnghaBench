; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_populate_avfs_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_populate_avfs_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64, i64, i64 }
%struct.smu7_hwmgr = type { i32, i32 }
%struct.vegam_smumgr = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8*, i8* }
%struct.pp_atom_ctrl__avfs_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64*, i8*, i8*, i8*, i8*, i8**, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_16__ = type { i8**, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }

@SMU7_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU75_Firmware_Header = common dso_local global i32 0, align 4
@AvfsMeanNSigma = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@AvfsSclkOffsetTable = common dso_local global i32 0, align 4
@BTCGB0_Vdroop_Enable_SHIFT = common dso_local global i32 0, align 4
@BTCGB1_Vdroop_Enable_SHIFT = common dso_local global i32 0, align 4
@AVFSGB0_Vdroop_Enable_SHIFT = common dso_local global i32 0, align 4
@AVFSGB1_Vdroop_Enable_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vegam_populate_avfs_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vegam_populate_avfs_parameters(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu7_hwmgr*, align 8
  %5 = alloca %struct.vegam_smumgr*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pp_atom_ctrl__avfs_parameters, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.phm_ppt_v1_information*, align 8
  %14 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %18, %struct.smu7_hwmgr** %4, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.vegam_smumgr*
  store %struct.vegam_smumgr* %22, %struct.vegam_smumgr** %5, align 8
  %23 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %5, align 8
  %24 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %23, i32 0, i32 0
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %6, align 8
  store i32 0, i32* %7, align 4
  %25 = bitcast %struct.pp_atom_ctrl__avfs_parameters* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 104, i1 false)
  %26 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 56, i1 false)
  %27 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 16, i1 false)
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %31, %struct.phm_ppt_v1_information** %13, align 8
  %32 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %13, align 8
  %33 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %32, i32 0, i32 0
  %34 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %33, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %34, %struct.phm_ppt_v1_clock_voltage_dependency_table** %14, align 8
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %296

40:                                               ; preds = %1
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %42 = call i32 @atomctrl_get_avfs_information(%struct.pp_hwmgr* %41, %struct.pp_atom_ctrl__avfs_parameters* %8)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 0, %43
  br i1 %44, label %45, label %294

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 24
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @PP_HOST_TO_SMC_UL(i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  store i8* %48, i8** %53, align 8
  %54 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 23
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @PP_HOST_TO_SMC_UL(i32 %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i8* %56, i8** %61, align 8
  %62 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 22
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @PP_HOST_TO_SMC_UL(i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i8* %64, i8** %69, align 8
  %70 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 21
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @PP_HOST_TO_SMC_UL(i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  store i8* %72, i8** %77, align 8
  %78 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 20
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @PP_HOST_TO_SMC_UL(i32 %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  store i8* %80, i8** %85, align 8
  %86 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 19
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @PP_HOST_TO_SMC_UL(i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i8* %88, i8** %93, align 8
  %94 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 18
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @PP_HOST_TO_SMC_UL(i32 %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  store i8* %96, i8** %101, align 8
  %102 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @PP_HOST_TO_SMC_US(i32 %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  store i8* %104, i8** %109, align 8
  %110 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 17
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @PP_HOST_TO_SMC_UL(i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  store i8* %112, i8** %117, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i32 24, i32* %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  store i32 12, i32* %127, align 4
  %128 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 16
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @PP_HOST_TO_SMC_UL(i32 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i64 1
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 4
  store i8* %130, i8** %135, align 8
  %136 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @PP_HOST_TO_SMC_US(i32 %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  store i8* %138, i8** %143, align 8
  %144 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 15
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @PP_HOST_TO_SMC_UL(i32 %145)
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i64 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  store i8* %146, i8** %151, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  store i32 24, i32* %156, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  store i32 12, i32* %161, align 4
  %162 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @PP_HOST_TO_SMC_US(i32 %163)
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  %167 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 14
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @PP_HOST_TO_SMC_UL(i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 5
  %171 = load i8**, i8*** %170, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  store i8* %169, i8** %172, align 8
  %173 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 13
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @PP_HOST_TO_SMC_UL(i32 %174)
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 5
  %177 = load i8**, i8*** %176, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 1
  store i8* %175, i8** %178, align 8
  %179 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 12
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @PP_HOST_TO_SMC_UL(i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 5
  %183 = load i8**, i8*** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 2
  store i8* %181, i8** %184, align 8
  %185 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @PP_HOST_TO_SMC_US(i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  store i8* %187, i8** %188, align 8
  %189 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @PP_HOST_TO_SMC_US(i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  store i8* %191, i8** %192, align 8
  %193 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @PP_HOST_TO_SMC_US(i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  store i8* %195, i8** %196, align 8
  %197 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = call i8* @PP_HOST_TO_SMC_US(i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i8* %199, i8** %200, align 8
  store i64 0, i64* %12, align 8
  br label %201

201:                                              ; preds = %236, %45
  %202 = load i64, i64* %12, align 8
  %203 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %14, align 8
  %204 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ult i64 %202, %205
  br i1 %206, label %207, label %239

207:                                              ; preds = %201
  %208 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %14, align 8
  %209 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %208, i32 0, i32 1
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %209, align 8
  %211 = load i64, i64* %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = mul nsw i32 %214, 100
  %216 = sdiv i32 %215, 625
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load i64, i64* %12, align 8
  %221 = getelementptr inbounds i64, i64* %219, i64 %220
  store i64 %217, i64* %221, align 8
  %222 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %14, align 8
  %223 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %222, i32 0, i32 1
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = load i64, i64* %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = trunc i64 %228 to i32
  %230 = sdiv i32 %229, 100
  %231 = call i8* @PP_HOST_TO_SMC_US(i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %233 = load i8**, i8*** %232, align 8
  %234 = load i64, i64* %12, align 8
  %235 = getelementptr inbounds i8*, i8** %233, i64 %234
  store i8* %231, i8** %235, align 8
  br label %236

236:                                              ; preds = %207
  %237 = load i64, i64* %12, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %12, align 8
  br label %201

239:                                              ; preds = %201
  %240 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %241 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %242 = load i32, i32* @SMU75_Firmware_Header, align 4
  %243 = load i32, i32* @AvfsMeanNSigma, align 4
  %244 = call i64 @offsetof(i32 %242, i32 %243)
  %245 = add nsw i64 %241, %244
  %246 = load i32, i32* @SMC_RAM_END, align 4
  %247 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %240, i64 %245, i64* %11, i32 %246)
  store i32 %247, i32* %7, align 4
  %248 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %249 = load i64, i64* %11, align 8
  %250 = bitcast %struct.TYPE_15__* %9 to i64*
  %251 = load i32, i32* @SMC_RAM_END, align 4
  %252 = call i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr* %248, i64 %249, i64* %250, i32 56, i32 %251)
  %253 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %254 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %255 = load i32, i32* @SMU75_Firmware_Header, align 4
  %256 = load i32, i32* @AvfsSclkOffsetTable, align 4
  %257 = call i64 @offsetof(i32 %255, i32 %256)
  %258 = add nsw i64 %254, %257
  %259 = load i32, i32* @SMC_RAM_END, align 4
  %260 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %253, i64 %258, i64* %11, i32 %259)
  store i32 %260, i32* %7, align 4
  %261 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %262 = load i64, i64* %11, align 8
  %263 = bitcast %struct.TYPE_16__* %10 to i64*
  %264 = load i32, i32* @SMC_RAM_END, align 4
  %265 = call i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr* %261, i64 %262, i64* %263, i32 16, i32 %264)
  %266 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 7
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @BTCGB0_Vdroop_Enable_SHIFT, align 4
  %269 = shl i32 %267, %268
  %270 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 8
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @BTCGB1_Vdroop_Enable_SHIFT, align 4
  %273 = shl i32 %271, %272
  %274 = or i32 %269, %273
  %275 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 9
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @AVFSGB0_Vdroop_Enable_SHIFT, align 4
  %278 = shl i32 %276, %277
  %279 = or i32 %274, %278
  %280 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 10
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @AVFSGB1_Vdroop_Enable_SHIFT, align 4
  %283 = shl i32 %281, %282
  %284 = or i32 %279, %283
  %285 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %286 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 4
  %287 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %8, i32 0, i32 11
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 1
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i32 1, i32 0
  %292 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %293 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 4
  br label %294

294:                                              ; preds = %239, %40
  %295 = load i32, i32* %7, align 4
  store i32 %295, i32* %2, align 4
  br label %296

296:                                              ; preds = %294, %39
  %297 = load i32, i32* %2, align 4
  ret i32 %297
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
