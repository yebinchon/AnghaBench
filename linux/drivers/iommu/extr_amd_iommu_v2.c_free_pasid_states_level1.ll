; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_free_pasid_states_level1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_free_pasid_states_level1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasid_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pasid_state**)* @free_pasid_states_level1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pasid_states_level1(%struct.pasid_state** %0) #0 {
  %2 = alloca %struct.pasid_state**, align 8
  %3 = alloca i32, align 4
  store %struct.pasid_state** %0, %struct.pasid_state*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 512
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = load %struct.pasid_state**, %struct.pasid_state*** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.pasid_state*, %struct.pasid_state** %8, i64 %10
  %12 = load %struct.pasid_state*, %struct.pasid_state** %11, align 8
  %13 = icmp eq %struct.pasid_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %23

15:                                               ; preds = %7
  %16 = load %struct.pasid_state**, %struct.pasid_state*** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pasid_state*, %struct.pasid_state** %16, i64 %18
  %20 = load %struct.pasid_state*, %struct.pasid_state** %19, align 8
  %21 = ptrtoint %struct.pasid_state* %20 to i64
  %22 = call i32 @free_page(i64 %21)
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %4

26:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
