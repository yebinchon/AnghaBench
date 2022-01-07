; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_detect_hw_virtualization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_detect_hw_virtualization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CHIP_TONGA = common dso_local global i64 0, align 8
@CHIP_FIJI = common dso_local global i64 0, align 8
@mmBIF_IOV_FUNC_IDENTIFIER = common dso_local global i32 0, align 4
@BIF_IOV_FUNC_IDENTIFIER = common dso_local global i32 0, align 4
@FUNC_IDENTIFIER = common dso_local global i32 0, align 4
@AMDGPU_SRIOV_CAPS_IS_VF = common dso_local global i32 0, align 4
@IOV_ENABLE = common dso_local global i32 0, align 4
@AMDGPU_SRIOV_CAPS_ENABLE_IOV = common dso_local global i32 0, align 4
@AMDGPU_PASSTHROUGH_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vi_detect_hw_virtualization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vi_detect_hw_virtualization(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CHIP_TONGA, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHIP_FIJI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @mmBIF_IOV_FUNC_IDENTIFIER, align 4
  %17 = call i64 @RREG32(i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* @BIF_IOV_FUNC_IDENTIFIER, align 4
  %20 = load i32, i32* @FUNC_IDENTIFIER, align 4
  %21 = call i64 @REG_GET_FIELD(i64 %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32, i32* @AMDGPU_SRIOV_CAPS_IS_VF, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %23, %15
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* @BIF_IOV_FUNC_IDENTIFIER, align 4
  %33 = load i32, i32* @IOV_ENABLE, align 4
  %34 = call i64 @REG_GET_FIELD(i64 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @AMDGPU_SRIOV_CAPS_ENABLE_IOV, align 4
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36, %30
  br label %44

44:                                               ; preds = %43, %9
  %45 = load i64, i64* %3, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = call i64 (...) @is_virtual_machine()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* @AMDGPU_PASSTHROUGH_MODE, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %50, %47
  br label %58

58:                                               ; preds = %57, %44
  ret void
}

declare dso_local i64 @RREG32(i32) #1

declare dso_local i64 @REG_GET_FIELD(i64, i32, i32) #1

declare dso_local i64 @is_virtual_machine(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
