; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_bapm_parameters_in_dpm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_bapm_parameters_in_dpm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.radeon_ppm_table*, %struct.radeon_cac_tdp_table* }
%struct.radeon_ppm_table = type { i64, i64 }
%struct.radeon_cac_tdp_table = type { i32, i32 }
%struct.ci_power_info = type { %struct.TYPE_9__, i64, %struct.TYPE_10__, %struct.ci_pt_defaults* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i8****, i8****, i32, i8*, i8*, i32, i8*, i8* }
%struct.ci_pt_defaults = type { i32*, i32*, i32, i32 }

@SMU7_DTE_ITERATIONS = common dso_local global i32 0, align 4
@SMU7_DTE_SOURCES = common dso_local global i32 0, align 4
@SMU7_DTE_SINKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_populate_bapm_parameters_in_dpm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_bapm_parameters_in_dpm_table(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.ci_power_info*, align 8
  %4 = alloca %struct.ci_pt_defaults*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.radeon_cac_tdp_table*, align 8
  %7 = alloca %struct.radeon_ppm_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %13)
  store %struct.ci_power_info* %14, %struct.ci_power_info** %3, align 8
  %15 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %16 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %15, i32 0, i32 3
  %17 = load %struct.ci_pt_defaults*, %struct.ci_pt_defaults** %16, align 8
  store %struct.ci_pt_defaults* %17, %struct.ci_pt_defaults** %4, align 8
  %18 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %19 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %18, i32 0, i32 2
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.radeon_cac_tdp_table*, %struct.radeon_cac_tdp_table** %24, align 8
  store %struct.radeon_cac_tdp_table* %25, %struct.radeon_cac_tdp_table** %6, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.radeon_ppm_table*, %struct.radeon_ppm_table** %30, align 8
  store %struct.radeon_ppm_table* %31, %struct.radeon_ppm_table** %7, align 8
  %32 = load %struct.radeon_cac_tdp_table*, %struct.radeon_cac_tdp_table** %6, align 8
  %33 = getelementptr inbounds %struct.radeon_cac_tdp_table, %struct.radeon_cac_tdp_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 256
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.radeon_cac_tdp_table*, %struct.radeon_cac_tdp_table** %6, align 8
  %39 = getelementptr inbounds %struct.radeon_cac_tdp_table, %struct.radeon_cac_tdp_table* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 256
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %45 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 10
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %51 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %53, 1000
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 9
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  store i32 8, i32* %60, align 8
  %61 = load %struct.ci_pt_defaults*, %struct.ci_pt_defaults** %4, align 8
  %62 = getelementptr inbounds %struct.ci_pt_defaults, %struct.ci_pt_defaults* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 8
  %66 = load %struct.radeon_ppm_table*, %struct.radeon_ppm_table** %7, align 8
  %67 = icmp ne %struct.radeon_ppm_table* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %1
  %69 = load %struct.radeon_ppm_table*, %struct.radeon_ppm_table** %7, align 8
  %70 = getelementptr inbounds %struct.radeon_ppm_table, %struct.radeon_ppm_table* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = mul nsw i32 %72, 256
  %74 = sdiv i32 %73, 1000
  %75 = call i8* @cpu_to_be16(i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load %struct.radeon_ppm_table*, %struct.radeon_ppm_table** %7, align 8
  %79 = getelementptr inbounds %struct.radeon_ppm_table, %struct.radeon_ppm_table* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = mul nsw i32 %81, 256
  %83 = call i8* @cpu_to_be16(i32 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  br label %93

86:                                               ; preds = %1
  %87 = call i8* @cpu_to_be16(i32 0)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 7
  store i8* %87, i8** %89, align 8
  %90 = call i8* @cpu_to_be16(i32 0)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 6
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %86, %68
  %94 = load %struct.ci_pt_defaults*, %struct.ci_pt_defaults** %4, align 8
  %95 = getelementptr inbounds %struct.ci_pt_defaults, %struct.ci_pt_defaults* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @cpu_to_be32(i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ci_pt_defaults*, %struct.ci_pt_defaults** %4, align 8
  %101 = getelementptr inbounds %struct.ci_pt_defaults, %struct.ci_pt_defaults* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %11, align 8
  %103 = load %struct.ci_pt_defaults*, %struct.ci_pt_defaults** %4, align 8
  %104 = getelementptr inbounds %struct.ci_pt_defaults, %struct.ci_pt_defaults* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %12, align 8
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %167, %93
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @SMU7_DTE_ITERATIONS, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %170

110:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %163, %110
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @SMU7_DTE_SOURCES, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %166

115:                                              ; preds = %111
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %159, %115
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @SMU7_DTE_SINKS, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %162

120:                                              ; preds = %116
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @cpu_to_be16(i32 %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 4
  %126 = load i8****, i8***** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8***, i8**** %126, i64 %128
  %130 = load i8***, i8**** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8**, i8*** %130, i64 %132
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  store i8* %123, i8** %137, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @cpu_to_be16(i32 %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 3
  %143 = load i8****, i8***** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8***, i8**** %143, i64 %145
  %147 = load i8***, i8**** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8**, i8*** %147, i64 %149
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  store i8* %140, i8** %154, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %11, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %12, align 8
  br label %159

159:                                              ; preds = %120
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %116

162:                                              ; preds = %116
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %111

166:                                              ; preds = %111
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %106

170:                                              ; preds = %106
  ret i32 0
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
