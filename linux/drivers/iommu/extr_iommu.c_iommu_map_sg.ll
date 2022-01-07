; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_map_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.scatterlist = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iommu_map_sg(%struct.iommu_domain* %0, i64 %1, %struct.scatterlist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.iommu_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %71, %5
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %18
  %23 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %24 = call i64 @sg_phys(%struct.scatterlist* %23)
  store i64 %24, i64* %17, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = load i64, i64* %17, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %29, %30
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %35, %36
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @iommu_map(%struct.iommu_domain* %34, i64 %37, i64 %38, i64 %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %74

45:                                               ; preds = %33
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %49

49:                                               ; preds = %45, %27, %22
  %50 = load i64, i64* %12, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %54 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %12, align 8
  br label %63

58:                                               ; preds = %49
  %59 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %60 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %17, align 8
  store i64 %62, i64* %14, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = load i32, i32* %15, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %70 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %69)
  store %struct.scatterlist* %70, %struct.scatterlist** %9, align 8
  br label %71

71:                                               ; preds = %68, %63
  br label %18

72:                                               ; preds = %18
  %73 = load i64, i64* %13, align 8
  store i64 %73, i64* %6, align 8
  br label %79

74:                                               ; preds = %44
  %75 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @iommu_unmap(%struct.iommu_domain* %75, i64 %76, i64 %77)
  store i64 0, i64* %6, align 8
  br label %79

79:                                               ; preds = %74, %72
  %80 = load i64, i64* %6, align 8
  ret i64 %80
}

declare dso_local i64 @sg_phys(%struct.scatterlist*) #1

declare dso_local i32 @iommu_map(%struct.iommu_domain*, i64, i64, i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @iommu_unmap(%struct.iommu_domain*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
