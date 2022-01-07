; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_compare_link_m_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_compare_link_m_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_link_m_n = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_link_m_n*, %struct.intel_link_m_n*, i32)* @intel_compare_link_m_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_compare_link_m_n(%struct.intel_link_m_n* %0, %struct.intel_link_m_n* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_link_m_n*, align 8
  %5 = alloca %struct.intel_link_m_n*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_link_m_n* %0, %struct.intel_link_m_n** %4, align 8
  store %struct.intel_link_m_n* %1, %struct.intel_link_m_n** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %8 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %11 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %3
  %15 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %16 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %19 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %22 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %25 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @intel_compare_m_n(i32 %17, i32 %20, i32 %23, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %14
  %31 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %32 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %35 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %38 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %41 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @intel_compare_m_n(i32 %33, i32 %36, i32 %39, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %30, %14, %3
  %47 = phi i1 [ false, %14 ], [ false, %3 ], [ %45, %30 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local i64 @intel_compare_m_n(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
