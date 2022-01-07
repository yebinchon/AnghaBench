; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.smc_firmware_header_v1_0 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MP1_SRAM = common dso_local global i32 0, align 4
@MP1_SMC_SIZE = common dso_local global i32 0, align 4
@MP1_Public = common dso_local global i32 0, align 4
@smnMP1_PUB_CTRL = common dso_local global i32 0, align 4
@MP1_SMN_PUB_CTRL__RESET_MASK = common dso_local global i32 0, align 4
@smnMP1_FIRMWARE_FLAGS = common dso_local global i32 0, align 4
@MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED_MASK = common dso_local global i32 0, align 4
@MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED__SHIFT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_load_microcode(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.smc_firmware_header_v1_0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %10 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load i32, i32* @MP1_SRAM, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.smc_firmware_header_v1_0*
  store %struct.smc_firmware_header_v1_0* %20, %struct.smc_firmware_header_v1_0** %6, align 8
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %6, align 8
  %28 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  %32 = add nsw i64 %26, %31
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %5, align 8
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %50, %1
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MP1_SMC_SIZE, align 4
  %37 = sdiv i32 %36, 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @WREG32_PCIE(i32 %41, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %34

53:                                               ; preds = %34
  %54 = load i32, i32* @MP1_Public, align 4
  %55 = load i32, i32* @smnMP1_PUB_CTRL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MP1_SMN_PUB_CTRL__RESET_MASK, align 4
  %58 = and i32 1, %57
  %59 = call i32 @WREG32_PCIE(i32 %56, i32 %58)
  %60 = load i32, i32* @MP1_Public, align 4
  %61 = load i32, i32* @smnMP1_PUB_CTRL, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @MP1_SMN_PUB_CTRL__RESET_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 1, %64
  %66 = call i32 @WREG32_PCIE(i32 %62, i32 %65)
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %87, %53
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load i32, i32* @MP1_Public, align 4
  %75 = load i32, i32* @smnMP1_FIRMWARE_FLAGS, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @RREG32_PCIE(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED__SHIFT, align 4
  %82 = ashr i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %90

85:                                               ; preds = %73
  %86 = call i32 @udelay(i32 1)
  br label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %67

90:                                               ; preds = %84, %67
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @ETIME, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
