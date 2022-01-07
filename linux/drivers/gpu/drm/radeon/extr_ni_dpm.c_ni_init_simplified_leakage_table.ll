; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_init_simplified_leakage_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_init_simplified_leakage_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.radeon_cac_leakage_table }
%struct.radeon_cac_leakage_table = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i8*** }
%struct.evergreen_power_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SMC_NISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES = common dso_local global i64 0, align 8
@SMC_NISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.TYPE_13__*)* @ni_init_simplified_leakage_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_init_simplified_leakage_table(%struct.radeon_device* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca %struct.radeon_cac_leakage_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %15 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %14)
  store %struct.evergreen_power_info* %15, %struct.evergreen_power_info** %6, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store %struct.radeon_cac_leakage_table* %20, %struct.radeon_cac_leakage_table** %7, align 8
  store i64 0, i64* %12, align 8
  %21 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %7, align 8
  %22 = icmp ne %struct.radeon_cac_leakage_table* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %145

26:                                               ; preds = %2
  %27 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %7, align 8
  %28 = getelementptr inbounds %struct.radeon_cac_leakage_table, %struct.radeon_cac_leakage_table* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %31 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %26
  %37 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %38 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %7, align 8
  %42 = getelementptr inbounds %struct.radeon_cac_leakage_table, %struct.radeon_cac_leakage_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %47 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  br label %54

50:                                               ; preds = %36
  %51 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %7, align 8
  %52 = getelementptr inbounds %struct.radeon_cac_leakage_table, %struct.radeon_cac_leakage_table* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi i64 [ %49, %45 ], [ %53, %50 ]
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %54, %26
  %57 = load i64, i64* @SMC_NISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @SMC_NISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES, align 8
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i64, i64* %10, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %145

68:                                               ; preds = %62
  %69 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %70 = call i64 @ni_get_smc_power_scaling_factor(%struct.radeon_device* %69)
  store i64 %70, i64* %13, align 8
  store i64 0, i64* %9, align 8
  br label %71

71:                                               ; preds = %110, %68
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %113

75:                                               ; preds = %71
  %76 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %7, align 8
  %77 = getelementptr inbounds %struct.radeon_cac_leakage_table, %struct.radeon_cac_leakage_table* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i64, i64* %11, align 8
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %86, %75
  store i64 0, i64* %8, align 8
  br label %89

89:                                               ; preds = %106, %88
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @SMC_NISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @ni_scale_power_for_smc(i64 %94, i64 %95)
  %97 = call i8* @cpu_to_be32(i32 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i8***, i8**** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds i8**, i8*** %100, i64 %101
  %103 = load i8**, i8*** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  store i8* %97, i8** %105, align 8
  br label %106

106:                                              ; preds = %93
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %8, align 8
  br label %89

109:                                              ; preds = %89
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %71

113:                                              ; preds = %71
  %114 = load i64, i64* %10, align 8
  store i64 %114, i64* %9, align 8
  br label %115

115:                                              ; preds = %141, %113
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @SMC_NISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %115
  store i64 0, i64* %8, align 8
  br label %120

120:                                              ; preds = %137, %119
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* @SMC_NISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @ni_scale_power_for_smc(i64 %125, i64 %126)
  %128 = call i8* @cpu_to_be32(i32 %127)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i8***, i8**** %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds i8**, i8*** %131, i64 %132
  %134 = load i8**, i8*** %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = getelementptr inbounds i8*, i8** %134, i64 %135
  store i8* %128, i8** %136, align 8
  br label %137

137:                                              ; preds = %124
  %138 = load i64, i64* %8, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %8, align 8
  br label %120

140:                                              ; preds = %120
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %9, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %9, align 8
  br label %115

144:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %65, %23
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @ni_get_smc_power_scaling_factor(%struct.radeon_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ni_scale_power_for_smc(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
