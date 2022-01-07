; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_gvt_pin_guest_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_gvt_pin_guest_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"vfio_pin_pages failed for gfn 0x%lx, ret %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"pfn 0x%lx is not mem backed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"The pages are not continuous\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i64, i64, %struct.page**)* @gvt_pin_guest_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gvt_pin_guest_page(%struct.intel_vgpu* %0, i64 %1, i64 %2, %struct.page** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.page** %3, %struct.page*** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = call i32 @roundup(i64 %16, i32 %17)
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %76, %4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %26, %28
  store i64 %29, i64* %14, align 8
  %30 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %31 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mdev_dev(i32 %33)
  %35 = load i32, i32* @IOMMU_READ, align 4
  %36 = load i32, i32* @IOMMU_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @vfio_pin_pages(i32 %34, i64* %14, i32 1, i32 %37, i64* %15)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %25
  %42 = load i64, i64* %14, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %43)
  br label %83

45:                                               ; preds = %25
  %46 = load i64, i64* %15, align 8
  %47 = call i32 @pfn_valid(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %15, align 8
  %51 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  br label %83

56:                                               ; preds = %45
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i64, i64* %15, align 8
  store i64 %60, i64* %10, align 8
  br label %75

61:                                               ; preds = %56
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %62, %64
  %66 = load i64, i64* %15, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %83

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %21

79:                                               ; preds = %21
  %80 = load i64, i64* %10, align 8
  %81 = call %struct.page* @pfn_to_page(i64 %80)
  %82 = load %struct.page**, %struct.page*** %9, align 8
  store %struct.page* %81, %struct.page** %82, align 8
  store i32 0, i32* %5, align 4
  br label %91

83:                                               ; preds = %68, %49, %41
  %84 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = mul nsw i32 %86, %87
  %89 = call i32 @gvt_unpin_guest_page(%struct.intel_vgpu* %84, i64 %85, i32 %88)
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %83, %79
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @vfio_pin_pages(i32, i64*, i32, i32, i64*) #1

declare dso_local i32 @mdev_dev(i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, ...) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @gvt_unpin_guest_page(%struct.intel_vgpu*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
