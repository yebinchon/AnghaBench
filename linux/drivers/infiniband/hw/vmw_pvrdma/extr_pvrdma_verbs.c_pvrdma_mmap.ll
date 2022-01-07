; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32 }
%struct.pvrdma_ucontext = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"create mmap region\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid params for mmap region\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.pvrdma_ucontext*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %11 = call %struct.pvrdma_ucontext* @to_vucontext(%struct.ib_ucontext* %10)
  store %struct.pvrdma_ucontext* %11, %struct.pvrdma_ucontext** %6, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %17, %20
  store i64 %21, i64* %8, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = shl i64 %24, %25
  store i64 %26, i64* %9, align 8
  %27 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %6, align 8
  %28 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %2
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @PAGE_MASK, align 8
  %40 = xor i64 %39, -1
  %41 = and i64 %38, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37, %2
  %44 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %6, align 8
  %45 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %83

53:                                               ; preds = %37
  %54 = load i32, i32* @VM_DONTCOPY, align 4
  %55 = load i32, i32* @VM_DONTEXPAND, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pgprot_noncached(i32 %63)
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.pvrdma_ucontext*, %struct.pvrdma_ucontext** %6, align 8
  %70 = getelementptr inbounds %struct.pvrdma_ucontext, %struct.pvrdma_ucontext* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %67, i64 %68, i32 %72, i64 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %53
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %83

82:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %79, %43
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.pvrdma_ucontext* @to_vucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
