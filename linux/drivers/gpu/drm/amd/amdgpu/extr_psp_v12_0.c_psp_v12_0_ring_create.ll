; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_ring_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_ring_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device*, %struct.psp_ring }
%struct.amdgpu_device = type { i32 }
%struct.psp_ring = type { i32, i32 }

@MP0 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_102 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_103 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_101 = common dso_local global i32 0, align 4
@GFX_CTRL_CMD_ID_INIT_GPCOM_RING = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_69 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_70 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_71 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, i32)* @psp_v12_0_ring_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v12_0_ring_create(%struct.psp_context* %0, i32 %1) #0 {
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.psp_ring*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %10 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %9, i32 0, i32 1
  store %struct.psp_ring* %10, %struct.psp_ring** %7, align 8
  %11 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %12 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %8, align 8
  %14 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %15 = call i64 @psp_v12_0_support_vmr_ring(%struct.psp_context* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load %struct.psp_ring*, %struct.psp_ring** %7, align 8
  %19 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @lower_32_bits(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @MP0, align 4
  %23 = load i32, i32* @mmMP0_SMN_C2PMSG_102, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @WREG32_SOC15(i32 %22, i32 0, i32 %23, i32 %24)
  %26 = load %struct.psp_ring*, %struct.psp_ring** %7, align 8
  %27 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @upper_32_bits(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @MP0, align 4
  %31 = load i32, i32* @mmMP0_SMN_C2PMSG_103, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @WREG32_SOC15(i32 %30, i32 0, i32 %31, i32 %32)
  %34 = load i32, i32* @MP0, align 4
  %35 = load i32, i32* @mmMP0_SMN_C2PMSG_101, align 4
  %36 = load i32, i32* @GFX_CTRL_CMD_ID_INIT_GPCOM_RING, align 4
  %37 = call i32 @WREG32_SOC15(i32 %34, i32 0, i32 %35, i32 %36)
  %38 = call i32 @mdelay(i32 20)
  %39 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %40 = load i32, i32* @MP0, align 4
  %41 = load i32, i32* @mmMP0_SMN_C2PMSG_101, align 4
  %42 = call i32 @SOC15_REG_OFFSET(i32 %40, i32 0, i32 %41)
  %43 = call i32 @psp_wait_for(%struct.psp_context* %39, i32 %42, i32 -2147483648, i32 -2147418113, i32 0)
  store i32 %43, i32* %5, align 4
  br label %81

44:                                               ; preds = %2
  %45 = load %struct.psp_ring*, %struct.psp_ring** %7, align 8
  %46 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @lower_32_bits(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @MP0, align 4
  %50 = load i32, i32* @mmMP0_SMN_C2PMSG_69, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @WREG32_SOC15(i32 %49, i32 0, i32 %50, i32 %51)
  %53 = load %struct.psp_ring*, %struct.psp_ring** %7, align 8
  %54 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @upper_32_bits(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @MP0, align 4
  %58 = load i32, i32* @mmMP0_SMN_C2PMSG_70, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @WREG32_SOC15(i32 %57, i32 0, i32 %58, i32 %59)
  %61 = load %struct.psp_ring*, %struct.psp_ring** %7, align 8
  %62 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @MP0, align 4
  %65 = load i32, i32* @mmMP0_SMN_C2PMSG_71, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @WREG32_SOC15(i32 %64, i32 0, i32 %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 %69, 16
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @MP0, align 4
  %72 = load i32, i32* @mmMP0_SMN_C2PMSG_64, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @WREG32_SOC15(i32 %71, i32 0, i32 %72, i32 %73)
  %75 = call i32 @mdelay(i32 20)
  %76 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %77 = load i32, i32* @MP0, align 4
  %78 = load i32, i32* @mmMP0_SMN_C2PMSG_64, align 4
  %79 = call i32 @SOC15_REG_OFFSET(i32 %77, i32 0, i32 %78)
  %80 = call i32 @psp_wait_for(%struct.psp_context* %76, i32 %79, i32 -2147483648, i32 -2147418113, i32 0)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %44, %17
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @psp_v12_0_support_vmr_ring(%struct.psp_context*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @psp_wait_for(%struct.psp_context*, i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
