; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_populate_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_populate_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_pl = type { i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@MC_ARB_DRAM_TIMING = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING2 = common dso_local global i32 0, align 4
@MC_ARB_BURST_TIME = common dso_local global i32 0, align 4
@STATE0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.rv7xx_pl*, %struct.TYPE_3__*)* @si_populate_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_populate_memory_timing_parameters(%struct.radeon_device* %0, %struct.rv7xx_pl* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.rv7xx_pl*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.rv7xx_pl* %1, %struct.rv7xx_pl** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %5, align 8
  %12 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @si_calculate_memory_refresh_rate(%struct.radeon_device* %10, i32 %13)
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %5, align 8
  %20 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %5, align 8
  %23 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device* %18, i32 %21, i32 %24)
  %26 = load i32, i32* @MC_ARB_DRAM_TIMING, align 4
  %27 = call i32 @RREG32(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @MC_ARB_DRAM_TIMING2, align 4
  %29 = call i32 @RREG32(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %31 = call i32 @RREG32(i32 %30)
  %32 = load i32, i32* @STATE0_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  ret i32 0
}

declare dso_local i64 @si_calculate_memory_refresh_rate(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
