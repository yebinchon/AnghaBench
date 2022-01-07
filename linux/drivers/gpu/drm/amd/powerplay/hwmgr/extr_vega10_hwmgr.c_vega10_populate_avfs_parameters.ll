; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_avfs_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_avfs_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_12__*, i64, i64, i64, i64, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__*, i64*, %struct.TYPE_18__, i32, %struct.TYPE_17__, %struct.TYPE_16__, i32, %struct.TYPE_15__, i8*, i8*, i8*, i8*, i8**, i8*, i8* }
%struct.TYPE_22__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_18__ = type { i32, i32, i64, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i32, i32, i64, i8*, i8*, i8* }
%struct.TYPE_16__ = type { i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i8*, i8*, i8* }
%struct.phm_ppt_v2_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.pp_atomfwctrl_avfs_parameters = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@GNLD_AVFS = common dso_local global i64 0, align 8
@PPREGKEY_VEGA10QUADRATICEQUATION_DFLT = common dso_local global i64 0, align 8
@DSPCLK_DISPCLK = common dso_local global i64 0, align 8
@DSPCLK_DCEFCLK = common dso_local global i64 0, align 8
@DSPCLK_PIXCLK = common dso_local global i64 0, align 8
@DSPCLK_PHYCLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_populate_avfs_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_populate_avfs_parameters(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.phm_ppt_v2_information*, align 8
  %6 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %7 = alloca %struct.pp_atomfwctrl_avfs_parameters, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 1
  %12 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %11, align 8
  store %struct.vega10_hwmgr* %12, %struct.vega10_hwmgr** %3, align 8
  %13 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %13, i32 0, i32 13
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %19, %struct.phm_ppt_v2_information** %5, align 8
  %20 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %5, align 8
  %21 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %20, i32 0, i32 0
  %22 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %21, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %22, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %23 = bitcast %struct.pp_atomfwctrl_avfs_parameters* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 224, i1 false)
  store i32 0, i32* %8, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 16
  store i8* inttoptr (i64 255 to i8*), i8** %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 15
  store i8* null, i8** %27, align 8
  %28 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %29 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %28, i32 0, i32 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load i64, i64* @GNLD_AVFS, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %650

36:                                               ; preds = %1
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %38 = call i32 @pp_atomfwctrl_get_avfs_information(%struct.pp_hwmgr* %37, %struct.pp_atomfwctrl_avfs_parameters* %7)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %642, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 39
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i64 @convert_to_vid(i8* %44)
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 16
  store i8* %46, i8** %48, align 8
  %49 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 38
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i64 @convert_to_vid(i8* %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 15
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 37
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 14
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  store i8* %58, i8** %62, align 8
  %63 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 36
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 14
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  store i8* %65, i8** %69, align 8
  %70 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 35
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 14
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 2
  store i8* %72, i8** %76, align 8
  %77 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 33
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @cpu_to_le16(i32 %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 13
  store i8* %79, i8** %81, align 8
  %82 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 34
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 12
  store i8* %84, i8** %86, align 8
  %87 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 33
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @cpu_to_le16(i32 %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 11
  store i8* %89, i8** %91, align 8
  %92 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 32
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @cpu_to_le16(i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 10
  store i8* %94, i8** %96, align 8
  %97 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 31
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 5
  store i8* %99, i8** %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 9
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  store i32 20, i32* %105, align 8
  %106 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 30
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  store i8* %108, i8** %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 9
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  store i32 20, i32* %114, align 4
  %115 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 29
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @cpu_to_le32(i32 %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 9
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  store i8* %117, i8** %120, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 9
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  store i32 20, i32* %123, align 8
  %124 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 28
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 8
  %128 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 27
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @cpu_to_le32(i32 %129)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 5
  store i8* %130, i8** %133, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  store i32 20, i32* %136, align 8
  %137 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 26
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @cpu_to_le32(i32 %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 7
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 4
  store i8* %139, i8** %142, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  store i32 20, i32* %145, align 4
  %146 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 25
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @cpu_to_le32(i32 %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  store i8* %148, i8** %151, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 2
  store i32 20, i32* %154, align 8
  %155 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 24
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @cpu_to_le32(i32 %156)
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 5
  store i8* %157, i8** %160, align 8
  %161 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 23
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @cpu_to_le32(i32 %162)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 4
  store i8* %163, i8** %166, align 8
  %167 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 22
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @cpu_to_le32(i32 %168)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 3
  store i8* %169, i8** %172, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  store i32 24, i32* %175, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 6
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  store i32 12, i32* %178, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 2
  store i64 0, i64* %181, align 8
  %182 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 21
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 8
  %186 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 20
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @cpu_to_le32(i32 %187)
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 5
  store i8* %188, i8** %191, align 8
  %192 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 19
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @cpu_to_le32(i32 %193)
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 4
  store i8* %194, i8** %197, align 8
  %198 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 18
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @cpu_to_le32(i32 %199)
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 3
  store i8* %200, i8** %203, align 8
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  store i32 24, i32* %206, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 1
  store i32 12, i32* %209, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 2
  store i64 0, i64* %212, align 8
  store i64 0, i64* %9, align 8
  br label %213

213:                                              ; preds = %234, %41
  %214 = load i64, i64* %9, align 8
  %215 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %216 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ult i64 %214, %217
  br i1 %218, label %219, label %237

219:                                              ; preds = %213
  %220 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %221 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %220, i32 0, i32 1
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %221, align 8
  %223 = load i64, i64* %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to i8*
  %228 = call i64 @convert_to_vid(i8* %227)
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 3
  %231 = load i64*, i64** %230, align 8
  %232 = load i64, i64* %9, align 8
  %233 = getelementptr inbounds i64, i64* %231, i64 %232
  store i64 %228, i64* %233, align 8
  br label %234

234:                                              ; preds = %219
  %235 = load i64, i64* %9, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %9, align 8
  br label %213

237:                                              ; preds = %213
  %238 = load i64, i64* @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %239 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %240 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %238, %241
  br i1 %242, label %243, label %280

243:                                              ; preds = %237
  %244 = load i64, i64* @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %245 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %246 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %244, %247
  br i1 %248, label %249, label %280

249:                                              ; preds = %243
  %250 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %251 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = inttoptr i64 %252 to i8*
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %255, align 8
  %257 = load i64, i64* @DSPCLK_DISPCLK, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 5
  store i8* %253, i8** %259, align 8
  %260 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %261 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = inttoptr i64 %262 to i8*
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %265, align 8
  %267 = load i64, i64* @DSPCLK_DISPCLK, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 4
  store i8* %263, i8** %269, align 8
  %270 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %271 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %270, i32 0, i32 12
  %272 = load i64, i64* %271, align 8
  %273 = inttoptr i64 %272 to i8*
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %275, align 8
  %277 = load i64, i64* @DSPCLK_DISPCLK, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 3
  store i8* %273, i8** %279, align 8
  br label %308

280:                                              ; preds = %243, %237
  %281 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 17
  %282 = load i64, i64* %281, align 8
  %283 = inttoptr i64 %282 to i8*
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 2
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %285, align 8
  %287 = load i64, i64* @DSPCLK_DISPCLK, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 5
  store i8* %283, i8** %289, align 8
  %290 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 16
  %291 = load i64, i64* %290, align 8
  %292 = inttoptr i64 %291 to i8*
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %294, align 8
  %296 = load i64, i64* @DSPCLK_DISPCLK, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 4
  store i8* %292, i8** %298, align 8
  %299 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 15
  %300 = load i64, i64* %299, align 8
  %301 = inttoptr i64 %300 to i8*
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %303, align 8
  %305 = load i64, i64* @DSPCLK_DISPCLK, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 3
  store i8* %301, i8** %307, align 8
  br label %308

308:                                              ; preds = %280, %249
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 2
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %310, align 8
  %312 = load i64, i64* @DSPCLK_DISPCLK, align 8
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 0
  store i32 24, i32* %314, align 8
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 2
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %316, align 8
  %318 = load i64, i64* @DSPCLK_DISPCLK, align 8
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 1
  store i32 12, i32* %320, align 4
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %322, align 8
  %324 = load i64, i64* @DSPCLK_DISPCLK, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 2
  store i32 12, i32* %326, align 8
  %327 = load i64, i64* @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %328 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %329 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %327, %330
  br i1 %331, label %332, label %369

332:                                              ; preds = %308
  %333 = load i64, i64* @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %334 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %335 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %333, %336
  br i1 %337, label %338, label %369

338:                                              ; preds = %332
  %339 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %340 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %339, i32 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = inttoptr i64 %341 to i8*
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 2
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %344, align 8
  %346 = load i64, i64* @DSPCLK_DCEFCLK, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 5
  store i8* %342, i8** %348, align 8
  %349 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %350 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %349, i32 0, i32 3
  %351 = load i64, i64* %350, align 8
  %352 = inttoptr i64 %351 to i8*
  %353 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 2
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %354, align 8
  %356 = load i64, i64* @DSPCLK_DCEFCLK, align 8
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 4
  store i8* %352, i8** %358, align 8
  %359 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %360 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %359, i32 0, i32 11
  %361 = load i64, i64* %360, align 8
  %362 = inttoptr i64 %361 to i8*
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 2
  %365 = load %struct.TYPE_20__*, %struct.TYPE_20__** %364, align 8
  %366 = load i64, i64* @DSPCLK_DCEFCLK, align 8
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %365, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 3
  store i8* %362, i8** %368, align 8
  br label %397

369:                                              ; preds = %332, %308
  %370 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 14
  %371 = load i64, i64* %370, align 8
  %372 = inttoptr i64 %371 to i8*
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 2
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %374, align 8
  %376 = load i64, i64* @DSPCLK_DCEFCLK, align 8
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 5
  store i8* %372, i8** %378, align 8
  %379 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 13
  %380 = load i64, i64* %379, align 8
  %381 = inttoptr i64 %380 to i8*
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 2
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %383, align 8
  %385 = load i64, i64* @DSPCLK_DCEFCLK, align 8
  %386 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %386, i32 0, i32 4
  store i8* %381, i8** %387, align 8
  %388 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 12
  %389 = load i64, i64* %388, align 8
  %390 = inttoptr i64 %389 to i8*
  %391 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %391, i32 0, i32 2
  %393 = load %struct.TYPE_20__*, %struct.TYPE_20__** %392, align 8
  %394 = load i64, i64* @DSPCLK_DCEFCLK, align 8
  %395 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 3
  store i8* %390, i8** %396, align 8
  br label %397

397:                                              ; preds = %369, %338
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 2
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %399, align 8
  %401 = load i64, i64* @DSPCLK_DCEFCLK, align 8
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %402, i32 0, i32 0
  store i32 24, i32* %403, align 8
  %404 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 2
  %406 = load %struct.TYPE_20__*, %struct.TYPE_20__** %405, align 8
  %407 = load i64, i64* @DSPCLK_DCEFCLK, align 8
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %408, i32 0, i32 1
  store i32 12, i32* %409, align 4
  %410 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 2
  %412 = load %struct.TYPE_20__*, %struct.TYPE_20__** %411, align 8
  %413 = load i64, i64* @DSPCLK_DCEFCLK, align 8
  %414 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %414, i32 0, i32 2
  store i32 12, i32* %415, align 8
  %416 = load i64, i64* @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %417 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %418 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %417, i32 0, i32 4
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %416, %419
  br i1 %420, label %421, label %458

421:                                              ; preds = %397
  %422 = load i64, i64* @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %423 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %424 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %423, i32 0, i32 5
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %422, %425
  br i1 %426, label %427, label %458

427:                                              ; preds = %421
  %428 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %429 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %428, i32 0, i32 4
  %430 = load i64, i64* %429, align 8
  %431 = inttoptr i64 %430 to i8*
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 2
  %434 = load %struct.TYPE_20__*, %struct.TYPE_20__** %433, align 8
  %435 = load i64, i64* @DSPCLK_PIXCLK, align 8
  %436 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %434, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %436, i32 0, i32 5
  store i8* %431, i8** %437, align 8
  %438 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %439 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %438, i32 0, i32 5
  %440 = load i64, i64* %439, align 8
  %441 = inttoptr i64 %440 to i8*
  %442 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 2
  %444 = load %struct.TYPE_20__*, %struct.TYPE_20__** %443, align 8
  %445 = load i64, i64* @DSPCLK_PIXCLK, align 8
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %444, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %446, i32 0, i32 4
  store i8* %441, i8** %447, align 8
  %448 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %449 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %448, i32 0, i32 10
  %450 = load i64, i64* %449, align 8
  %451 = inttoptr i64 %450 to i8*
  %452 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %452, i32 0, i32 2
  %454 = load %struct.TYPE_20__*, %struct.TYPE_20__** %453, align 8
  %455 = load i64, i64* @DSPCLK_PIXCLK, align 8
  %456 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 3
  store i8* %451, i8** %457, align 8
  br label %486

458:                                              ; preds = %421, %397
  %459 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 11
  %460 = load i64, i64* %459, align 8
  %461 = inttoptr i64 %460 to i8*
  %462 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i32 0, i32 2
  %464 = load %struct.TYPE_20__*, %struct.TYPE_20__** %463, align 8
  %465 = load i64, i64* @DSPCLK_PIXCLK, align 8
  %466 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %464, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %466, i32 0, i32 5
  store i8* %461, i8** %467, align 8
  %468 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 10
  %469 = load i64, i64* %468, align 8
  %470 = inttoptr i64 %469 to i8*
  %471 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %471, i32 0, i32 2
  %473 = load %struct.TYPE_20__*, %struct.TYPE_20__** %472, align 8
  %474 = load i64, i64* @DSPCLK_PIXCLK, align 8
  %475 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %473, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i32 0, i32 4
  store i8* %470, i8** %476, align 8
  %477 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 9
  %478 = load i64, i64* %477, align 8
  %479 = inttoptr i64 %478 to i8*
  %480 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %480, i32 0, i32 2
  %482 = load %struct.TYPE_20__*, %struct.TYPE_20__** %481, align 8
  %483 = load i64, i64* @DSPCLK_PIXCLK, align 8
  %484 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %482, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %484, i32 0, i32 3
  store i8* %479, i8** %485, align 8
  br label %486

486:                                              ; preds = %458, %427
  %487 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %487, i32 0, i32 2
  %489 = load %struct.TYPE_20__*, %struct.TYPE_20__** %488, align 8
  %490 = load i64, i64* @DSPCLK_PIXCLK, align 8
  %491 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %489, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %491, i32 0, i32 0
  store i32 24, i32* %492, align 8
  %493 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %493, i32 0, i32 2
  %495 = load %struct.TYPE_20__*, %struct.TYPE_20__** %494, align 8
  %496 = load i64, i64* @DSPCLK_PIXCLK, align 8
  %497 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %495, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %497, i32 0, i32 1
  store i32 12, i32* %498, align 4
  %499 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %500 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %499, i32 0, i32 2
  %501 = load %struct.TYPE_20__*, %struct.TYPE_20__** %500, align 8
  %502 = load i64, i64* @DSPCLK_PIXCLK, align 8
  %503 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %501, i64 %502
  %504 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %503, i32 0, i32 2
  store i32 12, i32* %504, align 8
  %505 = load i64, i64* @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %506 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %507 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %506, i32 0, i32 6
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %505, %508
  br i1 %509, label %510, label %547

510:                                              ; preds = %486
  %511 = load i64, i64* @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %512 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %513 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %512, i32 0, i32 7
  %514 = load i64, i64* %513, align 8
  %515 = icmp ne i64 %511, %514
  br i1 %515, label %516, label %547

516:                                              ; preds = %510
  %517 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %518 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %517, i32 0, i32 6
  %519 = load i64, i64* %518, align 8
  %520 = inttoptr i64 %519 to i8*
  %521 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %522 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %521, i32 0, i32 2
  %523 = load %struct.TYPE_20__*, %struct.TYPE_20__** %522, align 8
  %524 = load i64, i64* @DSPCLK_PHYCLK, align 8
  %525 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %523, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %525, i32 0, i32 5
  store i8* %520, i8** %526, align 8
  %527 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %528 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %527, i32 0, i32 7
  %529 = load i64, i64* %528, align 8
  %530 = inttoptr i64 %529 to i8*
  %531 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %532 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %531, i32 0, i32 2
  %533 = load %struct.TYPE_20__*, %struct.TYPE_20__** %532, align 8
  %534 = load i64, i64* @DSPCLK_PHYCLK, align 8
  %535 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %533, i64 %534
  %536 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %535, i32 0, i32 4
  store i8* %530, i8** %536, align 8
  %537 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %538 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %537, i32 0, i32 9
  %539 = load i64, i64* %538, align 8
  %540 = inttoptr i64 %539 to i8*
  %541 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %542 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %541, i32 0, i32 2
  %543 = load %struct.TYPE_20__*, %struct.TYPE_20__** %542, align 8
  %544 = load i64, i64* @DSPCLK_PHYCLK, align 8
  %545 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %543, i64 %544
  %546 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %545, i32 0, i32 3
  store i8* %540, i8** %546, align 8
  br label %575

547:                                              ; preds = %510, %486
  %548 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 8
  %549 = load i64, i64* %548, align 8
  %550 = inttoptr i64 %549 to i8*
  %551 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %552 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %551, i32 0, i32 2
  %553 = load %struct.TYPE_20__*, %struct.TYPE_20__** %552, align 8
  %554 = load i64, i64* @DSPCLK_PHYCLK, align 8
  %555 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %553, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %555, i32 0, i32 5
  store i8* %550, i8** %556, align 8
  %557 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 7
  %558 = load i64, i64* %557, align 8
  %559 = inttoptr i64 %558 to i8*
  %560 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %561 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %560, i32 0, i32 2
  %562 = load %struct.TYPE_20__*, %struct.TYPE_20__** %561, align 8
  %563 = load i64, i64* @DSPCLK_PHYCLK, align 8
  %564 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %562, i64 %563
  %565 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %564, i32 0, i32 4
  store i8* %559, i8** %565, align 8
  %566 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 6
  %567 = load i64, i64* %566, align 8
  %568 = inttoptr i64 %567 to i8*
  %569 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %569, i32 0, i32 2
  %571 = load %struct.TYPE_20__*, %struct.TYPE_20__** %570, align 8
  %572 = load i64, i64* @DSPCLK_PHYCLK, align 8
  %573 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %571, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %573, i32 0, i32 3
  store i8* %568, i8** %574, align 8
  br label %575

575:                                              ; preds = %547, %516
  %576 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %577 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %576, i32 0, i32 2
  %578 = load %struct.TYPE_20__*, %struct.TYPE_20__** %577, align 8
  %579 = load i64, i64* @DSPCLK_PHYCLK, align 8
  %580 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %578, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %580, i32 0, i32 0
  store i32 24, i32* %581, align 8
  %582 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %583 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %582, i32 0, i32 2
  %584 = load %struct.TYPE_20__*, %struct.TYPE_20__** %583, align 8
  %585 = load i64, i64* @DSPCLK_PHYCLK, align 8
  %586 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %584, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %586, i32 0, i32 1
  store i32 12, i32* %587, align 4
  %588 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %589 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %588, i32 0, i32 2
  %590 = load %struct.TYPE_20__*, %struct.TYPE_20__** %589, align 8
  %591 = load i64, i64* @DSPCLK_PHYCLK, align 8
  %592 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %590, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %592, i32 0, i32 2
  store i32 12, i32* %593, align 8
  %594 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 5
  %595 = load i32, i32* %594, align 4
  %596 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %597 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %596, i32 0, i32 1
  %598 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %597, i32 0, i32 5
  store i32 %595, i32* %598, align 4
  %599 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %600 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %599, i32 0, i32 1
  %601 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %600, i32 0, i32 0
  store i32 20, i32* %601, align 8
  %602 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 4
  %603 = load i32, i32* %602, align 8
  %604 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %605 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %604, i32 0, i32 1
  %606 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %605, i32 0, i32 4
  store i32 %603, i32* %606, align 8
  %607 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %608 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %607, i32 0, i32 1
  %609 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %608, i32 0, i32 1
  store i32 20, i32* %609, align 4
  %610 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 3
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %613 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %612, i32 0, i32 1
  %614 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %613, i32 0, i32 3
  store i32 %611, i32* %614, align 4
  %615 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %616 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %615, i32 0, i32 1
  %617 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %616, i32 0, i32 2
  store i32 20, i32* %617, align 8
  %618 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 2
  %619 = load i32, i32* %618, align 8
  %620 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %621 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %620, i32 0, i32 0
  %622 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %621, i32 0, i32 5
  store i32 %619, i32* %622, align 8
  %623 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 1
  %624 = load i32, i32* %623, align 4
  %625 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %626 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %626, i32 0, i32 4
  store i32 %624, i32* %627, align 4
  %628 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %7, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %631 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %630, i32 0, i32 0
  %632 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %631, i32 0, i32 3
  store i32 %629, i32* %632, align 8
  %633 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %634 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %633, i32 0, i32 0
  %635 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %634, i32 0, i32 0
  store i32 24, i32* %635, align 8
  %636 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %637 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %637, i32 0, i32 1
  store i32 12, i32* %638, align 4
  %639 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %640 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %639, i32 0, i32 0
  %641 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %640, i32 0, i32 2
  store i64 0, i64* %641, align 8
  br label %649

642:                                              ; preds = %36
  %643 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %644 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %643, i32 0, i32 8
  %645 = load %struct.TYPE_12__*, %struct.TYPE_12__** %644, align 8
  %646 = load i64, i64* @GNLD_AVFS, align 8
  %647 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %645, i64 %646
  %648 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %647, i32 0, i32 0
  store i32 0, i32* %648, align 4
  br label %649

649:                                              ; preds = %642, %575
  br label %650

650:                                              ; preds = %649, %1
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pp_atomfwctrl_get_avfs_information(%struct.pp_hwmgr*, %struct.pp_atomfwctrl_avfs_parameters*) #2

declare dso_local i64 @convert_to_vid(i8*) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
