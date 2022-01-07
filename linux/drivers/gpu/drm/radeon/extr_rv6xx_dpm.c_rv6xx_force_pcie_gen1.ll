; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_force_pcie_gen1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_force_pcie_gen1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@PCIE_LC_SPEED_CNTL = common dso_local global i32 0, align 4
@LC_GEN2_EN = common dso_local global i32 0, align 4
@LC_INITIATE_LINK_SPEED_CHANGE = common dso_local global i32 0, align 4
@LC_CURRENT_DATA_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv6xx_force_pcie_gen1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_force_pcie_gen1(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %6 = call i32 @RREG32_PCIE_PORT(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @LC_GEN2_EN, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @WREG32_PCIE_PORT(i32 %10, i32 %11)
  %13 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %14 = call i32 @RREG32_PCIE_PORT(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @LC_INITIATE_LINK_SPEED_CHANGE, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @WREG32_PCIE_PORT(i32 %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %36, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %29 = call i32 @RREG32_PCIE_PORT(i32 %28)
  %30 = load i32, i32* @LC_CURRENT_DATA_RATE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %39

34:                                               ; preds = %27
  %35 = call i32 @udelay(i32 1)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %21

39:                                               ; preds = %33, %21
  %40 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %41 = call i32 @RREG32_PCIE_PORT(i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @LC_INITIATE_LINK_SPEED_CHANGE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @WREG32_PCIE_PORT(i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
