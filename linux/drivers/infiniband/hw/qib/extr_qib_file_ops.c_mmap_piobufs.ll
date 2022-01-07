; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_mmap_piobufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_mmap_piobufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, i32, i32 }
%struct.qib_devdata = type { i32, i32, i32, i32 }
%struct.qib_ctxtdata = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"FAIL mmap piobufs: reqlen %lx > PAGE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.qib_devdata*, %struct.qib_ctxtdata*, i32, i32)* @mmap_piobufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_piobufs(%struct.vm_area_struct* %0, %struct.qib_devdata* %1, %struct.qib_ctxtdata* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca %struct.qib_ctxtdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.qib_devdata* %1, %struct.qib_devdata** %7, align 8
  store %struct.qib_ctxtdata* %2, %struct.qib_ctxtdata** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul i32 %20, %23
  %25 = icmp ugt i32 %19, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %5
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %32, %35
  %37 = call i32 @qib_devinfo(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %90

40:                                               ; preds = %5
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %43, %44
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %11, align 8
  %47 = load i32, i32* @VM_MAYREAD, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @VM_DONTCOPY, align 4
  %54 = load i32, i32* @VM_DONTEXPAND, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %61 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %40
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pgprot_writecombine(i32 %67)
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %40
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @PAGE_SHIFT, align 8
  %78 = lshr i64 %76, %77
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %83 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub i32 %81, %84
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %72, i32 %75, i64 %78, i32 %85, i32 %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %71, %26
  %91 = load i32, i32* %12, align 4
  ret i32 %91
}

declare dso_local i32 @qib_devinfo(i32, i8*, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
