; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_initialize_smc_dte_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_initialize_smc_dte_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.si_power_info = type { i32, i32, i32, %struct.si_dte_data }
%struct.si_dte_data = type { i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { i8**, i8**, i32*, i64, i8**, i8**, i8*, i32, i32, i32, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMC_SISLANDS_DTE_MAX_FILTER_STAGES = common dso_local global i64 0, align 8
@SMC_SISLANDS_DTE_MAX_TEMPERATURE_DEPENDENT_ARRAY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_initialize_smc_dte_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_initialize_smc_dte_tables(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.si_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.si_dte_data*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %11)
  store %struct.si_power_info* %12, %struct.si_power_info** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %14 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %13, i32 0, i32 3
  store %struct.si_dte_data* %14, %struct.si_dte_data** %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  %15 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %16 = icmp eq %struct.si_dte_data* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %19 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %22 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %199

26:                                               ; preds = %20
  %27 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %28 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %199

34:                                               ; preds = %26
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.TYPE_4__* @kzalloc(i32 96, i32 %35)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %7, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = icmp eq %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %41 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %199

44:                                               ; preds = %34
  %45 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %46 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @SMC_SISLANDS_DTE_MAX_FILTER_STAGES, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i64, i64* @SMC_SISLANDS_DTE_MAX_FILTER_STAGES, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %51, %44
  %54 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %55 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @SMC_SISLANDS_DTE_MAX_TEMPERATURE_DEPENDENT_ARRAY_SIZE, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, i64* @SMC_SISLANDS_DTE_MAX_TEMPERATURE_DEPENDENT_ARRAY_SIZE, align 8
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %60, %53
  %63 = load i64, i64* %8, align 8
  %64 = call i8* @cpu_to_be32(i64 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 12
  store i8* %64, i8** %66, align 8
  %67 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %68 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @cpu_to_be32(i64 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 11
  store i8* %70, i8** %72, align 8
  %73 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %74 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @cpu_to_be32(i64 %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 10
  store i8* %76, i8** %78, align 8
  %79 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %80 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 8
  %84 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %85 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 4
  %89 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %90 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 8
  %94 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %95 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @cpu_to_be32(i64 %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 6
  store i8* %97, i8** %99, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %62
  %103 = load i64, i64* %8, align 8
  %104 = add nsw i64 %103, -1
  store i64 %104, i64* %8, align 8
  br label %105

105:                                              ; preds = %102, %62
  store i64 0, i64* %10, align 8
  br label %106

106:                                              ; preds = %135, %105
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %106
  %111 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %112 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %111, i32 0, i32 5
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @cpu_to_be32(i64 %116)
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  %120 = load i8**, i8*** %119, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  store i8* %117, i8** %122, align 8
  %123 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %124 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %123, i32 0, i32 6
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = call i8* @cpu_to_be32(i64 %128)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = load i8**, i8*** %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds i8*, i8** %132, i64 %133
  store i8* %129, i8** %134, align 8
  br label %135

135:                                              ; preds = %110
  %136 = load i64, i64* %10, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %10, align 8
  br label %106

138:                                              ; preds = %106
  %139 = load i64, i64* %9, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  store i64 0, i64* %10, align 8
  br label %142

142:                                              ; preds = %182, %138
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %146, label %185

146:                                              ; preds = %142
  %147 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %148 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %147, i32 0, i32 9
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %10, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32 %152, i32* %157, align 4
  %158 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %159 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %158, i32 0, i32 7
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* %10, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = call i8* @cpu_to_be32(i64 %163)
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i8**, i8*** %166, align 8
  %168 = load i64, i64* %10, align 8
  %169 = getelementptr inbounds i8*, i8** %167, i64 %168
  store i8* %164, i8** %169, align 8
  %170 = load %struct.si_dte_data*, %struct.si_dte_data** %6, align 8
  %171 = getelementptr inbounds %struct.si_dte_data, %struct.si_dte_data* %170, i32 0, i32 8
  %172 = load i64*, i64** %171, align 8
  %173 = load i64, i64* %10, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = call i8* @cpu_to_be32(i64 %175)
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i8**, i8*** %178, align 8
  %180 = load i64, i64* %10, align 8
  %181 = getelementptr inbounds i8*, i8** %179, i64 %180
  store i8* %176, i8** %181, align 8
  br label %182

182:                                              ; preds = %146
  %183 = load i64, i64* %10, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %10, align 8
  br label %142

185:                                              ; preds = %142
  %186 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %187 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %188 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %191 = bitcast %struct.TYPE_4__* %190 to i64*
  %192 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %193 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @si_copy_bytes_to_smc(%struct.radeon_device* %186, i32 %189, i64* %191, i32 96, i32 %194)
  store i32 %195, i32* %5, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %197 = call i32 @kfree(%struct.TYPE_4__* %196)
  %198 = load i32, i32* %5, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %185, %39, %31, %25
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @si_copy_bytes_to_smc(%struct.radeon_device*, i32, i64*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
