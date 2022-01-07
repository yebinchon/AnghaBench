; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_smc_voltage_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_smc_voltage_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_9__ = type { i8, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8**, i64* }
%struct.rv7xx_power_info = type { i64 }
%struct.evergreen_power_info = type { %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@RV770_SMC_VOLTAGEMASK_VDDC = common dso_local global i64 0, align 8
@RV770_SMC_VOLTAGEMASK_VDDCI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_populate_smc_voltage_tables(%struct.radeon_device* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca i8, align 1
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %5, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %10)
  store %struct.evergreen_power_info* %11, %struct.evergreen_power_info** %6, align 8
  %12 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %13 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %2
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %20 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = call i32 @cypress_populate_smc_voltage_table(%struct.radeon_device* %18, %struct.TYPE_10__* %20, %struct.TYPE_9__* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @RV770_SMC_VOLTAGEMASK_VDDC, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %30 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* @RV770_SMC_VOLTAGEMASK_VDDC, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %33, i8** %39, align 8
  store i8 0, i8* %7, align 1
  br label %40

40:                                               ; preds = %68, %17
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i32
  %43 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %44 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 8
  %47 = sext i8 %46 to i32
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %40
  %50 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %51 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %54 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i8, i8* %7, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sle i64 %52, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load i8, i8* %7, align 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i8 %64, i8* %66, align 8
  br label %71

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67
  %69 = load i8, i8* %7, align 1
  %70 = add i8 %69, 1
  store i8 %70, i8* %7, align 1
  br label %40

71:                                               ; preds = %63, %40
  br label %72

72:                                               ; preds = %71, %2
  %73 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %74 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 8
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %72
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %81 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = call i32 @cypress_populate_smc_voltage_table(%struct.radeon_device* %79, %struct.TYPE_10__* %81, %struct.TYPE_9__* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @RV770_SMC_VOLTAGEMASK_VDDCI, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64 0, i64* %89, align 8
  %90 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %91 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = load i64, i64* @RV770_SMC_VOLTAGEMASK_VDDCI, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  store i8* %94, i8** %100, align 8
  br label %101

101:                                              ; preds = %78, %72
  ret i32 0
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @cypress_populate_smc_voltage_table(%struct.radeon_device*, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
