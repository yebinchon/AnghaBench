; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_clock_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_clock_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@radeon_dynclks = common dso_local global i32 0, align 4
@R_00000F_CP_DYN_CNTL = common dso_local global i32 0, align 4
@R_000011_E2_DYN_CNTL = common dso_local global i32 0, align 4
@R_000013_IDCT_DYN_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv515_clock_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load i32, i32* @radeon_dynclks, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, i32* @radeon_dynclks, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = call i32 @radeon_atom_set_clock_gating(%struct.radeon_device* %9, i32 1)
  br label %11

11:                                               ; preds = %8, %5, %1
  %12 = load i32, i32* @R_00000F_CP_DYN_CNTL, align 4
  %13 = load i32, i32* @R_00000F_CP_DYN_CNTL, align 4
  %14 = call i32 @RREG32_PLL(i32 %13)
  %15 = call i32 @S_00000F_CP_FORCEON(i32 1)
  %16 = or i32 %14, %15
  %17 = call i32 @WREG32_PLL(i32 %12, i32 %16)
  %18 = load i32, i32* @R_000011_E2_DYN_CNTL, align 4
  %19 = load i32, i32* @R_000011_E2_DYN_CNTL, align 4
  %20 = call i32 @RREG32_PLL(i32 %19)
  %21 = call i32 @S_000011_E2_FORCEON(i32 1)
  %22 = or i32 %20, %21
  %23 = call i32 @WREG32_PLL(i32 %18, i32 %22)
  %24 = load i32, i32* @R_000013_IDCT_DYN_CNTL, align 4
  %25 = load i32, i32* @R_000013_IDCT_DYN_CNTL, align 4
  %26 = call i32 @RREG32_PLL(i32 %25)
  %27 = call i32 @S_000013_IDCT_FORCEON(i32 1)
  %28 = or i32 %26, %27
  %29 = call i32 @WREG32_PLL(i32 %24, i32 %28)
  ret void
}

declare dso_local i32 @radeon_atom_set_clock_gating(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

declare dso_local i32 @RREG32_PLL(i32) #1

declare dso_local i32 @S_00000F_CP_FORCEON(i32) #1

declare dso_local i32 @S_000011_E2_FORCEON(i32) #1

declare dso_local i32 @S_000013_IDCT_FORCEON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
