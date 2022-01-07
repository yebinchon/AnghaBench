; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_domain_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_domain_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i64, %struct.TYPE_2__*, %struct.iommu_domain_geometry }
%struct.TYPE_2__ = type { i32 (%struct.iommu_domain*, i32, i8*)* }
%struct.iommu_domain_geometry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_domain_get_attr(%struct.iommu_domain* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iommu_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iommu_domain_geometry*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %29 [
    i32 129, label %12
    i32 128, label %20
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.iommu_domain_geometry*
  store %struct.iommu_domain_geometry* %14, %struct.iommu_domain_geometry** %8, align 8
  %15 = load %struct.iommu_domain_geometry*, %struct.iommu_domain_geometry** %8, align 8
  %16 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %17 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %16, i32 0, i32 2
  %18 = bitcast %struct.iommu_domain_geometry* %15 to i8*
  %19 = bitcast %struct.iommu_domain_geometry* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 8 %19, i64 4, i1 false)
  br label %49

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %9, align 8
  %23 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %24 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  br label %49

29:                                               ; preds = %3
  %30 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %31 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.iommu_domain*, i32, i8*)*, i32 (%struct.iommu_domain*, i32, i8*)** %33, align 8
  %35 = icmp ne i32 (%struct.iommu_domain*, i32, i8*)* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %51

39:                                               ; preds = %29
  %40 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %41 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.iommu_domain*, i32, i8*)*, i32 (%struct.iommu_domain*, i32, i8*)** %43, align 8
  %45 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 %44(%struct.iommu_domain* %45, i32 %46, i8* %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %39, %20, %12
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %36
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
