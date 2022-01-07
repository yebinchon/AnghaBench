; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_set_default_registry_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_set_default_registry_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i64 }
%struct.vega20_hwmgr = type { i32, i64, %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@PPVEGA20_VEGA20GFXCLKAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@PPVEGA20_VEGA20SOCCLKAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@PPVEGA20_VEGA20UCLKCLKAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@PPVEGA20_VEGA20GFXACTIVITYAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@PPVEGA20_VEGA20LOWESTUCLKRESERVEDFORULV_DFLT = common dso_local global i32 0, align 4
@PPVEGA20_VEGA20DISPLAYVOLTAGEMODE_DFLT = common dso_local global i32 0, align 4
@PPREGKEY_VEGA20QUADRATICEQUATION_DFLT = common dso_local global i8* null, align 8
@PPSMC_MSG_GetSmuVersion = common dso_local global i32 0, align 4
@FEATURE_ECC_MASK = common dso_local global i32 0, align 4
@PP_PCIE_DPM_MASK = common dso_local global i32 0, align 4
@FEATURE_DPM_LINK_MASK = common dso_local global i32 0, align 4
@PP_SCLK_DPM_MASK = common dso_local global i32 0, align 4
@FEATURE_DPM_GFXCLK_MASK = common dso_local global i32 0, align 4
@PP_SOCCLK_DPM_MASK = common dso_local global i32 0, align 4
@FEATURE_DPM_SOCCLK_MASK = common dso_local global i32 0, align 4
@PP_MCLK_DPM_MASK = common dso_local global i32 0, align 4
@FEATURE_DPM_UCLK_MASK = common dso_local global i32 0, align 4
@PP_DCEFCLK_DPM_MASK = common dso_local global i32 0, align 4
@FEATURE_DPM_DCEFCLK_MASK = common dso_local global i32 0, align 4
@PP_ULV_MASK = common dso_local global i32 0, align 4
@FEATURE_ULV_MASK = common dso_local global i32 0, align 4
@PP_SCLK_DEEP_SLEEP_MASK = common dso_local global i32 0, align 4
@FEATURE_DS_GFXCLK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @vega20_set_default_registry_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega20_set_default_registry_data(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega20_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.vega20_hwmgr*
  store %struct.vega20_hwmgr* %7, %struct.vega20_hwmgr** %3, align 8
  %8 = load i32, i32* @PPVEGA20_VEGA20GFXCLKAVERAGEALPHA_DFLT, align 4
  %9 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %9, i32 0, i32 20
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @PPVEGA20_VEGA20SOCCLKAVERAGEALPHA_DFLT, align 4
  %12 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %12, i32 0, i32 19
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @PPVEGA20_VEGA20UCLKCLKAVERAGEALPHA_DFLT, align 4
  %15 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %15, i32 0, i32 18
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @PPVEGA20_VEGA20GFXACTIVITYAVERAGEALPHA_DFLT, align 4
  %18 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %19 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %18, i32 0, i32 17
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @PPVEGA20_VEGA20LOWESTUCLKRESERVEDFORULV_DFLT, align 4
  %21 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %21, i32 0, i32 16
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @PPVEGA20_VEGA20DISPLAYVOLTAGEMODE_DFLT, align 4
  %24 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %24, i32 0, i32 15
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %27 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %28 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %27, i32 0, i32 14
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %30 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %30, i32 0, i32 13
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %33 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %33, i32 0, i32 12
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %36 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %37 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %36, i32 0, i32 11
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %39 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %39, i32 0, i32 10
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %42 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %43 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %42, i32 0, i32 9
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %45 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %48 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %51 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %52 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %54 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %55 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %57 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %58 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @PPREGKEY_VEGA20QUADRATICEQUATION_DFLT, align 8
  %60 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %61 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %63 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 -536601600, i32* %64, align 8
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %66 = load i32, i32* @PPSMC_MSG_GetSmuVersion, align 4
  %67 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %65, i32 %66)
  %68 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %69 = call i32 @smum_get_argument(%struct.pp_hwmgr* %68)
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %71 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %73 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %74, 2629888
  br i1 %75, label %76, label %83

76:                                               ; preds = %1
  %77 = load i32, i32* @FEATURE_ECC_MASK, align 4
  %78 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %79 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %76, %1
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %85 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PP_PCIE_DPM_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* @FEATURE_DPM_LINK_MASK, align 4
  %92 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %93 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %91
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %90, %83
  %98 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %99 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PP_SCLK_DPM_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @FEATURE_DPM_GFXCLK_MASK, align 4
  %106 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %107 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %104, %97
  %112 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %113 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @PP_SOCCLK_DPM_MASK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* @FEATURE_DPM_SOCCLK_MASK, align 4
  %120 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %121 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %119
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %118, %111
  %126 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %127 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @PP_MCLK_DPM_MASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* @FEATURE_DPM_UCLK_MASK, align 4
  %134 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %135 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %133
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %125
  %140 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %141 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @PP_DCEFCLK_DPM_MASK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* @FEATURE_DPM_DCEFCLK_MASK, align 4
  %148 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %149 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %147
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %146, %139
  %154 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %155 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @PP_ULV_MASK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %153
  %161 = load i32, i32* @FEATURE_ULV_MASK, align 4
  %162 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %163 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %161
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %160, %153
  %168 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %169 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @PP_SCLK_DEEP_SLEEP_MASK, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* @FEATURE_DS_GFXCLK_MASK, align 4
  %176 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %177 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %174, %167
  %182 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %183 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 42
  store i64 0, i64* %184, align 8
  %185 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %186 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  store i32 1, i32* %187, align 4
  %188 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %189 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 41
  store i64 0, i64* %190, align 8
  %191 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %192 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 40
  store i64 0, i64* %193, align 8
  %194 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %195 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  store i32 1, i32* %196, align 8
  %197 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %198 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 39
  store i64 0, i64* %199, align 8
  %200 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %201 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 3
  store i32 75, i32* %202, align 4
  %203 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %204 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 38
  store i64 0, i64* %205, align 8
  %206 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %207 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 38
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %239

211:                                              ; preds = %181
  %212 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %213 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 4
  store i32 6, i32* %214, align 8
  %215 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %216 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 5
  store i32 1, i32* %217, align 4
  %218 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %219 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 37
  store i64 0, i64* %220, align 8
  %221 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %222 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 36
  store i64 0, i64* %223, align 8
  %224 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %225 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 35
  store i64 0, i64* %226, align 8
  %227 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %228 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 34
  store i64 0, i64* %229, align 8
  %230 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %231 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 6
  store i32 1, i32* %232, align 8
  %233 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %234 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 33
  store i64 0, i64* %235, align 8
  %236 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %237 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 32
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %211, %181
  %240 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %241 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 7
  store i32 255, i32* %242, align 4
  %243 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %244 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 8
  store i32 255, i32* %245, align 8
  %246 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %247 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 9
  store i32 -1, i32* %248, align 4
  %249 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %250 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 10
  store i32 1, i32* %251, align 8
  %252 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %253 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 31
  store i64 0, i64* %254, align 8
  %255 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %256 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 30
  store i64 0, i64* %257, align 8
  %258 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %259 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 11
  store i32 65535, i32* %260, align 4
  %261 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %262 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 12
  store i32 65535, i32* %263, align 8
  %264 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %265 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 13
  store i32 1, i32* %266, align 4
  %267 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %268 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 29
  store i64 0, i64* %269, align 8
  %270 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %271 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 28
  store i64 0, i64* %272, align 8
  %273 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %274 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 27
  store i64 0, i64* %275, align 8
  %276 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %277 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 26
  store i64 0, i64* %278, align 8
  %279 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %280 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 14
  store i32 421072655, i32* %281, align 8
  %282 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %283 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 15
  store i32 421075225, i32* %284, align 4
  %285 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %286 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 16
  store i32 3850, i32* %287, align 8
  %288 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %289 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 25
  store i64 0, i64* %290, align 8
  %291 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %292 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 24
  store i64 0, i64* %293, align 8
  %294 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %295 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 17
  store i32 1, i32* %296, align 4
  %297 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %298 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 18
  store i32 1, i32* %299, align 8
  %300 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %301 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 23
  store i64 0, i64* %302, align 8
  %303 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %304 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 19
  store i32 100, i32* %305, align 4
  %306 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %307 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 22
  store i64 0, i64* %308, align 8
  %309 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %310 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i32 0, i32 20
  store i32 50, i32* %311, align 8
  %312 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %313 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 21
  store i32 1, i32* %314, align 4
  %315 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %316 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %315, i32 0, i32 0
  store i32 0, i32* %316, align 8
  %317 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %318 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %317, i32 0, i32 1
  store i64 0, i64* %318, align 8
  ret void
}

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smum_get_argument(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
