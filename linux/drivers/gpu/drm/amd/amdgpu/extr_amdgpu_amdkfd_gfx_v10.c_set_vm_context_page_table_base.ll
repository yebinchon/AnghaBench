; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_set_vm_context_page_table_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_set_vm_context_page_table_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMDGPU_PTE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"trying to set page table base for wrong VMID %u\0A\00", align 1
@GC = common dso_local global i32 0, align 4
@mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 = common dso_local global i32 0, align 4
@mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 = common dso_local global i32 0, align 4
@mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 = common dso_local global i32 0, align 4
@mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 = common dso_local global i32 0, align 4
@mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 = common dso_local global i32 0, align 4
@mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kgd_dev*, i32, i32)* @set_vm_context_page_table_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vm_context_page_table_base(%struct.kgd_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kgd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %10 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %9)
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AMDGPU_PTE_VALID, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %86

21:                                               ; preds = %3
  %22 = load i32, i32* @GC, align 4
  %23 = load i32, i32* @mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32, align 4
  %24 = call i64 @SOC15_REG_OFFSET(i32 %22, i32 0, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @WREG32(i64 %28, i32 0)
  %30 = load i32, i32* @GC, align 4
  %31 = load i32, i32* @mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32, align 4
  %32 = call i64 @SOC15_REG_OFFSET(i32 %30, i32 0, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i32 @WREG32(i64 %36, i32 0)
  %38 = load i32, i32* @GC, align 4
  %39 = load i32, i32* @mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32, align 4
  %40 = call i64 @SOC15_REG_OFFSET(i32 %38, i32 0, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @lower_32_bits(i32 %49)
  %51 = call i32 @WREG32(i64 %44, i32 %50)
  %52 = load i32, i32* @GC, align 4
  %53 = load i32, i32* @mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32, align 4
  %54 = call i64 @SOC15_REG_OFFSET(i32 %52, i32 0, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @upper_32_bits(i32 %63)
  %65 = call i32 @WREG32(i64 %58, i32 %64)
  %66 = load i32, i32* @GC, align 4
  %67 = load i32, i32* @mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32, align 4
  %68 = call i64 @SOC15_REG_OFFSET(i32 %66, i32 0, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = mul nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @lower_32_bits(i32 %73)
  %75 = call i32 @WREG32(i64 %72, i32 %74)
  %76 = load i32, i32* @GC, align 4
  %77 = load i32, i32* @mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32, align 4
  %78 = call i64 @SOC15_REG_OFFSET(i32 %76, i32 0, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %78, %81
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @upper_32_bits(i32 %83)
  %85 = call i32 @WREG32(i64 %82, i32 %84)
  br label %86

86:                                               ; preds = %21, %18
  ret void
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i64 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
