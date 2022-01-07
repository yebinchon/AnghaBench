; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_one_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_one_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32 }
%struct.arm_smmu_queue = type { i64, i64, i32, %struct.TYPE_2__, i8*, i8*, i64 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"failed to allocate queue (0x%zx bytes) for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"allocated %u entries for %s\0A\00", align 1
@Q_BASE_RWA = common dso_local global i32 0, align 4
@Q_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@Q_BASE_LOG2SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*, %struct.arm_smmu_queue*, i64, i64, i64, i8*)* @arm_smmu_init_one_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_init_one_queue(%struct.arm_smmu_device* %0, %struct.arm_smmu_queue* %1, i64 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.arm_smmu_device*, align 8
  %9 = alloca %struct.arm_smmu_queue*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %8, align 8
  store %struct.arm_smmu_queue* %1, %struct.arm_smmu_queue** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  br label %15

15:                                               ; preds = %50, %6
  %16 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %17 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %12, align 8
  %23 = mul i64 %21, %22
  %24 = shl i64 %23, 3
  store i64 %24, i64* %14, align 8
  %25 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %26 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %14, align 8
  %29 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %30 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @dmam_alloc_coherent(i32 %27, i64 %28, i64* %30, i32 %31)
  %33 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %34 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %33, i32 0, i32 6
  store i64 %32, i64* %34, align 8
  %35 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %36 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %15
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %15
  br label %51

44:                                               ; preds = %39
  %45 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %46 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44
  br i1 true, label %15, label %51

51:                                               ; preds = %50, %43
  %52 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %53 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %51
  %57 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %58 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %14, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %60, i8* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %130

65:                                               ; preds = %51
  %66 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %67 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %14, align 8
  %70 = sub i64 %69, 1
  %71 = and i64 %68, %70
  %72 = call i32 @WARN_ON(i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %65
  %75 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %76 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %79 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 1, %81
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @dev_info(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %82, i8* %83)
  br label %85

85:                                               ; preds = %74, %65
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %88 = call i8* @arm_smmu_page1_fixup(i64 %86, %struct.arm_smmu_device* %87)
  %89 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %90 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %93 = call i8* @arm_smmu_page1_fixup(i64 %91, %struct.arm_smmu_device* %92)
  %94 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %95 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %98 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* @Q_BASE_RWA, align 4
  %100 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %101 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %103 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @Q_BASE_ADDR_MASK, align 4
  %106 = sext i32 %105 to i64
  %107 = and i64 %104, %106
  %108 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %109 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = or i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 8
  %114 = load i32, i32* @Q_BASE_LOG2SIZE, align 4
  %115 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %116 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @FIELD_PREP(i32 %114, i32 %118)
  %120 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %121 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %125 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.arm_smmu_queue*, %struct.arm_smmu_queue** %9, align 8
  %128 = getelementptr inbounds %struct.arm_smmu_queue, %struct.arm_smmu_queue* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  store i64 0, i64* %129, align 8
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %85, %56
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i64 @dmam_alloc_coherent(i32, i64, i64*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i8*) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*) #1

declare dso_local i8* @arm_smmu_page1_fixup(i64, %struct.arm_smmu_device*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
