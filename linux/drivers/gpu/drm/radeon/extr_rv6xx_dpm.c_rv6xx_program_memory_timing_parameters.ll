; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv6xx_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@R600_POWER_LEVEL_HIGH = common dso_local global i64 0, align 8
@R600_POWER_LEVEL_LOW = common dso_local global i64 0, align 8
@R600_POWER_LEVEL_MEDIUM = common dso_local global i64 0, align 8
@SQM_RATIO = common dso_local global i32 0, align 4
@ARB_RFSH_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv6xx_program_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_program_memory_timing_parameters(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv6xx_power_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %7)
  store %struct.rv6xx_power_info* %8, %struct.rv6xx_power_info** %3, align 8
  %9 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %10 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %17 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 255
  %24 = sdiv i32 %23, 64
  %25 = icmp slt i32 %15, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %28 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %44

34:                                               ; preds = %1
  %35 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %36 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 255
  %43 = sdiv i32 %42, 64
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %34, %26
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device* %45, i32 %46, i32 0)
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 64, %48
  %50 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %51 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %49, %56
  %58 = call i32 @STATE0(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 64, %59
  %61 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %62 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @R600_POWER_LEVEL_MEDIUM, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %60, %67
  %69 = call i32 @STATE1(i32 %68)
  %70 = or i32 %58, %69
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 64, %71
  %73 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %74 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %72, %79
  %81 = call i32 @STATE2(i32 %80)
  %82 = or i32 %70, %81
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 64, %83
  %85 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %86 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %84, %91
  %93 = call i32 @STATE3(i32 %92)
  %94 = or i32 %82, %93
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* @SQM_RATIO, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @WREG32(i32 %95, i32 %96)
  %98 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %99 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %100 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @calculate_memory_refresh_rate(%struct.radeon_device* %98, i32 %105)
  %107 = call i32 @POWERMODE0(i32 %106)
  %108 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %109 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %110 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @R600_POWER_LEVEL_MEDIUM, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @calculate_memory_refresh_rate(%struct.radeon_device* %108, i32 %115)
  %117 = call i32 @POWERMODE1(i32 %116)
  %118 = or i32 %107, %117
  %119 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %120 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %121 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @calculate_memory_refresh_rate(%struct.radeon_device* %119, i32 %126)
  %128 = call i32 @POWERMODE2(i32 %127)
  %129 = or i32 %118, %128
  %130 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %131 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %132 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @calculate_memory_refresh_rate(%struct.radeon_device* %130, i32 %137)
  %139 = call i32 @POWERMODE3(i32 %138)
  %140 = or i32 %129, %139
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* @ARB_RFSH_RATE, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @WREG32(i32 %141, i32 %142)
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @STATE0(i32) #1

declare dso_local i32 @STATE1(i32) #1

declare dso_local i32 @STATE2(i32) #1

declare dso_local i32 @STATE3(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @POWERMODE0(i32) #1

declare dso_local i32 @calculate_memory_refresh_rate(%struct.radeon_device*, i32) #1

declare dso_local i32 @POWERMODE1(i32) #1

declare dso_local i32 @POWERMODE2(i32) #1

declare dso_local i32 @POWERMODE3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
