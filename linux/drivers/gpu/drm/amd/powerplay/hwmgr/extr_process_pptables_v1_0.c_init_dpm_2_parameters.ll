; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_process_pptables_v1_0.c_init_dpm_2_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_process_pptables_v1_0.c_init_dpm_2_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }
%struct.phm_ppt_v1_information = type { i32*, i32*, i32*, i8* }

@PHM_PlatformCaps_PowerControl = common dso_local global i32 0, align 4
@PHM_PlatformCaps_EnablePlatformPowerManagement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_5__*)* @init_dpm_2_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_dpm_2_parameters(%struct.pp_hwmgr* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %15, %struct.phm_ppt_v1_information** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @le16_to_cpu(i64 %18)
  %20 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %21 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %23 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %25 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %27 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @le16_to_cpu(i64 %30)
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %43 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 1500000, i32* %50, align 8
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 6250, i32* %53, align 4
  store i64 0, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 0, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %2
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %58 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %64 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PHM_PlatformCaps_PowerControl, align 4
  %68 = call i32 @phm_cap_set(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %56
  br label %70

70:                                               ; preds = %69, %2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 0, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = ptrtoint %struct.TYPE_5__* %76 to i64
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @le16_to_cpu(i64 %80)
  %82 = getelementptr i8, i8* %81, i64 %77
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %10, align 8
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %85 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %86 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %85, i32 0, i32 1
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @get_vddc_lookup_table(%struct.pp_hwmgr* %84, i32** %86, i32* %87, i32 16)
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %75, %70
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 0, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %89
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = ptrtoint %struct.TYPE_5__* %95 to i64
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @le16_to_cpu(i64 %99)
  %101 = getelementptr i8, i8* %100, i64 %96
  %102 = bitcast i8* %101 to i32*
  store i32* %102, i32** %11, align 8
  %103 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %104 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %105 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %104, i32 0, i32 0
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @get_vddc_lookup_table(%struct.pp_hwmgr* %103, i32** %105, i32* %106, i32 16)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %94, %89
  store i64 0, i64* %8, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp eq i64 0, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %108
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = ptrtoint %struct.TYPE_5__* %112 to i64
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @le16_to_cpu(i64 %116)
  %118 = getelementptr i8, i8* %117, i64 %113
  %119 = bitcast i8* %118 to i32*
  store i32* %119, i32** %7, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 0, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %111
  %125 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = call i64 @get_platform_power_management_table(%struct.pp_hwmgr* %125, i32* %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %131 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PHM_PlatformCaps_EnablePlatformPowerManagement, align 4
  %135 = call i32 @phm_cap_set(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %129, %124
  br label %137

137:                                              ; preds = %136, %111
  br label %138

138:                                              ; preds = %137, %108
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i8* @le16_to_cpu(i64) #1

declare dso_local i32 @phm_cap_set(i32, i32) #1

declare dso_local i32 @get_vddc_lookup_table(%struct.pp_hwmgr*, i32**, i32*, i32) #1

declare dso_local i64 @get_platform_power_management_table(%struct.pp_hwmgr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
