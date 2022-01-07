; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_rv370_set_pcie_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_rv370_set_pcie_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X0 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X1 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X2 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X4 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X8 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X12 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X16 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_RD_MASK = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_RD_SHIFT = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_RECONFIG_NOW = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_RECONFIG_LATER = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_SHORT_RECONFIG_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv370_set_pcie_lanes(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RADEON_IS_IGP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %80

14:                                               ; preds = %2
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RADEON_IS_PCIE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %80

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %37 [
    i32 0, label %24
    i32 1, label %26
    i32 2, label %28
    i32 4, label %30
    i32 8, label %32
    i32 12, label %34
    i32 16, label %36
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X0, align 4
  store i32 %25, i32* %6, align 4
  br label %39

26:                                               ; preds = %22
  %27 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X1, align 4
  store i32 %27, i32* %6, align 4
  br label %39

28:                                               ; preds = %22
  %29 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X2, align 4
  store i32 %29, i32* %6, align 4
  br label %39

30:                                               ; preds = %22
  %31 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X4, align 4
  store i32 %31, i32* %6, align 4
  br label %39

32:                                               ; preds = %22
  %33 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X8, align 4
  store i32 %33, i32* %6, align 4
  br label %39

34:                                               ; preds = %22
  %35 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X12, align 4
  store i32 %35, i32* %6, align 4
  br label %39

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %22, %36
  %38 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X16, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %34, %32, %30, %28, %26, %24
  %40 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %41 = call i32 @RREG32_PCIE(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_RD_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_RD_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %80

50:                                               ; preds = %39
  %51 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_MASK, align 4
  %52 = load i32, i32* @RADEON_PCIE_LC_RECONFIG_NOW, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RADEON_PCIE_LC_RECONFIG_LATER, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RADEON_PCIE_LC_SHORT_RECONFIG_EN, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @WREG32_PCIE(i32 %64, i32 %65)
  %67 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @RADEON_PCIE_LC_RECONFIG_NOW, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @WREG32_PCIE(i32 %67, i32 %70)
  %72 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %73 = call i32 @RREG32_PCIE(i32 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %77, %50
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %79 = call i32 @RREG32_PCIE(i32 %78)
  store i32 %79, i32* %5, align 4
  br label %74

80:                                               ; preds = %13, %21, %49, %74
  ret void
}

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
