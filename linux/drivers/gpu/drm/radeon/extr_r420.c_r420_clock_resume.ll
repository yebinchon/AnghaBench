; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r420.c_r420_clock_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r420.c_r420_clock_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@radeon_dynclks = common dso_local global i32 0, align 4
@R_00000D_SCLK_CNTL = common dso_local global i32 0, align 4
@CHIP_R420 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r420_clock_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r420_clock_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @radeon_dynclks, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* @radeon_dynclks, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = call i32 @radeon_atom_set_clock_gating(%struct.radeon_device* %10, i32 1)
  br label %12

12:                                               ; preds = %9, %6, %1
  %13 = load i32, i32* @R_00000D_SCLK_CNTL, align 4
  %14 = call i32 @RREG32_PLL(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = call i32 @S_00000D_FORCE_CP(i32 1)
  %16 = call i32 @S_00000D_FORCE_VIP(i32 1)
  %17 = or i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHIP_R420, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %12
  %26 = call i32 @S_00000D_FORCE_PX(i32 1)
  %27 = call i32 @S_00000D_FORCE_TX(i32 1)
  %28 = or i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %12
  %32 = load i32, i32* @R_00000D_SCLK_CNTL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @WREG32_PLL(i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @radeon_atom_set_clock_gating(%struct.radeon_device*, i32) #1

declare dso_local i32 @RREG32_PLL(i32) #1

declare dso_local i32 @S_00000D_FORCE_CP(i32) #1

declare dso_local i32 @S_00000D_FORCE_VIP(i32) #1

declare dso_local i32 @S_00000D_FORCE_PX(i32) #1

declare dso_local i32 @S_00000D_FORCE_TX(i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
