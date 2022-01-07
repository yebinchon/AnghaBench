; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v1_0.c_gfxhub_v1_0_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfxhub_v1_0.c_gfxhub_v1_0_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_vmhub* }
%struct.amdgpu_vmhub = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@AMDGPU_GFXHUB_0 = common dso_local global i64 0, align 8
@GC = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 = common dso_local global i32 0, align 4
@mmVM_INVALIDATE_ENG0_REQ = common dso_local global i32 0, align 4
@mmVM_INVALIDATE_ENG0_ACK = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@mmVM_L2_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@mmVM_L2_PROTECTION_FAULT_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfxhub_v1_0_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_vmhub*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %5, align 8
  %7 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %8 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %6, i64 %7
  store %struct.amdgpu_vmhub* %8, %struct.amdgpu_vmhub** %3, align 8
  %9 = load i32, i32* @GC, align 4
  %10 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32, align 4
  %11 = call i8* @SOC15_REG_OFFSET(i32 %9, i32 0, i32 %10)
  %12 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @GC, align 4
  %15 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32, align 4
  %16 = call i8* @SOC15_REG_OFFSET(i32 %14, i32 0, i32 %15)
  %17 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @GC, align 4
  %20 = load i32, i32* @mmVM_INVALIDATE_ENG0_REQ, align 4
  %21 = call i8* @SOC15_REG_OFFSET(i32 %19, i32 0, i32 %20)
  %22 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @GC, align 4
  %25 = load i32, i32* @mmVM_INVALIDATE_ENG0_ACK, align 4
  %26 = call i8* @SOC15_REG_OFFSET(i32 %24, i32 0, i32 %25)
  %27 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @GC, align 4
  %30 = load i32, i32* @mmVM_CONTEXT0_CNTL, align 4
  %31 = call i8* @SOC15_REG_OFFSET(i32 %29, i32 0, i32 %30)
  %32 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @GC, align 4
  %35 = load i32, i32* @mmVM_L2_PROTECTION_FAULT_STATUS, align 4
  %36 = call i8* @SOC15_REG_OFFSET(i32 %34, i32 0, i32 %35)
  %37 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @GC, align 4
  %40 = load i32, i32* @mmVM_L2_PROTECTION_FAULT_CNTL, align 4
  %41 = call i8* @SOC15_REG_OFFSET(i32 %39, i32 0, i32 %40)
  %42 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  ret void
}

declare dso_local i8* @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
