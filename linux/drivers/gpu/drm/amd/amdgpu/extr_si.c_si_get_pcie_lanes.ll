; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_get_pcie_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_get_pcie_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_RD_MASK = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_RD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_get_pcie_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_get_pcie_lanes(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AMD_IS_APU, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %14 = call i32 @RREG32_PCIE_PORT(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @LC_LINK_WIDTH_RD_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @LC_LINK_WIDTH_RD_SHIFT, align 4
  %19 = ashr i32 %17, %18
  switch i32 %19, label %25 [
    i32 132, label %20
    i32 130, label %21
    i32 129, label %22
    i32 128, label %23
    i32 133, label %24
    i32 131, label %24
  ]

20:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %26

21:                                               ; preds = %12
  store i32 2, i32* %2, align 4
  br label %26

22:                                               ; preds = %12
  store i32 4, i32* %2, align 4
  br label %26

23:                                               ; preds = %12
  store i32 8, i32* %2, align 4
  br label %26

24:                                               ; preds = %12, %12
  br label %25

25:                                               ; preds = %12, %24
  store i32 16, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23, %22, %21, %20, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
