; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_all_graphic_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_all_graphic_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table }
%struct.vega10_single_dpm_table = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32*, i32, i32*, i32* }
%struct.phm_ppt_v2_information = type { i32 }

@NUM_GFXCLK_DPM_LEVELS = common dso_local global i64 0, align 8
@NUM_SOCCLK_DPM_LEVELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_populate_all_graphic_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_populate_all_graphic_levels(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.vega10_hwmgr*, align 8
  %5 = alloca %struct.phm_ppt_v2_information*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.vega10_single_dpm_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 1
  %13 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %12, align 8
  store %struct.vega10_hwmgr* %13, %struct.vega10_hwmgr** %4, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %17, %struct.phm_ppt_v2_information** %5, align 8
  %18 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %19 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %6, align 8
  %21 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %22 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store %struct.vega10_single_dpm_table* %23, %struct.vega10_single_dpm_table** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %55, %1
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %27 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %24
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %32 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %33 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = call i32 @vega10_populate_single_gfx_level(%struct.pp_hwmgr* %31, i32 %38, i32* %43, i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %30
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %2, align 4
  br label %172

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %9, align 8
  br label %24

58:                                               ; preds = %24
  %59 = load i64, i64* %9, align 8
  %60 = sub i64 %59, 1
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %89, %58
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @NUM_GFXCLK_DPM_LEVELS, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %61
  %66 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %67 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %68 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = call i32 @vega10_populate_single_gfx_level(%struct.pp_hwmgr* %66, i32 %73, i32* %78, i32* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %65
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %172

89:                                               ; preds = %65
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %61

92:                                               ; preds = %61
  %93 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %5, align 8
  %94 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cpu_to_le16(i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %100 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store %struct.vega10_single_dpm_table* %101, %struct.vega10_single_dpm_table** %7, align 8
  store i64 0, i64* %9, align 8
  br label %102

102:                                              ; preds = %133, %92
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %105 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %102
  %109 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %110 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %111 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %9, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = call i32 @vega10_populate_single_soc_level(%struct.pp_hwmgr* %109, i32 %116, i32* %121, i32* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %108
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %172

132:                                              ; preds = %108
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %9, align 8
  br label %102

136:                                              ; preds = %102
  %137 = load i64, i64* %9, align 8
  %138 = sub i64 %137, 1
  store i64 %138, i64* %10, align 8
  br label %139

139:                                              ; preds = %167, %136
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* @NUM_SOCCLK_DPM_LEVELS, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %170

143:                                              ; preds = %139
  %144 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %145 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %146 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %145, i32 0, i32 1
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i64, i64* %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %9, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* %9, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = call i32 @vega10_populate_single_soc_level(%struct.pp_hwmgr* %144, i32 %151, i32* %156, i32* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %143
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %2, align 4
  br label %172

167:                                              ; preds = %143
  %168 = load i64, i64* %9, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %9, align 8
  br label %139

170:                                              ; preds = %139
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %170, %165, %130, %87, %52
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @vega10_populate_single_gfx_level(%struct.pp_hwmgr*, i32, i32*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @vega10_populate_single_soc_level(%struct.pp_hwmgr*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
