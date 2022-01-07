; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_get_pasid_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_get_pasid_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasid_state = type { i32 }
%struct.device_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pasid_state* (%struct.device_state*, i32)* @get_pasid_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pasid_state* @get_pasid_state(%struct.device_state* %0, i32 %1) #0 {
  %3 = alloca %struct.device_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pasid_state**, align 8
  %6 = alloca %struct.pasid_state*, align 8
  %7 = alloca i64, align 8
  store %struct.device_state* %0, %struct.device_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.pasid_state* null, %struct.pasid_state** %6, align 8
  %8 = load %struct.device_state*, %struct.device_state** %3, align 8
  %9 = getelementptr inbounds %struct.device_state, %struct.device_state* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.device_state*, %struct.device_state** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.pasid_state** @__get_pasid_state_ptr(%struct.device_state* %12, i32 %13, i32 0)
  store %struct.pasid_state** %14, %struct.pasid_state*** %5, align 8
  %15 = load %struct.pasid_state**, %struct.pasid_state*** %5, align 8
  %16 = icmp eq %struct.pasid_state** %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.pasid_state**, %struct.pasid_state*** %5, align 8
  %20 = load %struct.pasid_state*, %struct.pasid_state** %19, align 8
  store %struct.pasid_state* %20, %struct.pasid_state** %6, align 8
  %21 = load %struct.pasid_state*, %struct.pasid_state** %6, align 8
  %22 = icmp ne %struct.pasid_state* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.pasid_state*, %struct.pasid_state** %6, align 8
  %25 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %24, i32 0, i32 0
  %26 = call i32 @atomic_inc(i32* %25)
  br label %27

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %27, %17
  %29 = load %struct.device_state*, %struct.device_state** %3, align 8
  %30 = getelementptr inbounds %struct.device_state, %struct.device_state* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.pasid_state*, %struct.pasid_state** %6, align 8
  ret %struct.pasid_state* %33
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pasid_state** @__get_pasid_state_ptr(%struct.device_state*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
