; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_free_pasid_states_level2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_free_pasid_states_level2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasid_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pasid_state**)* @free_pasid_states_level2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pasid_states_level2(%struct.pasid_state** %0) #0 {
  %2 = alloca %struct.pasid_state**, align 8
  %3 = alloca %struct.pasid_state**, align 8
  %4 = alloca i32, align 4
  store %struct.pasid_state** %0, %struct.pasid_state*** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 512
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = load %struct.pasid_state**, %struct.pasid_state*** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.pasid_state*, %struct.pasid_state** %9, i64 %11
  %13 = load %struct.pasid_state*, %struct.pasid_state** %12, align 8
  %14 = icmp eq %struct.pasid_state* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %25

16:                                               ; preds = %8
  %17 = load %struct.pasid_state**, %struct.pasid_state*** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pasid_state*, %struct.pasid_state** %17, i64 %19
  %21 = load %struct.pasid_state*, %struct.pasid_state** %20, align 8
  %22 = bitcast %struct.pasid_state* %21 to %struct.pasid_state**
  store %struct.pasid_state** %22, %struct.pasid_state*** %3, align 8
  %23 = load %struct.pasid_state**, %struct.pasid_state*** %3, align 8
  %24 = call i32 @free_pasid_states_level1(%struct.pasid_state** %23)
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %5

28:                                               ; preds = %5
  ret void
}

declare dso_local i32 @free_pasid_states_level1(%struct.pasid_state**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
