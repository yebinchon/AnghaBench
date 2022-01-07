; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_default_registry_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_default_registry_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@PP_SCLK_DPM_MASK = common dso_local global i32 0, align 4
@PP_SOCCLK_DPM_MASK = common dso_local global i32 0, align 4
@PP_MCLK_DPM_MASK = common dso_local global i32 0, align 4
@PP_PCIE_DPM_MASK = common dso_local global i32 0, align 4
@PP_DCEFCLK_DPM_MASK = common dso_local global i32 0, align 4
@PP_POWER_CONTAINMENT_MASK = common dso_local global i32 0, align 4
@PP_CLOCK_STRETCH_MASK = common dso_local global i32 0, align 4
@PP_ULV_MASK = common dso_local global i32 0, align 4
@PP_SCLK_DEEP_SLEEP_MASK = common dso_local global i32 0, align 4
@PP_AVFS_MASK = common dso_local global i32 0, align 4
@PPVEGA10_VEGA10DISPLAYVOLTAGEMODE_DFLT = common dso_local global i32 0, align 4
@PPREGKEY_VEGA10QUADRATICEQUATION_DFLT = common dso_local global i8* null, align 8
@PPVEGA10_VEGA10GFXCLKAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@PPVEGA10_VEGA10SOCCLKAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@PPVEGA10_VEGA10UCLKCLKAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@PPVEGA10_VEGA10GFXACTIVITYAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @vega10_set_default_registry_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_set_default_registry_data(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 1
  %6 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  store %struct.vega10_hwmgr* %6, %struct.vega10_hwmgr** %3, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PP_SCLK_DPM_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 1
  %15 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %15, i32 0, i32 17
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PP_SOCCLK_DPM_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 1
  %26 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %27 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %26, i32 0, i32 17
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PP_MCLK_DPM_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  %37 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %38 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %37, i32 0, i32 17
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %41 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PP_PCIE_DPM_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 1
  %48 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %48, i32 0, i32 17
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PP_DCEFCLK_DPM_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 1
  %59 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %60 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %59, i32 0, i32 17
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 8
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %63 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PP_POWER_CONTAINMENT_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %1
  %69 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %70 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %69, i32 0, i32 17
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  store i32 1, i32* %71, align 4
  %72 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %73 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %72, i32 0, i32 17
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  store i32 1, i32* %74, align 8
  %75 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %76 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %75, i32 0, i32 17
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 7
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %68, %1
  %79 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %80 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PP_CLOCK_STRETCH_MASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %88 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %87, i32 0, i32 17
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 8
  store i32 %86, i32* %89, align 8
  %90 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %91 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PP_ULV_MASK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 1, i32 0
  %98 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %99 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %98, i32 0, i32 17
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 9
  store i32 %97, i32* %100, align 4
  %101 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %102 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PP_SCLK_DEEP_SLEEP_MASK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  %109 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %110 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %109, i32 0, i32 17
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 10
  store i32 %108, i32* %111, align 8
  %112 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %113 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %112, i32 0, i32 17
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 29
  store i64 0, i64* %114, align 8
  %115 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %116 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %115, i32 0, i32 17
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 11
  store i32 1, i32* %117, align 4
  %118 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %119 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %118, i32 0, i32 17
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 12
  store i32 1, i32* %120, align 8
  %121 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %122 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %121, i32 0, i32 17
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 13
  store i32 1, i32* %123, align 4
  %124 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %125 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @PP_AVFS_MASK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 1, i32 0
  %132 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %133 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %132, i32 0, i32 17
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 14
  store i32 %131, i32* %134, align 8
  %135 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %136 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %135, i32 0, i32 17
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 15
  store i32 1, i32* %137, align 4
  %138 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %139 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %138, i32 0, i32 17
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 16
  store i32 1, i32* %140, align 8
  %141 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %142 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %141, i32 0, i32 17
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 17
  store i32 1, i32* %143, align 4
  %144 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %145 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %144, i32 0, i32 17
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 18
  store i32 1, i32* %146, align 8
  %147 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %148 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %147, i32 0, i32 17
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 19
  store i32 1, i32* %149, align 4
  %150 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %151 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %150, i32 0, i32 17
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 19
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %183

155:                                              ; preds = %78
  %156 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %157 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %156, i32 0, i32 17
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 20
  store i32 6, i32* %158, align 8
  %159 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %160 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %159, i32 0, i32 17
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 21
  store i32 1, i32* %161, align 4
  %162 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %163 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %162, i32 0, i32 17
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 28
  store i64 0, i64* %164, align 8
  %165 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %166 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %165, i32 0, i32 17
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 27
  store i64 0, i64* %167, align 8
  %168 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %169 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %168, i32 0, i32 17
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 26
  store i64 0, i64* %170, align 8
  %171 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %172 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %171, i32 0, i32 17
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 25
  store i64 0, i64* %173, align 8
  %174 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %175 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %174, i32 0, i32 17
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 22
  store i32 1, i32* %176, align 8
  %177 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %178 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %177, i32 0, i32 17
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 24
  store i64 0, i64* %179, align 8
  %180 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %181 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %180, i32 0, i32 17
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 23
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %155, %78
  %184 = load i32, i32* @PPVEGA10_VEGA10DISPLAYVOLTAGEMODE_DFLT, align 4
  %185 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %186 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %185, i32 0, i32 16
  store i32 %184, i32* %186, align 8
  %187 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %188 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %189 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %188, i32 0, i32 15
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %191 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %192 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %191, i32 0, i32 14
  store i8* %190, i8** %192, align 8
  %193 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %194 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %195 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %194, i32 0, i32 13
  store i8* %193, i8** %195, align 8
  %196 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %197 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %198 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %197, i32 0, i32 12
  store i8* %196, i8** %198, align 8
  %199 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %200 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %201 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %200, i32 0, i32 11
  store i8* %199, i8** %201, align 8
  %202 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %203 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %204 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %203, i32 0, i32 10
  store i8* %202, i8** %204, align 8
  %205 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %206 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %207 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %206, i32 0, i32 9
  store i8* %205, i8** %207, align 8
  %208 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %209 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %210 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %209, i32 0, i32 8
  store i8* %208, i8** %210, align 8
  %211 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %212 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %213 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %212, i32 0, i32 7
  store i8* %211, i8** %213, align 8
  %214 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %215 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %216 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %215, i32 0, i32 6
  store i8* %214, i8** %216, align 8
  %217 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %218 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %219 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %218, i32 0, i32 5
  store i8* %217, i8** %219, align 8
  %220 = load i8*, i8** @PPREGKEY_VEGA10QUADRATICEQUATION_DFLT, align 8
  %221 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %222 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %221, i32 0, i32 4
  store i8* %220, i8** %222, align 8
  %223 = load i32, i32* @PPVEGA10_VEGA10GFXCLKAVERAGEALPHA_DFLT, align 4
  %224 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %225 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* @PPVEGA10_VEGA10SOCCLKAVERAGEALPHA_DFLT, align 4
  %227 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %228 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* @PPVEGA10_VEGA10UCLKCLKAVERAGEALPHA_DFLT, align 4
  %230 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %231 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @PPVEGA10_VEGA10GFXACTIVITYAVERAGEALPHA_DFLT, align 4
  %233 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %234 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
