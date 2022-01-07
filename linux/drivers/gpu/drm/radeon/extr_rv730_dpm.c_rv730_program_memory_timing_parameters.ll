; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_program_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_program_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_ps = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MC_ARB_RFSH_RATE = common dso_local global i32 0, align 4
@POWERMODE1_MASK = common dso_local global i32 0, align 4
@POWERMODE2_MASK = common dso_local global i32 0, align 4
@POWERMODE3_MASK = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING2 = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING_3 = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING2_3 = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING_2 = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING2_2 = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING_1 = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING2_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv730_program_memory_timing_parameters(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv7xx_ps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %12 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %11)
  store %struct.rv7xx_ps* %12, %struct.rv7xx_ps** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @MC_ARB_RFSH_RATE, align 4
  %14 = call i32 @RREG32(i32 %13)
  %15 = load i32, i32* @POWERMODE1_MASK, align 4
  %16 = load i32, i32* @POWERMODE2_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @POWERMODE3_MASK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %14, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %24 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rv770_calculate_memory_refresh_rate(%struct.radeon_device* %22, i32 %26)
  %28 = call i32 @POWERMODE1(i32 %27)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %31 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rv770_calculate_memory_refresh_rate(%struct.radeon_device* %29, i32 %33)
  %35 = call i32 @POWERMODE2(i32 %34)
  %36 = or i32 %28, %35
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %39 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rv770_calculate_memory_refresh_rate(%struct.radeon_device* %37, i32 %41)
  %43 = call i32 @POWERMODE3(i32 %42)
  %44 = or i32 %36, %43
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @MC_ARB_RFSH_RATE, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  %50 = load i32, i32* @MC_ARB_DRAM_TIMING, align 4
  %51 = call i32 @RREG32(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @MC_ARB_DRAM_TIMING2, align 4
  %53 = call i32 @RREG32(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %56 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %60 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device* %54, i32 %58, i32 %62)
  %64 = load i32, i32* @MC_ARB_DRAM_TIMING, align 4
  %65 = call i32 @RREG32(i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @MC_ARB_DRAM_TIMING2, align 4
  %67 = call i32 @RREG32(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @MC_ARB_DRAM_TIMING_3, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @WREG32(i32 %68, i32 %69)
  %71 = load i32, i32* @MC_ARB_DRAM_TIMING2_3, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @WREG32(i32 %71, i32 %72)
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %76 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %80 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device* %74, i32 %78, i32 %82)
  %84 = load i32, i32* @MC_ARB_DRAM_TIMING, align 4
  %85 = call i32 @RREG32(i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* @MC_ARB_DRAM_TIMING2, align 4
  %87 = call i32 @RREG32(i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* @MC_ARB_DRAM_TIMING_2, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @WREG32(i32 %88, i32 %89)
  %91 = load i32, i32* @MC_ARB_DRAM_TIMING2_2, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @WREG32(i32 %91, i32 %92)
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %96 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %100 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device* %94, i32 %98, i32 %102)
  %104 = load i32, i32* @MC_ARB_DRAM_TIMING, align 4
  %105 = call i32 @RREG32(i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* @MC_ARB_DRAM_TIMING2, align 4
  %107 = call i32 @RREG32(i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* @MC_ARB_DRAM_TIMING_1, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @WREG32(i32 %108, i32 %109)
  %111 = load i32, i32* @MC_ARB_DRAM_TIMING2_1, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @WREG32(i32 %111, i32 %112)
  %114 = load i32, i32* @MC_ARB_DRAM_TIMING, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @WREG32(i32 %114, i32 %115)
  %117 = load i32, i32* @MC_ARB_DRAM_TIMING2, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @WREG32(i32 %117, i32 %118)
  ret void
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @POWERMODE1(i32) #1

declare dso_local i32 @rv770_calculate_memory_refresh_rate(%struct.radeon_device*, i32) #1

declare dso_local i32 @POWERMODE2(i32) #1

declare dso_local i32 @POWERMODE3(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
