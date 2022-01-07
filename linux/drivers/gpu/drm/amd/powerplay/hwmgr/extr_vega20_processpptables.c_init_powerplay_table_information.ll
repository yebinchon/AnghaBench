; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_processpptables.c_init_powerplay_table_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_processpptables.c_init_powerplay_table_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_12__, %struct.TYPE_10__, i64 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, i32*, i32, i32, i32 }
%struct.phm_ppt_v3_information = type { i64, i32*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@ATOM_VEGA20_PP_THERMALCONTROLLER_NONE = common dso_local global i64 0, align 8
@PHM_PlatformCaps_ThermalController = common dso_local global i32 0, align 4
@PHM_PlatformCaps_MicrocodeFanControl = common dso_local global i32 0, align 4
@ATOM_VEGA20_ODFEATURE_COUNT = common dso_local global i64 0, align 8
@ATOM_VEGA20_ODSETTING_COUNT = common dso_local global i64 0, align 8
@ATOM_VEGA20_ODSETTING_POWERPERCENTAGE = common dso_local global i64 0, align 8
@PHM_PlatformCaps_PowerControl = common dso_local global i32 0, align 4
@ATOM_VEGA20_PPCLOCK_COUNT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_14__*)* @init_powerplay_table_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_powerplay_table_information(%struct.pp_hwmgr* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.phm_ppt_v3_information*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.phm_ppt_v3_information*
  store %struct.phm_ppt_v3_information* %15, %struct.phm_ppt_v3_information** %6, align 8
  store i64 0, i64* %7, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %26 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %28 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %40 = load i64, i64* @ATOM_VEGA20_PP_THERMALCONTROLLER_NONE, align 8
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %42 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @PHM_PlatformCaps_ThermalController, align 4
  %48 = call i32 @set_hw_cap(%struct.pp_hwmgr* %39, i32 %46, i32 %47)
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %50 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %54 = call i32 @phm_cap_set(i32 %52, i32 %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %122

60:                                               ; preds = %2
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @le32_to_cpu(i32 %64)
  %66 = load i64, i64* @ATOM_VEGA20_ODFEATURE_COUNT, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i64, i64* @ATOM_VEGA20_ODFEATURE_COUNT, align 8
  br label %76

70:                                               ; preds = %60
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @le32_to_cpu(i32 %74)
  br label %76

76:                                               ; preds = %70, %68
  %77 = phi i64 [ %69, %68 ], [ %75, %70 ]
  store i64 %77, i64* %8, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @le32_to_cpu(i32 %81)
  %83 = load i64, i64* @ATOM_VEGA20_ODSETTING_COUNT, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i64, i64* @ATOM_VEGA20_ODSETTING_COUNT, align 8
  br label %93

87:                                               ; preds = %76
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le32_to_cpu(i32 %91)
  br label %93

93:                                               ; preds = %87, %85
  %94 = phi i64 [ %86, %85 ], [ %92, %87 ]
  store i64 %94, i64* %9, align 8
  %95 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %96 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %97 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %96, i32 0, i32 12
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @copy_overdrive_feature_capabilities_array(%struct.pp_hwmgr* %95, i32* %97, i32 %101, i64 %102)
  %104 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %105 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %106 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %105, i32 0, i32 11
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @phm_copy_overdrive_settings_limits_array(%struct.pp_hwmgr* %104, i32* %106, i32* %110, i64 %111)
  %113 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %114 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %115 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %114, i32 0, i32 10
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @phm_copy_overdrive_settings_limits_array(%struct.pp_hwmgr* %113, i32* %115, i32* %119, i64 %120)
  br label %122

122:                                              ; preds = %93, %2
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @le16_to_cpu(i32 %125)
  %127 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %128 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %127, i32 0, i32 9
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = call i8* @le16_to_cpu(i32 %131)
  %133 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %134 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %133, i32 0, i32 8
  store i8* %132, i8** %134, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @le16_to_cpu(i32 %137)
  %139 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %140 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %139, i32 0, i32 7
  store i8* %138, i8** %140, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @le16_to_cpu(i32 %143)
  %145 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %146 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %145, i32 0, i32 6
  store i8* %144, i8** %146, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @le16_to_cpu(i32 %149)
  %151 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %152 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %151, i32 0, i32 5
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @le16_to_cpu(i32 %155)
  %157 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %158 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @ATOM_VEGA20_ODSETTING_POWERPERCENTAGE, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @le32_to_cpu(i32 %165)
  %167 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %168 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  store i64 %166, i64* %169, align 8
  store i64 0, i64* %7, align 8
  %170 = load i64, i64* %7, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %185, label %172

172:                                              ; preds = %122
  %173 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %174 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %180 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @PHM_PlatformCaps_PowerControl, align 4
  %184 = call i32 @phm_cap_set(i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %178, %172, %122
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %227

191:                                              ; preds = %185
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @le32_to_cpu(i32 %195)
  %197 = load i64, i64* @ATOM_VEGA20_PPCLOCK_COUNT, align 8
  %198 = icmp sge i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %191
  %200 = load i64, i64* @ATOM_VEGA20_PPCLOCK_COUNT, align 8
  br label %207

201:                                              ; preds = %191
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @le32_to_cpu(i32 %205)
  br label %207

207:                                              ; preds = %201, %199
  %208 = phi i64 [ %200, %199 ], [ %206, %201 ]
  store i64 %208, i64* %10, align 8
  %209 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %210 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %211 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %210, i32 0, i32 3
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load i64, i64* %10, align 8
  %217 = call i32 @phm_copy_clock_limits_array(%struct.pp_hwmgr* %209, i32* %211, i32 %215, i64 %216)
  %218 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %219 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %220 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %219, i32 0, i32 2
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i64, i64* %10, align 8
  %226 = call i32 @phm_copy_clock_limits_array(%struct.pp_hwmgr* %218, i32* %220, i32 %224, i64 %225)
  br label %227

227:                                              ; preds = %207, %185
  %228 = load i32, i32* @GFP_KERNEL, align 4
  %229 = call i64 @kmalloc(i32 4, i32 %228)
  %230 = inttoptr i64 %229 to i32*
  %231 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %232 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %231, i32 0, i32 1
  store i32* %230, i32** %232, align 8
  %233 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %234 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = icmp eq i32* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %227
  %238 = load i32, i32* @ENOMEM, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %3, align 4
  br label %260

240:                                              ; preds = %227
  %241 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %242 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  %246 = call i32 @memcpy(i32* %243, %struct.TYPE_15__* %245, i32 4)
  %247 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %248 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %249 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @append_vbios_pptable(%struct.pp_hwmgr* %247, i32* %250)
  store i32 %251, i32* %11, align 4
  %252 = load i32, i32* %11, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %240
  %255 = load i32, i32* %11, align 4
  store i32 %255, i32* %3, align 4
  br label %260

256:                                              ; preds = %240
  %257 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %258 = call i32 @override_powerplay_table_fantargettemperature(%struct.pp_hwmgr* %257)
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %11, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %256, %254, %237
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @set_hw_cap(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @phm_cap_set(i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @copy_overdrive_feature_capabilities_array(%struct.pp_hwmgr*, i32*, i32, i64) #1

declare dso_local i32 @phm_copy_overdrive_settings_limits_array(%struct.pp_hwmgr*, i32*, i32*, i64) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @phm_copy_clock_limits_array(%struct.pp_hwmgr*, i32*, i32, i64) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @append_vbios_pptable(%struct.pp_hwmgr*, i32*) #1

declare dso_local i32 @override_powerplay_table_fantargettemperature(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
