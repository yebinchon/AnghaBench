; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_free_pasid_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_free_pasid_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_state = type { i32, i32, i64 }
%struct.pasid_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_state*)* @free_pasid_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pasid_states(%struct.device_state* %0) #0 {
  %2 = alloca %struct.device_state*, align 8
  %3 = alloca %struct.pasid_state*, align 8
  %4 = alloca i32, align 4
  store %struct.device_state* %0, %struct.device_state** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.device_state*, %struct.device_state** %2, align 8
  %8 = getelementptr inbounds %struct.device_state, %struct.device_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = load %struct.device_state*, %struct.device_state** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.pasid_state* @get_pasid_state(%struct.device_state* %12, i32 %13)
  store %struct.pasid_state* %14, %struct.pasid_state** %3, align 8
  %15 = load %struct.pasid_state*, %struct.pasid_state** %3, align 8
  %16 = icmp eq %struct.pasid_state* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %31

18:                                               ; preds = %11
  %19 = load %struct.pasid_state*, %struct.pasid_state** %3, align 8
  %20 = call i32 @put_pasid_state(%struct.pasid_state* %19)
  %21 = load %struct.pasid_state*, %struct.pasid_state** %3, align 8
  %22 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %21, i32 0, i32 1
  %23 = load %struct.pasid_state*, %struct.pasid_state** %3, align 8
  %24 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mmu_notifier_unregister(i32* %22, i32 %25)
  %27 = load %struct.pasid_state*, %struct.pasid_state** %3, align 8
  %28 = call i32 @put_pasid_state_wait(%struct.pasid_state* %27)
  %29 = load %struct.device_state*, %struct.device_state** %2, align 8
  %30 = call i32 @put_device_state(%struct.device_state* %29)
  br label %31

31:                                               ; preds = %18, %17
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load %struct.device_state*, %struct.device_state** %2, align 8
  %36 = getelementptr inbounds %struct.device_state, %struct.device_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.device_state*, %struct.device_state** %2, align 8
  %41 = getelementptr inbounds %struct.device_state, %struct.device_state* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @free_pasid_states_level2(i64 %42)
  br label %62

44:                                               ; preds = %34
  %45 = load %struct.device_state*, %struct.device_state** %2, align 8
  %46 = getelementptr inbounds %struct.device_state, %struct.device_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.device_state*, %struct.device_state** %2, align 8
  %51 = getelementptr inbounds %struct.device_state, %struct.device_state* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @free_pasid_states_level1(i64 %52)
  br label %61

54:                                               ; preds = %44
  %55 = load %struct.device_state*, %struct.device_state** %2, align 8
  %56 = getelementptr inbounds %struct.device_state, %struct.device_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  br label %61

61:                                               ; preds = %54, %49
  br label %62

62:                                               ; preds = %61, %39
  %63 = load %struct.device_state*, %struct.device_state** %2, align 8
  %64 = getelementptr inbounds %struct.device_state, %struct.device_state* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @free_page(i64 %65)
  ret void
}

declare dso_local %struct.pasid_state* @get_pasid_state(%struct.device_state*, i32) #1

declare dso_local i32 @put_pasid_state(%struct.pasid_state*) #1

declare dso_local i32 @mmu_notifier_unregister(i32*, i32) #1

declare dso_local i32 @put_pasid_state_wait(%struct.pasid_state*) #1

declare dso_local i32 @put_device_state(%struct.device_state*) #1

declare dso_local i32 @free_pasid_states_level2(i64) #1

declare dso_local i32 @free_pasid_states_level1(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
