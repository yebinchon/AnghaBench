; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_bapm_parameters_in_dpm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_bapm_parameters_in_dpm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { %struct.phm_ppm_table*, %struct.phm_cac_tdp_table* }
%struct.phm_ppm_table = type { i64, i64 }
%struct.phm_cac_tdp_table = type { i32, i32 }
%struct.smu7_hwmgr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iceland_smumgr = type { %struct.TYPE_6__, %struct.iceland_pt_defaults* }
%struct.TYPE_6__ = type { i32, i32, i32, i8****, i8****, i32, i32, i64, i64, i8*, i8* }
%struct.iceland_pt_defaults = type { i32*, i32*, i32, i32 }

@PP_TEMPERATURE_UNITS_PER_CENTIGRADES = common dso_local global i32 0, align 4
@SMU71_DTE_ITERATIONS = common dso_local global i32 0, align 4
@SMU71_DTE_SOURCES = common dso_local global i32 0, align 4
@SMU71_DTE_SINKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @iceland_populate_bapm_parameters_in_dpm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iceland_populate_bapm_parameters_in_dpm_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca %struct.iceland_smumgr*, align 8
  %5 = alloca %struct.iceland_pt_defaults*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.phm_cac_tdp_table*, align 8
  %8 = alloca %struct.phm_ppm_table*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %17, %struct.smu7_hwmgr** %3, align 8
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.iceland_smumgr*
  store %struct.iceland_smumgr* %21, %struct.iceland_smumgr** %4, align 8
  %22 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %4, align 8
  %23 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %22, i32 0, i32 1
  %24 = load %struct.iceland_pt_defaults*, %struct.iceland_pt_defaults** %23, align 8
  store %struct.iceland_pt_defaults* %24, %struct.iceland_pt_defaults** %5, align 8
  %25 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %4, align 8
  %26 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %25, i32 0, i32 0
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %6, align 8
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %28 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %29, align 8
  store %struct.phm_cac_tdp_table* %30, %struct.phm_cac_tdp_table** %7, align 8
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %33, align 8
  store %struct.phm_ppm_table* %34, %struct.phm_ppm_table** %8, align 8
  %35 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %7, align 8
  %36 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 256
  %39 = call i8* @PP_HOST_TO_SMC_US(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  %42 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %7, align 8
  %43 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 256
  %46 = call i8* @PP_HOST_TO_SMC_US(i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 9
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 8
  store i64 0, i64* %50, align 8
  %51 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %52 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %56 = sdiv i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 7
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 8, i32* %61, align 8
  %62 = load %struct.iceland_pt_defaults*, %struct.iceland_pt_defaults** %5, align 8
  %63 = getelementptr inbounds %struct.iceland_pt_defaults, %struct.iceland_pt_defaults* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %8, align 8
  %68 = icmp ne %struct.phm_ppm_table* null, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %1
  %70 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %8, align 8
  %71 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = mul nsw i32 %73, 256
  %75 = sdiv i32 %74, 1000
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %8, align 8
  %79 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = mul nsw i32 %81, 256
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %90

85:                                               ; preds = %1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %85, %69
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i32 %97)
  %99 = load %struct.iceland_pt_defaults*, %struct.iceland_pt_defaults** %5, align 8
  %100 = getelementptr inbounds %struct.iceland_pt_defaults, %struct.iceland_pt_defaults* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @PP_HOST_TO_SMC_UL(i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.iceland_pt_defaults*, %struct.iceland_pt_defaults** %5, align 8
  %106 = getelementptr inbounds %struct.iceland_pt_defaults, %struct.iceland_pt_defaults* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %9, align 8
  %108 = load %struct.iceland_pt_defaults*, %struct.iceland_pt_defaults** %5, align 8
  %109 = getelementptr inbounds %struct.iceland_pt_defaults, %struct.iceland_pt_defaults* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %172, %90
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @SMU71_DTE_ITERATIONS, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %175

115:                                              ; preds = %111
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %168, %115
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @SMU71_DTE_SOURCES, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %171

120:                                              ; preds = %116
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %164, %120
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @SMU71_DTE_SINKS, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %121
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @PP_HOST_TO_SMC_US(i32 %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  %131 = load i8****, i8***** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8***, i8**** %131, i64 %133
  %135 = load i8***, i8**** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8**, i8*** %135, i64 %137
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %128, i8** %142, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @PP_HOST_TO_SMC_US(i32 %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i8****, i8***** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8***, i8**** %148, i64 %150
  %152 = load i8***, i8**** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8**, i8*** %152, i64 %154
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* %145, i8** %159, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %9, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %10, align 8
  br label %164

164:                                              ; preds = %125
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %121

167:                                              ; preds = %121
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %116

171:                                              ; preds = %116
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %111

175:                                              ; preds = %111
  ret i32 0
}

declare dso_local i8* @PP_HOST_TO_SMC_US(i32) #1

declare dso_local i32 @CONVERT_FROM_HOST_TO_SMC_US(i32) #1

declare dso_local i32 @PP_HOST_TO_SMC_UL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
