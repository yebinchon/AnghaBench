; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_get_roi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_get_roi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.mdp5_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i64*, i64*)* @get_roi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_roi(%struct.drm_crtc* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.mdp5_crtc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %11 = call %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc* %10)
  store %struct.mdp5_crtc* %11, %struct.mdp5_crtc** %7, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %21 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %3
  %26 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %27 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %32 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %30, %34
  %36 = call i64 @min(i64 %29, i64 %35)
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  br label %50

38:                                               ; preds = %3
  %39 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %40 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %44 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @abs(i64 %46)
  %48 = sub nsw i64 %42, %47
  %49 = load i64*, i64** %5, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %38, %25
  %51 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %52 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %58 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %63 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %61, %65
  %67 = call i64 @min(i64 %60, i64 %66)
  %68 = load i64*, i64** %6, align 8
  store i64 %67, i64* %68, align 8
  br label %81

69:                                               ; preds = %50
  %70 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %71 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %75 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @abs(i64 %77)
  %79 = sub nsw i64 %73, %78
  %80 = load i64*, i64** %6, align 8
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %69, %56
  ret void
}

declare dso_local %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
