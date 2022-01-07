; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_context_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.etnaviv_iommu_global = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.etnaviv_iommu_context*)* }
%struct.etnaviv_cmdbuf_suballoc = type { i32 }

@ETNAVIV_IOMMU_V1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"command buffer outside valid memory window\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.etnaviv_iommu_context* @etnaviv_iommu_context_init(%struct.etnaviv_iommu_global* %0, %struct.etnaviv_cmdbuf_suballoc* %1) #0 {
  %3 = alloca %struct.etnaviv_iommu_context*, align 8
  %4 = alloca %struct.etnaviv_iommu_global*, align 8
  %5 = alloca %struct.etnaviv_cmdbuf_suballoc*, align 8
  %6 = alloca %struct.etnaviv_iommu_context*, align 8
  %7 = alloca i32, align 4
  store %struct.etnaviv_iommu_global* %0, %struct.etnaviv_iommu_global** %4, align 8
  store %struct.etnaviv_cmdbuf_suballoc* %1, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %8 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %9 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ETNAVIV_IOMMU_V1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %15 = call %struct.etnaviv_iommu_context* @etnaviv_iommuv1_context_alloc(%struct.etnaviv_iommu_global* %14)
  store %struct.etnaviv_iommu_context* %15, %struct.etnaviv_iommu_context** %6, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %18 = call %struct.etnaviv_iommu_context* @etnaviv_iommuv2_context_alloc(%struct.etnaviv_iommu_global* %17)
  store %struct.etnaviv_iommu_context* %18, %struct.etnaviv_iommu_context** %6, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %21 = icmp ne %struct.etnaviv_iommu_context* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store %struct.etnaviv_iommu_context* null, %struct.etnaviv_iommu_context** %3, align 8
  br label %67

23:                                               ; preds = %19
  %24 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %25 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %26 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %27 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %26, i32 0, i32 0
  %28 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %29 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @etnaviv_cmdbuf_suballoc_map(%struct.etnaviv_cmdbuf_suballoc* %24, %struct.etnaviv_iommu_context* %25, %struct.TYPE_5__* %27, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %59

35:                                               ; preds = %23
  %36 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %37 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ETNAVIV_IOMMU_V1, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %43 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ugt i32 %45, -2147483648
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %49 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %54

52:                                               ; preds = %41, %35
  %53 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  store %struct.etnaviv_iommu_context* %53, %struct.etnaviv_iommu_context** %3, align 8
  br label %67

54:                                               ; preds = %47
  %55 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %56 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %57 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %56, i32 0, i32 0
  %58 = call i32 @etnaviv_cmdbuf_suballoc_unmap(%struct.etnaviv_iommu_context* %55, %struct.TYPE_5__* %57)
  br label %59

59:                                               ; preds = %54, %34
  %60 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %61 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.etnaviv_iommu_context*)*, i32 (%struct.etnaviv_iommu_context*)** %63, align 8
  %65 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %66 = call i32 %64(%struct.etnaviv_iommu_context* %65)
  store %struct.etnaviv_iommu_context* null, %struct.etnaviv_iommu_context** %3, align 8
  br label %67

67:                                               ; preds = %59, %52, %22
  %68 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  ret %struct.etnaviv_iommu_context* %68
}

declare dso_local %struct.etnaviv_iommu_context* @etnaviv_iommuv1_context_alloc(%struct.etnaviv_iommu_global*) #1

declare dso_local %struct.etnaviv_iommu_context* @etnaviv_iommuv2_context_alloc(%struct.etnaviv_iommu_global*) #1

declare dso_local i32 @etnaviv_cmdbuf_suballoc_map(%struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_iommu_context*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @etnaviv_cmdbuf_suballoc_unmap(%struct.etnaviv_iommu_context*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
