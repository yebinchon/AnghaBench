; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_bootloader_load_sos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_bootloader_load_sos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { i32, i32, i32, i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@MP0 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_81 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_35 = common dso_local global i32 0, align 4
@PSP_1_MEG = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_36 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_v12_0_bootloader_load_sos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v12_0_bootloader_load_sos(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %9 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %8, i32 0, i32 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %6, align 8
  %11 = load i32, i32* @MP0, align 4
  %12 = load i32, i32* @mmMP0_SMN_C2PMSG_81, align 4
  %13 = call i32 @RREG32_SOC15(i32 %11, i32 0, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %19 = load i32, i32* @MP0, align 4
  %20 = load i32, i32* @mmMP0_SMN_C2PMSG_35, align 4
  %21 = call i32 @SOC15_REG_OFFSET(i32 %19, i32 0, i32 %20)
  %22 = call i32 @psp_wait_for(%struct.psp_context* %18, i32 %21, i32 -2147483648, i32 -2147483648, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %17
  %28 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %29 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PSP_1_MEG, align 4
  %32 = call i32 @memset(i32 %30, i32 0, i32 %31)
  %33 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %34 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %37 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %40 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %35, i32 %38, i32 %41)
  %43 = load i32, i32* @MP0, align 4
  %44 = load i32, i32* @mmMP0_SMN_C2PMSG_36, align 4
  %45 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %46 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = ashr i32 %47, 20
  %49 = call i32 @WREG32_SOC15(i32 %43, i32 0, i32 %44, i32 %48)
  store i32 131072, i32* %5, align 4
  %50 = load i32, i32* @MP0, align 4
  %51 = load i32, i32* @mmMP0_SMN_C2PMSG_35, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @WREG32_SOC15(i32 %50, i32 0, i32 %51, i32 %52)
  %54 = call i32 @mdelay(i32 20)
  %55 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %56 = load i32, i32* @MP0, align 4
  %57 = load i32, i32* @mmMP0_SMN_C2PMSG_81, align 4
  %58 = call i32 @SOC15_REG_OFFSET(i32 %56, i32 0, i32 %57)
  %59 = load i32, i32* @MP0, align 4
  %60 = load i32, i32* @mmMP0_SMN_C2PMSG_81, align 4
  %61 = call i32 @RREG32_SOC15(i32 %59, i32 0, i32 %60)
  %62 = call i32 @psp_wait_for(%struct.psp_context* %55, i32 %58, i32 %61, i32 0, i32 1)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %27, %25, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @psp_wait_for(%struct.psp_context*, i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
