; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_intel_find_dp_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_intel_find_dp_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_limit_t = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.gma_clock_t = type { i32, i32, i32, i32, i32 }
%struct.gma_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.gma_clock_t*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_limit_t*, %struct.drm_crtc*, i32, i32, %struct.gma_clock_t*)* @cdv_intel_find_dp_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_find_dp_pll(%struct.gma_limit_t* %0, %struct.drm_crtc* %1, i32 %2, i32 %3, %struct.gma_clock_t* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gma_limit_t*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gma_clock_t*, align 8
  %12 = alloca %struct.gma_crtc*, align 8
  %13 = alloca %struct.gma_clock_t, align 4
  store %struct.gma_limit_t* %0, %struct.gma_limit_t** %7, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.gma_clock_t* %4, %struct.gma_clock_t** %11, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %15 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %14)
  store %struct.gma_crtc* %15, %struct.gma_crtc** %12, align 8
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %49 [
    i32 27000, label %17
    i32 100000, label %33
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 200000
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 0
  store i32 2, i32* %21, align 4
  %22 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 1
  store i32 10, i32* %22, align 4
  %23 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 2
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 4
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 3
  store i32 118, i32* %25, align 4
  br label %32

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 1
  store i32 10, i32* %28, align 4
  %29 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 2
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 4
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 3
  store i32 98, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %20
  br label %50

33:                                               ; preds = %5
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 200000
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 0
  store i32 2, i32* %37, align 4
  %38 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 1
  store i32 10, i32* %38, align 4
  %39 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 2
  store i32 5, i32* %39, align 4
  %40 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 4
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 3
  store i32 160, i32* %41, align 4
  br label %48

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 1
  store i32 10, i32* %44, align 4
  %45 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 2
  store i32 5, i32* %45, align 4
  %46 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 4
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 3
  store i32 133, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %36
  br label %50

49:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %60

50:                                               ; preds = %48, %32
  %51 = load %struct.gma_crtc*, %struct.gma_crtc** %12, align 8
  %52 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (i32, %struct.gma_clock_t*)*, i32 (i32, %struct.gma_clock_t*)** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 %55(i32 %56, %struct.gma_clock_t* %13)
  %58 = load %struct.gma_clock_t*, %struct.gma_clock_t** %11, align 8
  %59 = call i32 @memcpy(%struct.gma_clock_t* %58, %struct.gma_clock_t* %13, i32 20)
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %50, %49
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @memcpy(%struct.gma_clock_t*, %struct.gma_clock_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
