; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_compute_m_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_compute_m_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdv_intel_dp_m_n = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.cdv_intel_dp_m_n*)* @cdv_intel_dp_compute_m_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_dp_compute_m_n(i32 %0, i32 %1, i32 %2, i32 %3, %struct.cdv_intel_dp_m_n* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdv_intel_dp_m_n*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.cdv_intel_dp_m_n* %4, %struct.cdv_intel_dp_m_n** %10, align 8
  %11 = load %struct.cdv_intel_dp_m_n*, %struct.cdv_intel_dp_m_n** %10, align 8
  %12 = getelementptr inbounds %struct.cdv_intel_dp_m_n, %struct.cdv_intel_dp_m_n* %11, i32 0, i32 0
  store i32 64, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %13, %14
  %16 = add nsw i32 %15, 7
  %17 = ashr i32 %16, 3
  %18 = load %struct.cdv_intel_dp_m_n*, %struct.cdv_intel_dp_m_n** %10, align 8
  %19 = getelementptr inbounds %struct.cdv_intel_dp_m_n, %struct.cdv_intel_dp_m_n* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load %struct.cdv_intel_dp_m_n*, %struct.cdv_intel_dp_m_n** %10, align 8
  %24 = getelementptr inbounds %struct.cdv_intel_dp_m_n, %struct.cdv_intel_dp_m_n* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cdv_intel_dp_m_n*, %struct.cdv_intel_dp_m_n** %10, align 8
  %26 = getelementptr inbounds %struct.cdv_intel_dp_m_n, %struct.cdv_intel_dp_m_n* %25, i32 0, i32 1
  %27 = load %struct.cdv_intel_dp_m_n*, %struct.cdv_intel_dp_m_n** %10, align 8
  %28 = getelementptr inbounds %struct.cdv_intel_dp_m_n, %struct.cdv_intel_dp_m_n* %27, i32 0, i32 2
  %29 = call i32 @cdv_intel_reduce_ratio(i32* %26, i32* %28)
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.cdv_intel_dp_m_n*, %struct.cdv_intel_dp_m_n** %10, align 8
  %32 = getelementptr inbounds %struct.cdv_intel_dp_m_n, %struct.cdv_intel_dp_m_n* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.cdv_intel_dp_m_n*, %struct.cdv_intel_dp_m_n** %10, align 8
  %35 = getelementptr inbounds %struct.cdv_intel_dp_m_n, %struct.cdv_intel_dp_m_n* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cdv_intel_dp_m_n*, %struct.cdv_intel_dp_m_n** %10, align 8
  %37 = getelementptr inbounds %struct.cdv_intel_dp_m_n, %struct.cdv_intel_dp_m_n* %36, i32 0, i32 3
  %38 = load %struct.cdv_intel_dp_m_n*, %struct.cdv_intel_dp_m_n** %10, align 8
  %39 = getelementptr inbounds %struct.cdv_intel_dp_m_n, %struct.cdv_intel_dp_m_n* %38, i32 0, i32 4
  %40 = call i32 @cdv_intel_reduce_ratio(i32* %37, i32* %39)
  ret void
}

declare dso_local i32 @cdv_intel_reduce_ratio(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
