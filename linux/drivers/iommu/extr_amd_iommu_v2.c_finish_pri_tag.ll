; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_finish_pri_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_finish_pri_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_state = type { i32 }
%struct.pasid_state = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PPR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_state*, %struct.pasid_state*, i64)* @finish_pri_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_pri_tag(%struct.device_state* %0, %struct.pasid_state* %1, i64 %2) #0 {
  %4 = alloca %struct.device_state*, align 8
  %5 = alloca %struct.pasid_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device_state* %0, %struct.device_state** %4, align 8
  store %struct.pasid_state* %1, %struct.pasid_state** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %9 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %13 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = call i64 @atomic_dec_and_test(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %3
  %21 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %22 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %20
  %30 = load %struct.device_state*, %struct.device_state** %4, align 8
  %31 = getelementptr inbounds %struct.device_state, %struct.device_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %34 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %37 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @amd_iommu_complete_ppr(i32 %32, i32 %35, i32 %42, i64 %43)
  %45 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %46 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @PPR_SUCCESS, align 4
  %52 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %53 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %29, %20, %3
  %59 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %60 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @amd_iommu_complete_ppr(i32, i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
