; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_reroute_ih.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_reroute_ih.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@IH_CLIENT_CFG_DATA = common dso_local global i32 0, align 4
@CREDIT_RETURN_ADDR = common dso_local global i32 0, align 4
@CLIENT_TYPE = common dso_local global i32 0, align 4
@RING_ID = common dso_local global i32 0, align 4
@MP0 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_69 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_70 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_64 = common dso_local global i32 0, align 4
@GFX_CTRL_CMD_ID_GBR_IH_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psp_context*)* @psp_v11_0_reroute_ih to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psp_v11_0_reroute_ih(%struct.psp_context* %0) #0 {
  %2 = alloca %struct.psp_context*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %2, align 8
  %5 = load %struct.psp_context*, %struct.psp_context** %2, align 8
  %6 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %5, i32 0, i32 0
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %3, align 8
  %8 = load i32, i32* @IH_CLIENT_CFG_DATA, align 4
  %9 = load i32, i32* @CREDIT_RETURN_ADDR, align 4
  %10 = call i32 @REG_SET_FIELD(i32 0, i32 %8, i32 %9, i32 74827)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IH_CLIENT_CFG_DATA, align 4
  %13 = load i32, i32* @CLIENT_TYPE, align 4
  %14 = call i32 @REG_SET_FIELD(i32 %11, i32 %12, i32 %13, i32 1)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IH_CLIENT_CFG_DATA, align 4
  %17 = load i32, i32* @RING_ID, align 4
  %18 = call i32 @REG_SET_FIELD(i32 %15, i32 %16, i32 %17, i32 1)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @MP0, align 4
  %20 = load i32, i32* @mmMP0_SMN_C2PMSG_69, align 4
  %21 = call i32 @WREG32_SOC15(i32 %19, i32 0, i32 %20, i32 3)
  %22 = load i32, i32* @MP0, align 4
  %23 = load i32, i32* @mmMP0_SMN_C2PMSG_70, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @WREG32_SOC15(i32 %22, i32 0, i32 %23, i32 %24)
  %26 = load i32, i32* @MP0, align 4
  %27 = load i32, i32* @mmMP0_SMN_C2PMSG_64, align 4
  %28 = load i32, i32* @GFX_CTRL_CMD_ID_GBR_IH_SET, align 4
  %29 = call i32 @WREG32_SOC15(i32 %26, i32 0, i32 %27, i32 %28)
  %30 = call i32 @mdelay(i32 20)
  %31 = load %struct.psp_context*, %struct.psp_context** %2, align 8
  %32 = load i32, i32* @MP0, align 4
  %33 = load i32, i32* @mmMP0_SMN_C2PMSG_64, align 4
  %34 = call i32 @SOC15_REG_OFFSET(i32 %32, i32 0, i32 %33)
  %35 = call i32 @psp_wait_for(%struct.psp_context* %31, i32 %34, i32 -2147483648, i32 -2147418113, i32 0)
  %36 = load i32, i32* @IH_CLIENT_CFG_DATA, align 4
  %37 = load i32, i32* @CREDIT_RETURN_ADDR, align 4
  %38 = call i32 @REG_SET_FIELD(i32 0, i32 %36, i32 %37, i32 74091)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @IH_CLIENT_CFG_DATA, align 4
  %41 = load i32, i32* @RING_ID, align 4
  %42 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41, i32 1)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @MP0, align 4
  %44 = load i32, i32* @mmMP0_SMN_C2PMSG_69, align 4
  %45 = call i32 @WREG32_SOC15(i32 %43, i32 0, i32 %44, i32 4)
  %46 = load i32, i32* @MP0, align 4
  %47 = load i32, i32* @mmMP0_SMN_C2PMSG_70, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @WREG32_SOC15(i32 %46, i32 0, i32 %47, i32 %48)
  %50 = load i32, i32* @MP0, align 4
  %51 = load i32, i32* @mmMP0_SMN_C2PMSG_64, align 4
  %52 = load i32, i32* @GFX_CTRL_CMD_ID_GBR_IH_SET, align 4
  %53 = call i32 @WREG32_SOC15(i32 %50, i32 0, i32 %51, i32 %52)
  %54 = call i32 @mdelay(i32 20)
  %55 = load %struct.psp_context*, %struct.psp_context** %2, align 8
  %56 = load i32, i32* @MP0, align 4
  %57 = load i32, i32* @mmMP0_SMN_C2PMSG_64, align 4
  %58 = call i32 @SOC15_REG_OFFSET(i32 %56, i32 0, i32 %57)
  %59 = call i32 @psp_wait_for(%struct.psp_context* %55, i32 %58, i32 -2147483648, i32 -2147418113, i32 0)
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

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
