; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_processpptables.c_init_powerplay_table_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_processpptables.c_init_powerplay_table_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_8__, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32* }
%struct.phm_ppt_v3_information = type { i64, i32*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@ATOM_VEGA12_PP_THERMALCONTROLLER_NONE = common dso_local global i64 0, align 8
@PHM_PlatformCaps_ThermalController = common dso_local global i32 0, align 4
@PHM_PlatformCaps_MicrocodeFanControl = common dso_local global i32 0, align 4
@ATOM_VEGA12_ODSETTING_GFXCLKFMAX = common dso_local global i64 0, align 8
@VEGA12_ENGINECLOCK_HARDMAX = common dso_local global i64 0, align 8
@ATOM_VEGA12_ODSETTING_UCLKFMAX = common dso_local global i64 0, align 8
@ATOM_VEGA12_ODSETTING_COUNT = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ACOverdriveSupport = common dso_local global i32 0, align 4
@ATOM_VEGA12_ODSETTING_POWERPERCENTAGE = common dso_local global i64 0, align 8
@PHM_PlatformCaps_PowerControl = common dso_local global i32 0, align 4
@ATOM_VEGA12_PPCLOCK_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_9__*)* @init_powerplay_table_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_powerplay_table_information(%struct.pp_hwmgr* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.phm_ppt_v3_information*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.phm_ppt_v3_information*
  store %struct.phm_ppt_v3_information* %12, %struct.phm_ppt_v3_information** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %23 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %25 = load i64, i64* @ATOM_VEGA12_PP_THERMALCONTROLLER_NONE, align 8
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %25, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @PHM_PlatformCaps_ThermalController, align 4
  %33 = call i32 @set_hw_cap(%struct.pp_hwmgr* %24, i32 %31, i32 %32)
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %35 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %39 = call i32 @phm_cap_set(i32 %37, i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @ATOM_VEGA12_ODSETTING_GFXCLKFMAX, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le32_to_cpu(i32 %45)
  %47 = load i64, i64* @VEGA12_ENGINECLOCK_HARDMAX, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %2
  %50 = load i64, i64* @VEGA12_ENGINECLOCK_HARDMAX, align 8
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  br label %67

55:                                               ; preds = %2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @ATOM_VEGA12_ODSETTING_GFXCLKFMAX, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le32_to_cpu(i32 %61)
  %63 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %64 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %55, %49
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @ATOM_VEGA12_ODSETTING_UCLKFMAX, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @le32_to_cpu(i32 %73)
  %75 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %76 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i64 %74, i64* %78, align 8
  %79 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %80 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %81 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %80, i32 0, i32 11
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @ATOM_VEGA12_ODSETTING_COUNT, align 4
  %86 = call i32 @phm_copy_overdrive_settings_limits_array(%struct.pp_hwmgr* %79, i32* %81, i32* %84, i32 %85)
  %87 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %88 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %89 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %88, i32 0, i32 10
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 11
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @ATOM_VEGA12_ODSETTING_COUNT, align 4
  %94 = call i32 @phm_copy_overdrive_settings_limits_array(%struct.pp_hwmgr* %87, i32* %89, i32* %92, i32 %93)
  %95 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %96 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %67
  %102 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %103 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %110 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PHM_PlatformCaps_ACOverdriveSupport, align 4
  %114 = call i32 @phm_cap_set(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %101, %67
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @le16_to_cpu(i32 %118)
  %120 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %121 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %120, i32 0, i32 9
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @le16_to_cpu(i32 %124)
  %126 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %127 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %126, i32 0, i32 8
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @le16_to_cpu(i32 %130)
  %132 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %133 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %132, i32 0, i32 7
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @le16_to_cpu(i32 %136)
  %138 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %139 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %138, i32 0, i32 6
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @le16_to_cpu(i32 %142)
  %144 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %145 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @le16_to_cpu(i32 %148)
  %150 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %151 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @ATOM_VEGA12_ODSETTING_POWERPERCENTAGE, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @le32_to_cpu(i32 %157)
  %159 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %160 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  store i64 %158, i64* %161, align 8
  store i64 0, i64* %7, align 8
  %162 = load i64, i64* %7, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %178, label %164

164:                                              ; preds = %115
  %165 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %166 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %172 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @PHM_PlatformCaps_PowerControl, align 4
  %176 = call i32 @phm_cap_set(i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %170, %164
  br label %178

178:                                              ; preds = %177, %115
  %179 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %180 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %181 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %180, i32 0, i32 3
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ATOM_VEGA12_PPCLOCK_COUNT, align 4
  %186 = call i32 @phm_copy_clock_limits_array(%struct.pp_hwmgr* %179, i32* %181, i32 %184, i32 %185)
  %187 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %188 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %189 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %188, i32 0, i32 2
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @ATOM_VEGA12_PPCLOCK_COUNT, align 4
  %194 = call i32 @phm_copy_clock_limits_array(%struct.pp_hwmgr* %187, i32* %189, i32 %192, i32 %193)
  %195 = load i32, i32* @GFP_KERNEL, align 4
  %196 = call i64 @kmalloc(i32 4, i32 %195)
  %197 = inttoptr i64 %196 to i32*
  %198 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %199 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %198, i32 0, i32 1
  store i32* %197, i32** %199, align 8
  %200 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %201 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %178
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %220

207:                                              ; preds = %178
  %208 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %209 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = call i32 @memcpy(i32* %210, i32* %212, i32 4)
  %214 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %215 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %6, align 8
  %216 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @append_vbios_pptable(%struct.pp_hwmgr* %214, i32* %217)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %207, %204
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @set_hw_cap(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @phm_cap_set(i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @phm_copy_overdrive_settings_limits_array(%struct.pp_hwmgr*, i32*, i32*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @phm_copy_clock_limits_array(%struct.pp_hwmgr*, i32*, i32, i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @append_vbios_pptable(%struct.pp_hwmgr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
