; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_mmio_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_mmio_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32 }
%struct.kfd_process = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_NORESERVE = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [176 x i8] c"Process %d mapping mmio page\0A     target user address == 0x%08llX\0A     physical address    == 0x%08llX\0A     vm_flags            == 0x%04lX\0A     size                == 0x%04lX\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dev*, %struct.kfd_process*, %struct.vm_area_struct*)* @kfd_mmio_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_mmio_mmap(%struct.kfd_dev* %0, %struct.kfd_process* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kfd_dev*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  %23 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %24 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @amdgpu_amdkfd_get_mmio_remap_phys_addr(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @VM_IO, align 4
  %28 = load i32, i32* @VM_DONTCOPY, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @VM_DONTEXPAND, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VM_NORESERVE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VM_DONTDUMP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @VM_PFNMAP, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pgprot_noncached(i32 %44)
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %49 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str, i64 0, i64 0), i32 %50, i64 %53, i32 %54, i32 %57, i64 %58)
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %60, i64 %63, i32 %66, i64 %67, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %22, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @amdgpu_amdkfd_get_mmio_remap_phys_addr(i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32, i32, i64) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
