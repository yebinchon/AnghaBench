; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c___get_pasid_state_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c___get_pasid_state_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasid_state = type { i32 }
%struct.device_state = type { i32, %struct.pasid_state** }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pasid_state** (%struct.device_state*, i32, i32)* @__get_pasid_state_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pasid_state** @__get_pasid_state_ptr(%struct.device_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pasid_state**, align 8
  %5 = alloca %struct.device_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pasid_state**, align 8
  %9 = alloca %struct.pasid_state**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device_state* %0, %struct.device_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.device_state*, %struct.device_state** %5, align 8
  %13 = getelementptr inbounds %struct.device_state, %struct.device_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.device_state*, %struct.device_state** %5, align 8
  %16 = getelementptr inbounds %struct.device_state, %struct.device_state* %15, i32 0, i32 1
  %17 = load %struct.pasid_state**, %struct.pasid_state*** %16, align 8
  store %struct.pasid_state** %17, %struct.pasid_state*** %8, align 8
  br label %18

18:                                               ; preds = %3, %50
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %10, align 4
  %21 = mul nsw i32 9, %20
  %22 = ashr i32 %19, %21
  %23 = and i32 %22, 511
  store i32 %23, i32* %11, align 4
  %24 = load %struct.pasid_state**, %struct.pasid_state*** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pasid_state*, %struct.pasid_state** %24, i64 %26
  store %struct.pasid_state** %27, %struct.pasid_state*** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %56

31:                                               ; preds = %18
  %32 = load %struct.pasid_state**, %struct.pasid_state*** %9, align 8
  %33 = load %struct.pasid_state*, %struct.pasid_state** %32, align 8
  %34 = icmp eq %struct.pasid_state* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store %struct.pasid_state** null, %struct.pasid_state*** %4, align 8
  br label %58

39:                                               ; preds = %35
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call i64 @get_zeroed_page(i32 %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = bitcast i8* %42 to %struct.pasid_state*
  %44 = load %struct.pasid_state**, %struct.pasid_state*** %9, align 8
  store %struct.pasid_state* %43, %struct.pasid_state** %44, align 8
  %45 = load %struct.pasid_state**, %struct.pasid_state*** %9, align 8
  %46 = load %struct.pasid_state*, %struct.pasid_state** %45, align 8
  %47 = icmp eq %struct.pasid_state* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store %struct.pasid_state** null, %struct.pasid_state*** %4, align 8
  br label %58

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.pasid_state**, %struct.pasid_state*** %9, align 8
  %52 = load %struct.pasid_state*, %struct.pasid_state** %51, align 8
  %53 = bitcast %struct.pasid_state* %52 to %struct.pasid_state**
  store %struct.pasid_state** %53, %struct.pasid_state*** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %18

56:                                               ; preds = %30
  %57 = load %struct.pasid_state**, %struct.pasid_state*** %9, align 8
  store %struct.pasid_state** %57, %struct.pasid_state*** %4, align 8
  br label %58

58:                                               ; preds = %56, %48, %38
  %59 = load %struct.pasid_state**, %struct.pasid_state*** %4, align 8
  ret %struct.pasid_state** %59
}

declare dso_local i64 @get_zeroed_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
