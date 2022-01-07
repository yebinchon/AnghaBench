; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_doorbell.c_kfd_doorbell_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_doorbell.c_kfd_doorbell_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32 }
%struct.kfd_process = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_NORESERVE = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [169 x i8] c"Mapping doorbell page\0A     target user address == 0x%08llX\0A     physical address    == 0x%08llX\0A     vm_flags            == 0x%04lX\0A     size                == 0x%04lX\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_doorbell_mmap(%struct.kfd_dev* %0, %struct.kfd_process* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kfd_dev*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %17 = call i64 @kfd_doorbell_process_slice(%struct.kfd_dev* %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %70

22:                                               ; preds = %3
  %23 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %24 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %25 = call i32 @kfd_get_process_doorbells(%struct.kfd_dev* %23, %struct.kfd_process* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @VM_IO, align 4
  %27 = load i32, i32* @VM_DONTCOPY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @VM_DONTEXPAND, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @VM_NORESERVE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @VM_DONTDUMP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VM_PFNMAP, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pgprot_noncached(i32 %43)
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %55 = call i64 @kfd_doorbell_process_slice(%struct.kfd_dev* %54)
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str, i64 0, i64 0), i64 %49, i32 %50, i32 %53, i64 %55)
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @PAGE_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %65 = call i64 @kfd_doorbell_process_slice(%struct.kfd_dev* %64)
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %57, i64 %60, i32 %63, i64 %65, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %22, %19
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @kfd_doorbell_process_slice(%struct.kfd_dev*) #1

declare dso_local i32 @kfd_get_process_doorbells(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32, i64) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
