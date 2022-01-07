; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_needs_link_retrain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_needs_link_retrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32, i32 }

@DP_LINK_STATUS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_dp_needs_link_retrain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_needs_link_retrain(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %7 = load i32, i32* @DP_LINK_STATUS_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %12 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %18 = call i64 @intel_psr_enabled(%struct.intel_dp* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %45

21:                                               ; preds = %16
  %22 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %23 = call i32 @intel_dp_get_link_status(%struct.intel_dp* %22, i32* %10)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %45

26:                                               ; preds = %21
  %27 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %28 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %29 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %32 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @intel_dp_link_params_valid(%struct.intel_dp* %27, i32 %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %45

37:                                               ; preds = %26
  %38 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %39 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drm_dp_channel_eq_ok(i32* %10, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %37, %36, %25, %20, %15
  %46 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @intel_psr_enabled(%struct.intel_dp*) #2

declare dso_local i32 @intel_dp_get_link_status(%struct.intel_dp*, i32*) #2

declare dso_local i32 @intel_dp_link_params_valid(%struct.intel_dp*, i32, i32) #2

declare dso_local i32 @drm_dp_channel_eq_ok(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
