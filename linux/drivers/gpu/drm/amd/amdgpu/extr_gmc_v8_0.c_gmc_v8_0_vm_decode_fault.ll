; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_vm_decode_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_vm_decode_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@VM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@VMID = common dso_local global i32 0, align 4
@PROTECTIONS = common dso_local global i32 0, align 4
@MEMORY_CLIENT_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"VM fault (0x%02x, vmid %d, pasid %d) at page %u, %s from '%s' (0x%08x) (%d)\0A\00", align 1
@MEMORY_CLIENT_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32, i32)* @gmc_v8_0_vm_decode_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v8_0_vm_decode_fault(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5 x i8], align 1
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %17 = load i32, i32* @VMID, align 4
  %18 = call i32 @REG_GET_FIELD(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %21 = load i32, i32* @PROTECTIONS, align 4
  %22 = call i32 @REG_GET_FIELD(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds i8, i8* %23, i64 1
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  %32 = getelementptr inbounds i8, i8* %27, i64 1
  %33 = load i32, i32* %9, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  %37 = getelementptr inbounds i8, i8* %32, i64 1
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %37, align 1
  %41 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %44 = load i32, i32* @MEMORY_CLIENT_ID, align 4
  %45 = call i32 @REG_GET_FIELD(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %55 = load i32, i32* @MEMORY_CLIENT_RW, align 4
  %56 = call i32 @REG_GET_FIELD(i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %60 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51, i32 %52, i8* %59, i8* %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
