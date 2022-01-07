; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_bootloader_load_sysdrv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_bootloader_load_sysdrv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { i32, i32, i32, i32, i8*, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@MP0 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_81 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_58 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sos fw version = 0x%x.\0A\00", align 1
@mmMP0_SMN_C2PMSG_35 = common dso_local global i32 0, align 4
@PSP_1_MEG = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_36 = common dso_local global i32 0, align 4
@PSP_BL__LOAD_SYSDRV = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_v11_0_bootloader_load_sysdrv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v11_0_bootloader_load_sysdrv(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i8*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  store i8* null, i8** %5, align 8
  %8 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %9 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %8, i32 0, i32 5
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %6, align 8
  %11 = load i32, i32* @MP0, align 4
  %12 = load i32, i32* @mmMP0_SMN_C2PMSG_81, align 4
  %13 = call i8* @RREG32_SOC15(i32 %11, i32 0, i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load i32, i32* @MP0, align 4
  %18 = load i32, i32* @mmMP0_SMN_C2PMSG_58, align 4
  %19 = call i8* @RREG32_SOC15(i32 %17, i32 0, i32 %18)
  %20 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %21 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %26 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @dev_info(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 0, i32* %2, align 4
  br label %76

29:                                               ; preds = %1
  %30 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %31 = load i32, i32* @MP0, align 4
  %32 = load i32, i32* @mmMP0_SMN_C2PMSG_35, align 4
  %33 = call i32 @SOC15_REG_OFFSET(i32 %31, i32 0, i32 %32)
  %34 = call i32 @psp_wait_for(%struct.psp_context* %30, i32 %33, i32 -2147483648, i32 -2147483648, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %76

39:                                               ; preds = %29
  %40 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %41 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PSP_1_MEG, align 4
  %44 = call i32 @memset(i32 %42, i32 0, i32 %43)
  %45 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %46 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %49 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %52 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(i32 %47, i32 %50, i32 %53)
  %55 = load i32, i32* @MP0, align 4
  %56 = load i32, i32* @mmMP0_SMN_C2PMSG_36, align 4
  %57 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %58 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = ashr i32 %59, 20
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @WREG32_SOC15(i32 %55, i32 0, i32 %56, i8* %62)
  %64 = load i8*, i8** @PSP_BL__LOAD_SYSDRV, align 8
  store i8* %64, i8** %5, align 8
  %65 = load i32, i32* @MP0, align 4
  %66 = load i32, i32* @mmMP0_SMN_C2PMSG_35, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @WREG32_SOC15(i32 %65, i32 0, i32 %66, i8* %67)
  %69 = call i32 @mdelay(i32 20)
  %70 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %71 = load i32, i32* @MP0, align 4
  %72 = load i32, i32* @mmMP0_SMN_C2PMSG_35, align 4
  %73 = call i32 @SOC15_REG_OFFSET(i32 %71, i32 0, i32 %72)
  %74 = call i32 @psp_wait_for(%struct.psp_context* %70, i32 %73, i32 -2147483648, i32 -2147483648, i32 0)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %39, %37, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i8* @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

declare dso_local i32 @psp_wait_for(%struct.psp_context*, i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i8*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
