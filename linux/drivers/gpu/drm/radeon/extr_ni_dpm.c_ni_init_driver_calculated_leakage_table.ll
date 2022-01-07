; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_init_driver_calculated_leakage_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_init_driver_calculated_leakage_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_9__ = type { i8*** }
%struct.ni_power_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.evergreen_power_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SMC_NISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES = common dso_local global i32 0, align 4
@SMC_NISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.TYPE_9__*)* @ni_init_driver_calculated_leakage_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_init_driver_calculated_leakage_table(%struct.radeon_device* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.ni_power_info*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %15)
  store %struct.ni_power_info* %16, %struct.ni_power_info** %5, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %17)
  store %struct.evergreen_power_info* %18, %struct.evergreen_power_info** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %20 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @SMC_NISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @SMC_NISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @ni_get_smc_power_scaling_factor(%struct.radeon_device* %29)
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %102, %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SMC_NISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %98, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %101

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  %43 = mul i32 %42, 8
  %44 = mul i32 1000, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %47 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %53 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %51, %40
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %59 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %62 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %72 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ni_calculate_leakage_for_v_and_t(%struct.radeon_device* %57, i32* %60, i32 %69, i32 %70, i32 %74, i32* %7)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @ni_scale_power_for_smc(i32 %76, i32 %77)
  %79 = sdiv i32 %78, 1000
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %56
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %83, %56
  %86 = load i32, i32* %12, align 4
  %87 = call i8* @cpu_to_be32(i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i8***, i8**** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8**, i8*** %90, i64 %92
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* %87, i8** %97, align 8
  br label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %36

101:                                              ; preds = %36
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %31

105:                                              ; preds = %31
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %133, %105
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @SMC_NISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %129, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @SMC_NISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i32, i32* %13, align 4
  %118 = call i8* @cpu_to_be32(i32 %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i8***, i8**** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8**, i8*** %121, i64 %123
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* %118, i8** %128, align 8
  br label %129

129:                                              ; preds = %116
  %130 = load i32, i32* %8, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %112

132:                                              ; preds = %112
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %107

136:                                              ; preds = %107
  ret i32 0
}

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ni_get_smc_power_scaling_factor(%struct.radeon_device*) #1

declare dso_local i32 @ni_calculate_leakage_for_v_and_t(%struct.radeon_device*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ni_scale_power_for_smc(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
