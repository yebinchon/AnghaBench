; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_sstp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_sstp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@SUMO_SST_DFLT = common dso_local global i32 0, align 4
@CG_SSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sumo_program_sstp(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call i32 @radeon_get_xclk(%struct.radeon_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @SUMO_SST_DFLT, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @r600_calculate_u_and_p(i32 %8, i32 %9, i32 16, i32* %3, i32* %4)
  %11 = load i32, i32* @CG_SSP, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @SSTU(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @SST(i32 %14)
  %16 = or i32 %13, %15
  %17 = call i32 @WREG32(i32 %11, i32 %16)
  ret void
}

declare dso_local i32 @radeon_get_xclk(%struct.radeon_device*) #1

declare dso_local i32 @r600_calculate_u_and_p(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @SSTU(i32) #1

declare dso_local i32 @SST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
