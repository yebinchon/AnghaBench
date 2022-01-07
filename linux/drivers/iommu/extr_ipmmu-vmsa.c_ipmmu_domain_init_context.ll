; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_domain_init_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_domain_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmmu_vmsa_domain = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@IO_PGTABLE_QUIRK_ARM_NS = common dso_local global i32 0, align 4
@SZ_1G = common dso_local global i32 0, align 4
@SZ_2M = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@ipmmu_flush_ops = common dso_local global i32 0, align 4
@ARM_32_LPAE_S1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmmu_vmsa_domain*)* @ipmmu_domain_init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmmu_domain_init_context(%struct.ipmmu_vmsa_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipmmu_vmsa_domain*, align 8
  %4 = alloca i32, align 4
  store %struct.ipmmu_vmsa_domain* %0, %struct.ipmmu_vmsa_domain** %3, align 8
  %5 = load i32, i32* @IO_PGTABLE_QUIRK_ARM_NS, align 4
  %6 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %7 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 6
  store i32 %5, i32* %8, align 8
  %9 = load i32, i32* @SZ_1G, align 4
  %10 = load i32, i32* @SZ_2M, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SZ_4K, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %15 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %18 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i32 32, i32* %19, align 4
  %20 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %21 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  store i32 40, i32* %22, align 8
  %23 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %24 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 5
  store i32* @ipmmu_flush_ops, i32** %25, align 8
  %26 = call i32 @DMA_BIT_MASK(i32 32)
  %27 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %28 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %32 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %36 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  store i32 0, i32* %37, align 4
  %38 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %39 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %46 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %49 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %54 = call i32 @ipmmu_domain_allocate_context(%struct.TYPE_10__* %52, %struct.ipmmu_vmsa_domain* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %1
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %89

59:                                               ; preds = %1
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %62 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @ARM_32_LPAE_S1, align 4
  %64 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %65 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %64, i32 0, i32 3
  %66 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %67 = call i32 @alloc_io_pgtable_ops(i32 %63, %struct.TYPE_11__* %65, %struct.ipmmu_vmsa_domain* %66)
  %68 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %69 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %71 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %59
  %75 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %76 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %81 = getelementptr inbounds %struct.ipmmu_vmsa_domain, %struct.ipmmu_vmsa_domain* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ipmmu_domain_free_context(%struct.TYPE_10__* %79, i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %89

86:                                               ; preds = %59
  %87 = load %struct.ipmmu_vmsa_domain*, %struct.ipmmu_vmsa_domain** %3, align 8
  %88 = call i32 @ipmmu_domain_setup_context(%struct.ipmmu_vmsa_domain* %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %74, %57
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @ipmmu_domain_allocate_context(%struct.TYPE_10__*, %struct.ipmmu_vmsa_domain*) #1

declare dso_local i32 @alloc_io_pgtable_ops(i32, %struct.TYPE_11__*, %struct.ipmmu_vmsa_domain*) #1

declare dso_local i32 @ipmmu_domain_free_context(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ipmmu_domain_setup_context(%struct.ipmmu_vmsa_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
