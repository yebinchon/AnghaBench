; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_program_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_program_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_ps = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MC_ARB_BURST_TIME = common dso_local global i32 0, align 4
@STATE1_MASK = common dso_local global i32 0, align 4
@STATE2_MASK = common dso_local global i32 0, align 4
@STATE3_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cypress_program_memory_timing_parameters(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv7xx_ps*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %7 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %8 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %7)
  store %struct.rv7xx_ps* %8, %struct.rv7xx_ps** %5, align 8
  %9 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %10 = call i32 @RREG32(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @STATE1_MASK, align 4
  %12 = load i32, i32* @STATE2_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @STATE3_MASK, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %21 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %25 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cypress_calculate_burst_time(%struct.radeon_device* %19, i32 %23, i32 %27)
  %29 = call i32 @STATE1(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %34 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %38 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cypress_calculate_burst_time(%struct.radeon_device* %32, i32 %36, i32 %40)
  %42 = call i32 @STATE2(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %47 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %51 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cypress_calculate_burst_time(%struct.radeon_device* %45, i32 %49, i32 %53)
  %55 = call i32 @STATE3(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %60 = call i32 @rv730_program_memory_timing_parameters(%struct.radeon_device* %58, %struct.radeon_ps* %59)
  %61 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @WREG32(i32 %61, i32 %62)
  ret void
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @STATE1(i32) #1

declare dso_local i32 @cypress_calculate_burst_time(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @STATE2(i32) #1

declare dso_local i32 @STATE3(i32) #1

declare dso_local i32 @rv730_program_memory_timing_parameters(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
