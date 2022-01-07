; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_program_at.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_program_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.igp_power_info = type { i32 }

@FVTHROT_TARGET_REG = common dso_local global i32 0, align 4
@FVTHROT_CB1 = common dso_local global i32 0, align 4
@FVTHROT_CB2 = common dso_local global i32 0, align 4
@FVTHROT_CB3 = common dso_local global i32 0, align 4
@FVTHROT_CB4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rs780_program_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs780_program_at(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.igp_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device* %4)
  store %struct.igp_power_info* %5, %struct.igp_power_info** %3, align 8
  %6 = load i32, i32* @FVTHROT_TARGET_REG, align 4
  %7 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %8 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 30000000, %9
  %11 = call i32 @WREG32(i32 %6, i32 %10)
  %12 = load i32, i32* @FVTHROT_CB1, align 4
  %13 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %14 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 5000000, %15
  %17 = call i32 @WREG32(i32 %12, i32 %16)
  %18 = load i32, i32* @FVTHROT_CB2, align 4
  %19 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %20 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 10000000, %21
  %23 = call i32 @WREG32(i32 %18, i32 %22)
  %24 = load i32, i32* @FVTHROT_CB3, align 4
  %25 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %26 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 30000000, %27
  %29 = call i32 @WREG32(i32 %24, i32 %28)
  %30 = load i32, i32* @FVTHROT_CB4, align 4
  %31 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %32 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 50000000, %33
  %35 = call i32 @WREG32(i32 %30, i32 %34)
  ret void
}

declare dso_local %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
