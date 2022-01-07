; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_map_hpet_to_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_map_hpet_to_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.intel_iommu* }
%struct.intel_iommu = type { i32 }

@MAX_HPET_TBS = common dso_local global i32 0, align 4
@ir_hpet = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_iommu* (i64)* @map_hpet_to_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_iommu* @map_hpet_to_ir(i64 %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MAX_HPET_TBS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ir_hpet, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %9
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ir_hpet, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.intel_iommu*, %struct.intel_iommu** %23, align 8
  %25 = icmp ne %struct.intel_iommu* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ir_hpet, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.intel_iommu*, %struct.intel_iommu** %31, align 8
  store %struct.intel_iommu* %32, %struct.intel_iommu** %2, align 8
  br label %38

33:                                               ; preds = %18, %9
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %5

37:                                               ; preds = %5
  store %struct.intel_iommu* null, %struct.intel_iommu** %2, align 8
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  ret %struct.intel_iommu* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
