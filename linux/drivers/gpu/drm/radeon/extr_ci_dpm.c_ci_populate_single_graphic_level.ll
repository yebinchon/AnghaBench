; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_single_graphic_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_single_graphic_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.ci_power_info = type { i64, i64 }

@CISLAND_MINIMUM_ENGINE_CLOCK = common dso_local global i32 0, align 4
@PPSMC_DISPLAY_WATERMARK_LOW = common dso_local global i32 0, align 4
@VOLTAGE_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, %struct.TYPE_10__*)* @ci_populate_single_graphic_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_single_graphic_level(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.ci_power_info*, align 8
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %13 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %12)
  store %struct.ci_power_info* %13, %struct.ci_power_info** %10, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = call i32 @ci_calculate_sclk_params(%struct.radeon_device* %14, i32 %15, %struct.TYPE_10__* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %171

22:                                               ; preds = %4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = call i32 @ci_get_dependency_volt_by_clk(%struct.radeon_device* %23, i32* %28, i32 %29, i32* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %171

37:                                               ; preds = %22
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  store i32 1, i32* %44, align 4
  %45 = load %struct.ci_power_info*, %struct.ci_power_info** %10, align 8
  %46 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %37
  %50 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %51 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = call i32 @ci_populate_phase_value_based_on_sclk(%struct.radeon_device* %50, i32* %55, i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %49, %37
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 11
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  store i32 0, i32* %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 5
  store i32 0, i32* %67, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 6
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 17
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 16
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 15
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 14
  store i64 0, i64* %77, align 8
  %78 = load %struct.ci_power_info*, %struct.ci_power_info** %10, align 8
  %79 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %60
  %83 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @CISLAND_MINIMUM_ENGINE_CLOCK, align 4
  %86 = call i32 @ci_get_sleep_divider_id_from_clock(%struct.radeon_device* %83, i32 %84, i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 13
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %60
  %90 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_LOW, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 12
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @cpu_to_be32(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @VOLTAGE_SCALE, align 4
  %104 = mul nsw i32 %102, %103
  %105 = call i8* @cpu_to_be32(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @cpu_to_be32(i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @cpu_to_be32(i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @cpu_to_be16(i32 %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 11
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @cpu_to_be32(i32 %131)
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @cpu_to_be32(i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @cpu_to_be32(i32 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 9
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 8
  %153 = call i8* @cpu_to_be32(i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 10
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @cpu_to_be32(i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @cpu_to_be32(i32 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %89, %35, %20
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_calculate_sclk_params(%struct.radeon_device*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ci_get_dependency_volt_by_clk(%struct.radeon_device*, i32*, i32, i32*) #1

declare dso_local i32 @ci_populate_phase_value_based_on_sclk(%struct.radeon_device*, i32*, i32, i32*) #1

declare dso_local i32 @ci_get_sleep_divider_id_from_clock(%struct.radeon_device*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
