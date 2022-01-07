; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_populate_smc_voltage_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_populate_smc_voltage_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i8** }
%struct.TYPE_13__ = type { i8** }
%struct.rv7xx_power_info = type { i64 }
%struct.evergreen_power_info = type { %struct.TYPE_19__, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.si_power_info = type { i32, i32, i32, %struct.TYPE_19__, %struct.TYPE_19__, i64 }

@SI_SMC_SOFT_REGISTER_svi_rework_gpio_id_svc = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_svi_rework_gpio_id_svd = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_svi_rework_plat_type = common dso_local global i32 0, align 4
@SISLANDS_SMC_VOLTAGEMASK_VDDC = common dso_local global i64 0, align 8
@SISLANDS_SMC_VOLTAGEMASK_VDDCI = common dso_local global i64 0, align 8
@SISLANDS_SMC_VOLTAGEMASK_MVDD = common dso_local global i64 0, align 8
@SISLANDS_SMC_VOLTAGEMASK_VDDC_PHASE_SHEDDING = common dso_local global i64 0, align 8
@SI_SMC_SOFT_REGISTER_phase_shedding_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.TYPE_18__*)* @si_populate_smc_voltage_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_populate_smc_voltage_tables(%struct.radeon_device* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca %struct.si_power_info*, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %9)
  store %struct.rv7xx_power_info* %10, %struct.rv7xx_power_info** %5, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %11)
  store %struct.evergreen_power_info* %12, %struct.evergreen_power_info** %6, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %13)
  store %struct.si_power_info* %14, %struct.si_power_info** %7, align 8
  %15 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %16 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = load i32, i32* @SI_SMC_SOFT_REGISTER_svi_rework_gpio_id_svc, align 4
  %22 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %23 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %20, i32 %21, i32 %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = load i32, i32* @SI_SMC_SOFT_REGISTER_svi_rework_gpio_id_svd, align 4
  %28 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %29 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %26, i32 %27, i32 %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = load i32, i32* @SI_SMC_SOFT_REGISTER_svi_rework_plat_type, align 4
  %34 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %32, i32 %33, i32 2)
  br label %179

35:                                               ; preds = %2
  %36 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %37 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %35
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %44 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = call i32 @si_populate_smc_voltage_table(%struct.radeon_device* %42, %struct.TYPE_19__* %44, %struct.TYPE_18__* %45)
  %47 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %48 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i64, i64* @SISLANDS_SMC_VOLTAGEMASK_VDDC, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  store i8* %51, i8** %57, align 8
  store i64 0, i64* %8, align 8
  br label %58

58:                                               ; preds = %83, %41
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %61 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %58
  %66 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %67 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %70 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sle i64 %68, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %86

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %58

86:                                               ; preds = %78, %58
  br label %87

87:                                               ; preds = %86, %35
  %88 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %89 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %87
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %96 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %98 = call i32 @si_populate_smc_voltage_table(%struct.radeon_device* %94, %struct.TYPE_19__* %96, %struct.TYPE_18__* %97)
  %99 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %100 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @cpu_to_be32(i32 %102)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load i64, i64* @SISLANDS_SMC_VOLTAGEMASK_VDDCI, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  store i8* %103, i8** %109, align 8
  br label %110

110:                                              ; preds = %93, %87
  %111 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %112 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %110
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %119 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %118, i32 0, i32 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = call i32 @si_populate_smc_voltage_table(%struct.radeon_device* %117, %struct.TYPE_19__* %119, %struct.TYPE_18__* %120)
  %122 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %123 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @cpu_to_be32(i32 %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = load i64, i64* @SISLANDS_SMC_VOLTAGEMASK_MVDD, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  store i8* %126, i8** %132, align 8
  br label %133

133:                                              ; preds = %116, %110
  %134 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %135 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %178

138:                                              ; preds = %133
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %141 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %140, i32 0, i32 3
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = call i64 @si_validate_phase_shedding_tables(%struct.radeon_device* %139, %struct.TYPE_19__* %141, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %174

149:                                              ; preds = %138
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %152 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %151, i32 0, i32 3
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %154 = call i32 @si_populate_smc_voltage_table(%struct.radeon_device* %150, %struct.TYPE_19__* %152, %struct.TYPE_18__* %153)
  %155 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %156 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @cpu_to_be32(i32 %158)
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i8**, i8*** %162, align 8
  %164 = load i64, i64* @SISLANDS_SMC_VOLTAGEMASK_VDDC_PHASE_SHEDDING, align 8
  %165 = getelementptr inbounds i8*, i8** %163, i64 %164
  store i8* %159, i8** %165, align 8
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = load i32, i32* @SI_SMC_SOFT_REGISTER_phase_shedding_delay, align 4
  %168 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %169 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %166, i32 %167, i32 %172)
  br label %177

174:                                              ; preds = %138
  %175 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %176 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %175, i32 0, i32 2
  store i32 0, i32* %176, align 8
  br label %177

177:                                              ; preds = %174, %149
  br label %178

178:                                              ; preds = %177, %133
  br label %179

179:                                              ; preds = %178, %19
  ret i32 0
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @si_populate_smc_voltage_table(%struct.radeon_device*, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @si_validate_phase_shedding_tables(%struct.radeon_device*, %struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
