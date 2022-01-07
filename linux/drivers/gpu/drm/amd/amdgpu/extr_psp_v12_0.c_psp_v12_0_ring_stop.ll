; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_ring_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_ring_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@MP0 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_101 = common dso_local global i32 0, align 4
@GFX_CTRL_CMD_ID_DESTROY_GPCOM_RING = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_64 = common dso_local global i32 0, align 4
@GFX_CTRL_CMD_ID_DESTROY_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, i32)* @psp_v12_0_ring_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v12_0_ring_stop(%struct.psp_context* %0, i32 %1) #0 {
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %8 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %7, i32 0, i32 0
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %6, align 8
  %10 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %11 = call i64 @psp_v12_0_support_vmr_ring(%struct.psp_context* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @MP0, align 4
  %15 = load i32, i32* @mmMP0_SMN_C2PMSG_101, align 4
  %16 = load i32, i32* @GFX_CTRL_CMD_ID_DESTROY_GPCOM_RING, align 4
  %17 = call i32 @WREG32_SOC15(i32 %14, i32 0, i32 %15, i32 %16)
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @MP0, align 4
  %20 = load i32, i32* @mmMP0_SMN_C2PMSG_64, align 4
  %21 = load i32, i32* @GFX_CTRL_CMD_ID_DESTROY_RINGS, align 4
  %22 = call i32 @WREG32_SOC15(i32 %19, i32 0, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = call i32 @mdelay(i32 20)
  %25 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %26 = call i64 @psp_v12_0_support_vmr_ring(%struct.psp_context* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %30 = load i32, i32* @MP0, align 4
  %31 = load i32, i32* @mmMP0_SMN_C2PMSG_101, align 4
  %32 = call i32 @SOC15_REG_OFFSET(i32 %30, i32 0, i32 %31)
  %33 = call i32 @psp_wait_for(%struct.psp_context* %29, i32 %32, i32 -2147483648, i32 -2147483648, i32 0)
  store i32 %33, i32* %5, align 4
  br label %40

34:                                               ; preds = %23
  %35 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %36 = load i32, i32* @MP0, align 4
  %37 = load i32, i32* @mmMP0_SMN_C2PMSG_64, align 4
  %38 = call i32 @SOC15_REG_OFFSET(i32 %36, i32 0, i32 %37)
  %39 = call i32 @psp_wait_for(%struct.psp_context* %35, i32 %38, i32 -2147483648, i32 -2147483648, i32 0)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @psp_v12_0_support_vmr_ring(%struct.psp_context*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @psp_wait_for(%struct.psp_context*, i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
