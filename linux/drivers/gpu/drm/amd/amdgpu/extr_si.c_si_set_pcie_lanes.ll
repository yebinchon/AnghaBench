; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_set_pcie_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_set_pcie_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_X0 = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_X1 = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_X2 = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_X4 = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_X8 = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_X16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid pcie lane request: %d\0A\00", align 1
@PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@LC_RECONFIG_NOW = common dso_local global i32 0, align 4
@LC_RECONFIG_ARC_MISSING_ESCAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @si_set_pcie_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_set_pcie_lanes(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AMD_IS_APU, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %51

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %28 [
    i32 0, label %16
    i32 1, label %18
    i32 2, label %20
    i32 4, label %22
    i32 8, label %24
    i32 16, label %26
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @LC_LINK_WIDTH_X0, align 4
  store i32 %17, i32* %6, align 4
  br label %31

18:                                               ; preds = %14
  %19 = load i32, i32* @LC_LINK_WIDTH_X1, align 4
  store i32 %19, i32* %6, align 4
  br label %31

20:                                               ; preds = %14
  %21 = load i32, i32* @LC_LINK_WIDTH_X2, align 4
  store i32 %21, i32* %6, align 4
  br label %31

22:                                               ; preds = %14
  %23 = load i32, i32* @LC_LINK_WIDTH_X4, align 4
  store i32 %23, i32* %6, align 4
  br label %31

24:                                               ; preds = %14
  %25 = load i32, i32* @LC_LINK_WIDTH_X8, align 4
  store i32 %25, i32* %6, align 4
  br label %31

26:                                               ; preds = %14
  %27 = load i32, i32* @LC_LINK_WIDTH_X16, align 4
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %51

31:                                               ; preds = %26, %24, %22, %20, %18, %16
  %32 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %33 = call i32 @RREG32_PCIE_PORT(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @LC_LINK_WIDTH_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @LC_LINK_WIDTH_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @LC_RECONFIG_NOW, align 4
  %44 = load i32, i32* @LC_RECONFIG_ARC_MISSING_ESCAPE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @WREG32_PCIE_PORT(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %31, %28, %13
  ret void
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
