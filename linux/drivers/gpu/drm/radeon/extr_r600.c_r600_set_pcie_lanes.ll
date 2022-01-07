; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_set_pcie_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_set_pcie_lanes.c"
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
@.str = private unnamed_addr constant [31 x i8] c"invalid pcie lane request: %d\0A\00", align 1
@RADEON_PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_RECONFIG_NOW = common dso_local global i32 0, align 4
@R600_PCIE_LC_RECONFIG_ARC_MISSING_ESCAPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_set_pcie_lanes(%struct.radeon_device* %0, i32 %1) #0 {
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
  br label %68

14:                                               ; preds = %2
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RADEON_IS_PCIE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %68

22:                                               ; preds = %14
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = call i64 @ASIC_IS_X2(%struct.radeon_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %68

27:                                               ; preds = %22
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = call i32 @radeon_gui_idle(%struct.radeon_device* %28)
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %45 [
    i32 0, label %31
    i32 1, label %33
    i32 2, label %35
    i32 4, label %37
    i32 8, label %39
    i32 12, label %41
    i32 16, label %43
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X0, align 4
  store i32 %32, i32* %6, align 4
  br label %48

33:                                               ; preds = %27
  %34 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X1, align 4
  store i32 %34, i32* %6, align 4
  br label %48

35:                                               ; preds = %27
  %36 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X2, align 4
  store i32 %36, i32* %6, align 4
  br label %48

37:                                               ; preds = %27
  %38 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X4, align 4
  store i32 %38, i32* %6, align 4
  br label %48

39:                                               ; preds = %27
  %40 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X8, align 4
  store i32 %40, i32* %6, align 4
  br label %48

41:                                               ; preds = %27
  %42 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X12, align 4
  store i32 %42, i32* %6, align 4
  br label %48

43:                                               ; preds = %27
  %44 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X16, align 4
  store i32 %44, i32* %6, align 4
  br label %48

45:                                               ; preds = %27
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %68

48:                                               ; preds = %43, %41, %39, %37, %35, %33, %31
  %49 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %50 = call i32 @RREG32_PCIE_PORT(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @RADEON_PCIE_LC_RECONFIG_NOW, align 4
  %61 = load i32, i32* @R600_PCIE_LC_RECONFIG_ARC_MISSING_ESCAPE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @WREG32_PCIE_PORT(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %48, %45, %26, %21, %13
  ret void
}

declare dso_local i64 @ASIC_IS_X2(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gui_idle(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
