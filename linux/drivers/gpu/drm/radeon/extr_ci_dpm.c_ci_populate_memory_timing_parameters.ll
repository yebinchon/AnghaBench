; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_3__ = type { i64, i8*, i8* }

@MC_ARB_DRAM_TIMING = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING2 = common dso_local global i32 0, align 4
@MC_ARB_BURST_TIME = common dso_local global i32 0, align 4
@STATE0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, %struct.TYPE_3__*)* @ci_populate_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_memory_timing_parameters(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device* %12, i32 %13, i32 %14)
  %16 = load i32, i32* @MC_ARB_DRAM_TIMING, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @MC_ARB_DRAM_TIMING2, align 4
  %19 = call i32 @RREG32(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %21 = call i32 @RREG32(i32 %20)
  %22 = load i32, i32* @STATE0_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ci_register_patching_mc_arb(%struct.radeon_device* %24, i32 %25, i32 %26, i32* %10)
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  ret i32 0
}

declare dso_local i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @ci_register_patching_mc_arb(%struct.radeon_device*, i32, i32, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
