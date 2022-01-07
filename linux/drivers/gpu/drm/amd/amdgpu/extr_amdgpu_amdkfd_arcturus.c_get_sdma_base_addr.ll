; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_arcturus.c_get_sdma_base_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_arcturus.c_get_sdma_base_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@SDMA0 = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_RB_CNTL = common dso_local global i32 0, align 4
@SDMA1 = common dso_local global i32 0, align 4
@mmSDMA1_RLC0_RB_CNTL = common dso_local global i32 0, align 4
@SDMA2 = common dso_local global i32 0, align 4
@mmSDMA2_RLC0_RB_CNTL = common dso_local global i32 0, align 4
@SDMA3 = common dso_local global i32 0, align 4
@mmSDMA3_RLC0_RB_CNTL = common dso_local global i32 0, align 4
@SDMA4 = common dso_local global i32 0, align 4
@mmSDMA4_RLC0_RB_CNTL = common dso_local global i32 0, align 4
@SDMA5 = common dso_local global i32 0, align 4
@mmSDMA5_RLC0_RB_CNTL = common dso_local global i32 0, align 4
@SDMA6 = common dso_local global i32 0, align 4
@mmSDMA6_RLC0_RB_CNTL = common dso_local global i32 0, align 4
@SDMA7 = common dso_local global i32 0, align 4
@mmSDMA7_RLC0_RB_CNTL = common dso_local global i32 0, align 4
@mmSDMA0_RLC1_RB_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sdma base address: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32)* @get_sdma_base_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sdma_base_addr(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %10 = load i32, i32* @SDMA0, align 4
  %11 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %12 = call i32 @SOC15_REG_OFFSET(i32 %10, i32 0, i32 %11)
  %13 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %14 = sub i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = getelementptr inbounds i32, i32* %9, i64 1
  %16 = load i32, i32* @SDMA1, align 4
  %17 = load i32, i32* @mmSDMA1_RLC0_RB_CNTL, align 4
  %18 = call i32 @SOC15_REG_OFFSET(i32 %16, i32 0, i32 %17)
  %19 = load i32, i32* @mmSDMA1_RLC0_RB_CNTL, align 4
  %20 = sub i32 %18, %19
  store i32 %20, i32* %15, align 4
  %21 = getelementptr inbounds i32, i32* %15, i64 1
  %22 = load i32, i32* @SDMA2, align 4
  %23 = load i32, i32* @mmSDMA2_RLC0_RB_CNTL, align 4
  %24 = call i32 @SOC15_REG_OFFSET(i32 %22, i32 0, i32 %23)
  %25 = load i32, i32* @mmSDMA2_RLC0_RB_CNTL, align 4
  %26 = sub i32 %24, %25
  store i32 %26, i32* %21, align 4
  %27 = getelementptr inbounds i32, i32* %21, i64 1
  %28 = load i32, i32* @SDMA3, align 4
  %29 = load i32, i32* @mmSDMA3_RLC0_RB_CNTL, align 4
  %30 = call i32 @SOC15_REG_OFFSET(i32 %28, i32 0, i32 %29)
  %31 = load i32, i32* @mmSDMA3_RLC0_RB_CNTL, align 4
  %32 = sub i32 %30, %31
  store i32 %32, i32* %27, align 4
  %33 = getelementptr inbounds i32, i32* %27, i64 1
  %34 = load i32, i32* @SDMA4, align 4
  %35 = load i32, i32* @mmSDMA4_RLC0_RB_CNTL, align 4
  %36 = call i32 @SOC15_REG_OFFSET(i32 %34, i32 0, i32 %35)
  %37 = load i32, i32* @mmSDMA4_RLC0_RB_CNTL, align 4
  %38 = sub i32 %36, %37
  store i32 %38, i32* %33, align 4
  %39 = getelementptr inbounds i32, i32* %33, i64 1
  %40 = load i32, i32* @SDMA5, align 4
  %41 = load i32, i32* @mmSDMA5_RLC0_RB_CNTL, align 4
  %42 = call i32 @SOC15_REG_OFFSET(i32 %40, i32 0, i32 %41)
  %43 = load i32, i32* @mmSDMA5_RLC0_RB_CNTL, align 4
  %44 = sub i32 %42, %43
  store i32 %44, i32* %39, align 4
  %45 = getelementptr inbounds i32, i32* %39, i64 1
  %46 = load i32, i32* @SDMA6, align 4
  %47 = load i32, i32* @mmSDMA6_RLC0_RB_CNTL, align 4
  %48 = call i32 @SOC15_REG_OFFSET(i32 %46, i32 0, i32 %47)
  %49 = load i32, i32* @mmSDMA6_RLC0_RB_CNTL, align 4
  %50 = sub i32 %48, %49
  store i32 %50, i32* %45, align 4
  %51 = getelementptr inbounds i32, i32* %45, i64 1
  %52 = load i32, i32* @SDMA7, align 4
  %53 = load i32, i32* @mmSDMA7_RLC0_RB_CNTL, align 4
  %54 = call i32 @SOC15_REG_OFFSET(i32 %52, i32 0, i32 %53)
  %55 = load i32, i32* @mmSDMA7_RLC0_RB_CNTL, align 4
  %56 = sub i32 %54, %55
  store i32 %56, i32* %51, align 4
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @mmSDMA0_RLC1_RB_CNTL, align 4
  %63 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %64 = sub i32 %62, %63
  %65 = mul i32 %61, %64
  %66 = add i32 %60, %65
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
