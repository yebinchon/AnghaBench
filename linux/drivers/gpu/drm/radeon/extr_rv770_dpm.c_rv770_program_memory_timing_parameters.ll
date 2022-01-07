; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_program_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_program_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_ps = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rv7xx_power_info = type { i32 }

@MC_ARB_SQM_RATIO = common dso_local global i32 0, align 4
@MC_ARB_RFSH_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @rv770_program_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_program_memory_timing_parameters(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv7xx_ps*, align 8
  %6 = alloca %struct.rv7xx_power_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %11 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %10)
  store %struct.rv7xx_ps* %11, %struct.rv7xx_ps** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %12)
  store %struct.rv7xx_power_info* %13, %struct.rv7xx_power_info** %6, align 8
  %14 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %15 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %19 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 255
  %23 = sdiv i32 %22, 64
  %24 = icmp slt i32 %17, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %27 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %32 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 255
  %36 = sdiv i32 %35, 64
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %41 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device* %38, i32 %39, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 64, %45
  %47 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %48 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %46, %49
  %51 = call i32 @STATE0(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 64, %52
  %54 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %55 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %53, %57
  %59 = call i32 @STATE1(i32 %58)
  %60 = or i32 %51, %59
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 64, %61
  %63 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %64 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %62, %66
  %68 = call i32 @STATE2(i32 %67)
  %69 = or i32 %60, %68
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 64, %70
  %72 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %73 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %71, %75
  %77 = call i32 @STATE3(i32 %76)
  %78 = or i32 %69, %77
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @MC_ARB_SQM_RATIO, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @WREG32(i32 %79, i32 %80)
  %82 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %83 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %84 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @rv770_calculate_memory_refresh_rate(%struct.radeon_device* %82, i32 %85)
  %87 = call i32 @POWERMODE0(i32 %86)
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %90 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @rv770_calculate_memory_refresh_rate(%struct.radeon_device* %88, i32 %92)
  %94 = call i32 @POWERMODE1(i32 %93)
  %95 = or i32 %87, %94
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %98 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rv770_calculate_memory_refresh_rate(%struct.radeon_device* %96, i32 %100)
  %102 = call i32 @POWERMODE2(i32 %101)
  %103 = or i32 %95, %102
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %106 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rv770_calculate_memory_refresh_rate(%struct.radeon_device* %104, i32 %108)
  %110 = call i32 @POWERMODE3(i32 %109)
  %111 = or i32 %103, %110
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @MC_ARB_RFSH_RATE, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @WREG32(i32 %112, i32 %113)
  ret void
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @STATE0(i32) #1

declare dso_local i32 @STATE1(i32) #1

declare dso_local i32 @STATE2(i32) #1

declare dso_local i32 @STATE3(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @POWERMODE0(i32) #1

declare dso_local i32 @rv770_calculate_memory_refresh_rate(%struct.radeon_device*, i32) #1

declare dso_local i32 @POWERMODE1(i32) #1

declare dso_local i32 @POWERMODE2(i32) #1

declare dso_local i32 @POWERMODE3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
