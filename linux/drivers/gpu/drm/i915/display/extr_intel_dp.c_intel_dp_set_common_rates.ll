; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_set_common_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_set_common_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_set_common_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_set_common_rates(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %3 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %4 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ true, %1 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %18 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %21 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %24 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %27 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %30 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @intersect_rates(i32 %19, i32 %22, i32 %25, i32 %28, i32* %31)
  %33 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %34 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %13
  %43 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %44 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 162000, i32* %46, align 4
  %47 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %48 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intersect_rates(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
