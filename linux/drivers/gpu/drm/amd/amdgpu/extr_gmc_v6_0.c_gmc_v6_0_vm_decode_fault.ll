; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_vm_decode_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_vm_decode_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@VM_CONTEXT1_PROTECTION_FAULT_STATUS = common dso_local global i32 0, align 4
@VMID = common dso_local global i32 0, align 4
@PROTECTIONS = common dso_local global i32 0, align 4
@MEMORY_CLIENT_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"VM fault (0x%02x, vmid %d) at page %u, %s from '%s' (0x%08x) (%d)\0A\00", align 1
@MEMORY_CLIENT_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32)* @gmc_v6_0_vm_decode_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v6_0_vm_decode_fault(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [5 x i8], align 1
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %15 = load i32, i32* @VMID, align 4
  %16 = call i32 @REG_GET_FIELD(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %19 = load i32, i32* @PROTECTIONS, align 4
  %20 = call i32 @REG_GET_FIELD(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %22 = load i32, i32* %8, align 4
  %23 = ashr i32 %22, 24
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %21, align 1
  %25 = getelementptr inbounds i8, i8* %21, i64 1
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  %30 = getelementptr inbounds i8, i8* %25, i64 1
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %30, align 1
  %35 = getelementptr inbounds i8, i8* %30, i64 1
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %35, align 1
  %39 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 0, i8* %39, align 1
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %42 = load i32, i32* @MEMORY_CLIENT_ID, align 4
  %43 = call i32 @REG_GET_FIELD(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_STATUS, align 4
  %52 = load i32, i32* @MEMORY_CLIENT_RW, align 4
  %53 = call i32 @REG_GET_FIELD(i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %57 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i8* %56, i8* %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
