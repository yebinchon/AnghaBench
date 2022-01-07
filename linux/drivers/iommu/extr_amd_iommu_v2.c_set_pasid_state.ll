; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_set_pasid_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_set_pasid_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_state = type { i32 }
%struct.pasid_state = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_state*, %struct.pasid_state*, i32)* @set_pasid_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pasid_state(%struct.device_state* %0, %struct.pasid_state* %1, i32 %2) #0 {
  %4 = alloca %struct.device_state*, align 8
  %5 = alloca %struct.pasid_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pasid_state**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device_state* %0, %struct.device_state** %4, align 8
  store %struct.pasid_state* %1, %struct.pasid_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.device_state*, %struct.device_state** %4, align 8
  %11 = getelementptr inbounds %struct.device_state, %struct.device_state* %10, i32 0, i32 0
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.device_state*, %struct.device_state** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.pasid_state** @__get_pasid_state_ptr(%struct.device_state* %14, i32 %15, i32 1)
  store %struct.pasid_state** %16, %struct.pasid_state*** %7, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.pasid_state**, %struct.pasid_state*** %7, align 8
  %20 = icmp eq %struct.pasid_state** %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %32

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.pasid_state**, %struct.pasid_state*** %7, align 8
  %26 = load %struct.pasid_state*, %struct.pasid_state** %25, align 8
  %27 = icmp ne %struct.pasid_state* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %32

29:                                               ; preds = %22
  %30 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %31 = load %struct.pasid_state**, %struct.pasid_state*** %7, align 8
  store %struct.pasid_state* %30, %struct.pasid_state** %31, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %28, %21
  %33 = load %struct.device_state*, %struct.device_state** %4, align 8
  %34 = getelementptr inbounds %struct.device_state, %struct.device_state* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pasid_state** @__get_pasid_state_ptr(%struct.device_state*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
