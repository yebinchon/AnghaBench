; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32*, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.msc_iter* }
%struct.msc_iter = type { %struct.msc* }
%struct.msc = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSC_MODE_SINGLE = common dso_local global i64 0, align 8
@MSC_MODE_MULTI = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@msc_mmap_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @intel_th_msc_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_msc_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.msc_iter*, align 8
  %8 = alloca %struct.msc*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %12, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 6
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.msc_iter*, %struct.msc_iter** %20, align 8
  store %struct.msc_iter* %21, %struct.msc_iter** %7, align 8
  %22 = load %struct.msc_iter*, %struct.msc_iter** %7, align 8
  %23 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %22, i32 0, i32 0
  %24 = load %struct.msc*, %struct.msc** %23, align 8
  store %struct.msc* %24, %struct.msc** %8, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @offset_in_page(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %102

36:                                               ; preds = %29
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %102

44:                                               ; preds = %36
  %45 = load %struct.msc*, %struct.msc** %8, align 8
  %46 = getelementptr inbounds %struct.msc, %struct.msc* %45, i32 0, i32 2
  %47 = call i32 @atomic_inc_unless_negative(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %102

52:                                               ; preds = %44
  %53 = load %struct.msc*, %struct.msc** %8, align 8
  %54 = getelementptr inbounds %struct.msc, %struct.msc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MSC_MODE_SINGLE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.msc*, %struct.msc** %8, align 8
  %60 = getelementptr inbounds %struct.msc, %struct.msc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MSC_MODE_MULTI, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %78

65:                                               ; preds = %58, %52
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @PAGE_SHIFT, align 8
  %68 = lshr i64 %66, %67
  %69 = load %struct.msc*, %struct.msc** %8, align 8
  %70 = getelementptr inbounds %struct.msc, %struct.msc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %78

74:                                               ; preds = %65
  %75 = load %struct.msc*, %struct.msc** %8, align 8
  %76 = getelementptr inbounds %struct.msc, %struct.msc* %75, i32 0, i32 3
  %77 = call i32 @atomic_set(i32* %76, i32 1)
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %73, %64
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.msc*, %struct.msc** %8, align 8
  %83 = getelementptr inbounds %struct.msc, %struct.msc* %82, i32 0, i32 2
  %84 = call i32 @atomic_dec(i32* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pgprot_noncached(i32 %88)
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @VM_DONTEXPAND, align 4
  %93 = load i32, i32* @VM_DONTCOPY, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %100 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %99, i32 0, i32 3
  store i32* @msc_mmap_ops, i32** %100, align 8
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %85, %49, %41, %33
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @atomic_inc_unless_negative(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
