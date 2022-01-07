; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_mmap_rcvegrbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_mmap_rcvegrbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.qib_ctxtdata = type { i64, i64, i32*, %struct.qib_devdata* }
%struct.qib_devdata = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"FAIL on egr bufs: reqlen %lx > actual %lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Can't map eager buffers as writable (flags=%lx)\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.qib_ctxtdata*)* @mmap_rcvegrbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_rcvegrbufs(%struct.vm_area_struct* %0, %struct.qib_ctxtdata* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.qib_ctxtdata*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.qib_ctxtdata* %1, %struct.qib_ctxtdata** %4, align 8
  %12 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %13 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %12, i32 0, i32 3
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %13, align 8
  store %struct.qib_devdata* %14, %struct.qib_devdata** %5, align 8
  %15 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %16 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %19 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %25, %28
  %30 = load i64, i64* %8, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %2
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = trunc i64 %42 to i32
  %44 = load i64, i64* %8, align 8
  %45 = call i32 (i32, i8*, i32, ...) @qib_devinfo(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %110

48:                                               ; preds = %2
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VM_WRITE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %57 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, i32, ...) @qib_devinfo(i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EPERM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %110

65:                                               ; preds = %48
  %66 = load i32, i32* @VM_MAYWRITE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %6, align 8
  store i64 0, i64* %9, align 8
  br label %75

75:                                               ; preds = %103, %65
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %78 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %75
  %82 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %83 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @virt_to_phys(i32 %87)
  %89 = load i64, i64* @PAGE_SHIFT, align 8
  %90 = lshr i64 %88, %89
  store i64 %90, i64* %10, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @remap_pfn_range(%struct.vm_area_struct* %91, i64 %92, i64 %93, i64 %94, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %81
  br label %110

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* %6, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %6, align 8
  br label %75

109:                                              ; preds = %75
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %109, %101, %55, %32
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare dso_local i32 @qib_devinfo(i32, i8*, i32, ...) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
