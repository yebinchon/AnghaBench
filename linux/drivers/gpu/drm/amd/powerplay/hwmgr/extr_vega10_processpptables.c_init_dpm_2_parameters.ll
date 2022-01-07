; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_processpptables.c_init_dpm_2_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_processpptables.c_init_dpm_2_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.phm_ppt_v2_information = type { i32*, i32*, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@PHM_PlatformCaps_PowerControl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_5__*)* @init_dpm_2_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_dpm_2_parameters(%struct.pp_hwmgr* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phm_ppt_v2_information*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %14, %struct.phm_ppt_v2_information** %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 15
  %17 = load i64, i64* %16, align 8
  %18 = call i8* @le16_to_cpu(i64 %17)
  %19 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %20 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %19, i32 0, i32 15
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 14
  %23 = load i64, i64* %22, align 8
  %24 = call i8* @le16_to_cpu(i64 %23)
  %25 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %26 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %25, i32 0, i32 14
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 13
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @le16_to_cpu(i64 %29)
  %31 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %32 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %31, i32 0, i32 13
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 12
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @le16_to_cpu(i64 %35)
  %37 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %38 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %37, i32 0, i32 12
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 11
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @le16_to_cpu(i64 %41)
  %43 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %44 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %43, i32 0, i32 11
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 10
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @le16_to_cpu(i64 %47)
  %49 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %50 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %49, i32 0, i32 10
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @le16_to_cpu(i64 %53)
  %55 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %56 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %55, i32 0, i32 9
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @le16_to_cpu(i64 %59)
  %61 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %62 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %61, i32 0, i32 8
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = call i8* @le16_to_cpu(i64 %65)
  %67 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %68 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @le16_to_cpu(i64 %71)
  %73 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %74 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @le16_to_cpu(i64 %77)
  %79 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %80 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @le16_to_cpu(i64 %83)
  %85 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %86 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %88 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %87, i32 0, i32 3
  store i32* null, i32** %88, align 8
  %89 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %90 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  %91 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %92 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  %93 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %94 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i8* @le16_to_cpu(i64 %97)
  %99 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %100 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  store i8* %98, i8** %101, align 8
  %102 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %103 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 7
  store i64 0, i64* %104, align 8
  %105 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %106 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 6
  store i64 0, i64* %107, align 8
  %108 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %109 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 5
  store i64 0, i64* %110, align 8
  %111 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %112 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %115 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 1500000, i32* %116, align 8
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %118 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 6250, i32* %119, align 4
  store i64 0, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %2
  %123 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %124 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %130 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @PHM_PlatformCaps_PowerControl, align 4
  %134 = call i32 @phm_cap_set(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %128, %122
  br label %136

136:                                              ; preds = %135, %2
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %136
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = ptrtoint %struct.TYPE_5__* %142 to i64
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i8* @le16_to_cpu(i64 %146)
  %148 = getelementptr i8, i8* %147, i64 %143
  %149 = bitcast i8* %148 to i32*
  store i32* %149, i32** %8, align 8
  %150 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %151 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %152 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %151, i32 0, i32 2
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @get_vddc_lookup_table(%struct.pp_hwmgr* %150, i32** %152, i32* %153, i32 8)
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %141, %136
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %155
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %162 = ptrtoint %struct.TYPE_5__* %161 to i64
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i8* @le16_to_cpu(i64 %165)
  %167 = getelementptr i8, i8* %166, i64 %162
  %168 = bitcast i8* %167 to i32*
  store i32* %168, i32** %9, align 8
  %169 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %170 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %171 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %170, i32 0, i32 1
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 @get_vddc_lookup_table(%struct.pp_hwmgr* %169, i32** %171, i32* %172, i32 4)
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %160, %155
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %181 = ptrtoint %struct.TYPE_5__* %180 to i64
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @le16_to_cpu(i64 %184)
  %186 = getelementptr i8, i8* %185, i64 %181
  %187 = bitcast i8* %186 to i32*
  store i32* %187, i32** %10, align 8
  %188 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %189 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %190 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %189, i32 0, i32 0
  %191 = load i32*, i32** %10, align 8
  %192 = call i32 @get_vddc_lookup_table(%struct.pp_hwmgr* %188, i32** %190, i32* %191, i32 4)
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %179, %174
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i8* @le16_to_cpu(i64) #1

declare dso_local i32 @phm_cap_set(i32, i32) #1

declare dso_local i32 @get_vddc_lookup_table(%struct.pp_hwmgr*, i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
