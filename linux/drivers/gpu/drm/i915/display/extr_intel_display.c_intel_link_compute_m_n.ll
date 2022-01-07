; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_link_compute_m_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_link_compute_m_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_link_m_n = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_link_compute_m_n(i32 %0, i32 %1, i32 %2, i32 %3, %struct.intel_link_m_n* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_link_m_n*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.intel_link_m_n* %4, %struct.intel_link_m_n** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load i32, i32* %15, align 4
  %23 = call i32 @intel_dp_mode_to_fec_clock(i32 %22)
  store i32 %23, i32* %15, align 4
  br label %24

24:                                               ; preds = %21, %7
  %25 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %12, align 8
  %26 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %25, i32 0, i32 0
  store i32 64, i32* %26, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %28, %29
  %31 = mul nsw i32 %30, 8
  %32 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %12, align 8
  %33 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %32, i32 0, i32 4
  %34 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %12, align 8
  %35 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %34, i32 0, i32 3
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @compute_m_n(i32 %27, i32 %31, i32* %33, i32* %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %12, align 8
  %41 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %40, i32 0, i32 2
  %42 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %12, align 8
  %43 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %42, i32 0, i32 1
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @compute_m_n(i32 %38, i32 %39, i32* %41, i32* %43, i32 %44)
  ret void
}

declare dso_local i32 @intel_dp_mode_to_fec_clock(i32) #1

declare dso_local i32 @compute_m_n(i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
