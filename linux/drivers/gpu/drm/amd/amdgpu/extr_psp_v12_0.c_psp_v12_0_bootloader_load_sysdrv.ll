; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_bootloader_load_sysdrv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_bootloader_load_sysdrv.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_v12_0_bootloader_load_sysdrv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v12_0_bootloader_load_sysdrv(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %9 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %8, i32 0, i32 5
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %6, align 8
  %11 = load i32, i32* @MP0, align 4
  %12 = load i32, i32* @mmMP0_SMN_C2PMSG_81, align 4
  %13 = call i8* @RREG32_SOC15(i32 %11, i32 0, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i32, i32* @MP0, align 4
  %19 = load i32, i32* @mmMP0_SMN_C2PMSG_58, align 4
  %20 = call i8* @RREG32_SOC15(i32 %18, i32 0, i32 %19)
  %21 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %22 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %24 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %23, i32 0, i32 4
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 0, i32* %2, align 4
  br label %71

27:                                               ; preds = %1
  %28 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %29 = load i32, i32* @MP0, align 4
  %30 = load i32, i32* @mmMP0_SMN_C2PMSG_35, align 4
  %31 = call i32 @SOC15_REG_OFFSET(i32 %29, i32 0, i32 %30)
  %32 = call i32 @psp_wait_for(%struct.psp_context* %28, i32 %31, i32 -2147483648, i32 -2147483648, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %71

37:                                               ; preds = %27
  %38 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %39 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PSP_1_MEG, align 4
  %42 = call i32 @memset(i32 %40, i32 0, i32 %41)
  %43 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %44 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %47 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %50 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %45, i32 %48, i32 %51)
  %53 = load i32, i32* @MP0, align 4
  %54 = load i32, i32* @mmMP0_SMN_C2PMSG_36, align 4
  %55 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %56 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 20
  %59 = call i32 @WREG32_SOC15(i32 %53, i32 0, i32 %54, i32 %58)
  store i32 65536, i32* %5, align 4
  %60 = load i32, i32* @MP0, align 4
  %61 = load i32, i32* @mmMP0_SMN_C2PMSG_35, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @WREG32_SOC15(i32 %60, i32 0, i32 %61, i32 %62)
  %64 = call i32 @mdelay(i32 20)
  %65 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %66 = load i32, i32* @MP0, align 4
  %67 = load i32, i32* @mmMP0_SMN_C2PMSG_35, align 4
  %68 = call i32 @SOC15_REG_OFFSET(i32 %66, i32 0, i32 %67)
  %69 = call i32 @psp_wait_for(%struct.psp_context* %65, i32 %68, i32 -2147483648, i32 -2147483648, i32 0)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %37, %35, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i8* @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i8*) #1

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
