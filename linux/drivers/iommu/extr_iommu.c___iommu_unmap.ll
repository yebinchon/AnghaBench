; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i64, i32, %struct.iommu_ops* }
%struct.iommu_ops = type { i64 (%struct.iommu_domain.0*, i64, i64, %struct.iommu_iotlb_gather*)* }
%struct.iommu_domain.0 = type opaque
%struct.iommu_iotlb_gather = type opaque
%struct.iommu_iotlb_gather.1 = type { i32 }

@__IOMMU_DOMAIN_PAGING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"unaligned: iova 0x%lx size 0x%zx min_pagesz 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"unmap this: iova 0x%lx size 0x%zx\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unmapped: iova 0x%lx size 0x%zx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i64, i64, %struct.iommu_iotlb_gather.1*)* @__iommu_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__iommu_unmap(%struct.iommu_domain* %0, i64 %1, i64 %2, %struct.iommu_iotlb_gather.1* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iommu_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iommu_iotlb_gather.1*, align 8
  %10 = alloca %struct.iommu_ops*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.iommu_iotlb_gather.1* %3, %struct.iommu_iotlb_gather.1** %9, align 8
  %16 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %17 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %16, i32 0, i32 2
  %18 = load %struct.iommu_ops*, %struct.iommu_ops** %17, align 8
  store %struct.iommu_ops* %18, %struct.iommu_ops** %10, align 8
  store i64 0, i64* %12, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.iommu_ops*, %struct.iommu_ops** %10, align 8
  %21 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %20, i32 0, i32 0
  %22 = load i64 (%struct.iommu_domain.0*, i64, i64, %struct.iommu_iotlb_gather*)*, i64 (%struct.iommu_domain.0*, i64, i64, %struct.iommu_iotlb_gather*)** %21, align 8
  %23 = icmp eq i64 (%struct.iommu_domain.0*, i64, i64, %struct.iommu_iotlb_gather*)* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %26 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br label %29

29:                                               ; preds = %24, %4
  %30 = phi i1 [ true, %4 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i64 0, i64* %5, align 8
  br label %108

35:                                               ; preds = %29
  %36 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %37 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @__IOMMU_DOMAIN_PAGING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i64 0, i64* %5, align 8
  br label %108

47:                                               ; preds = %35
  %48 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %49 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @__ffs(i64 %50)
  %52 = shl i32 1, %51
  store i32 %52, i32* %14, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = or i64 %53, %54
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @IS_ALIGNED(i64 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %47
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %61, i32 %62)
  store i64 0, i64* %5, align 8
  br label %108

64:                                               ; preds = %47
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %92, %64
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %68
  %73 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %12, align 8
  %77 = sub i64 %75, %76
  %78 = call i64 @iommu_pgsize(%struct.iommu_domain* %73, i64 %74, i64 %77)
  store i64 %78, i64* %15, align 8
  %79 = load %struct.iommu_ops*, %struct.iommu_ops** %10, align 8
  %80 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %79, i32 0, i32 0
  %81 = load i64 (%struct.iommu_domain.0*, i64, i64, %struct.iommu_iotlb_gather*)*, i64 (%struct.iommu_domain.0*, i64, i64, %struct.iommu_iotlb_gather*)** %80, align 8
  %82 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %83 = bitcast %struct.iommu_domain* %82 to %struct.iommu_domain.0*
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load %struct.iommu_iotlb_gather.1*, %struct.iommu_iotlb_gather.1** %9, align 8
  %87 = bitcast %struct.iommu_iotlb_gather.1* %86 to %struct.iommu_iotlb_gather*
  %88 = call i64 %81(%struct.iommu_domain.0* %83, i64 %84, i64 %85, %struct.iommu_iotlb_gather* %87)
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %72
  br label %102

92:                                               ; preds = %72
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %93, i64 %94)
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %12, align 8
  br label %68

102:                                              ; preds = %91, %68
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @trace_unmap(i64 %103, i64 %104, i64 %105)
  %107 = load i64, i64* %12, align 8
  store i64 %107, i64* %5, align 8
  br label %108

108:                                              ; preds = %102, %59, %46, %34
  %109 = load i64, i64* %5, align 8
  ret i64 %109
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @pr_err(i8*, i64, i64, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i64 @iommu_pgsize(%struct.iommu_domain*, i64, i64) #1

declare dso_local i32 @trace_unmap(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
