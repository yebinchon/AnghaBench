; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_update_gamma_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_update_gamma_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_color_lut* }
%struct.drm_color_lut = type { i32, i32, i32 }
%struct.vc4_crtc = type { i8**, i8**, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @vc4_crtc_update_gamma_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_crtc_update_gamma_lut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.vc4_crtc*, align 8
  %4 = alloca %struct.drm_color_lut*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = call %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc* %7)
  store %struct.vc4_crtc* %8, %struct.vc4_crtc** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.drm_color_lut*, %struct.drm_color_lut** %14, align 8
  store %struct.drm_color_lut* %15, %struct.drm_color_lut** %4, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i64 @drm_color_lut_size(%struct.TYPE_4__* %20)
  store i64 %21, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %60, %1
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %22
  %27 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %27, i64 %28
  %30 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @drm_color_lut_extract(i32 %31, i32 8)
  %33 = load %struct.vc4_crtc*, %struct.vc4_crtc** %3, align 8
  %34 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  store i8* %32, i8** %37, align 8
  %38 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %38, i64 %39
  %41 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @drm_color_lut_extract(i32 %42, i32 8)
  %44 = load %struct.vc4_crtc*, %struct.vc4_crtc** %3, align 8
  %45 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %44, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8* %43, i8** %48, align 8
  %49 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %49, i64 %50
  %52 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @drm_color_lut_extract(i32 %53, i32 8)
  %55 = load %struct.vc4_crtc*, %struct.vc4_crtc** %3, align 8
  %56 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  store i8* %54, i8** %59, align 8
  br label %60

60:                                               ; preds = %26
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %22

63:                                               ; preds = %22
  %64 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %65 = call i32 @vc4_crtc_lut_load(%struct.drm_crtc* %64)
  ret void
}

declare dso_local %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @drm_color_lut_size(%struct.TYPE_4__*) #1

declare dso_local i8* @drm_color_lut_extract(i32, i32) #1

declare dso_local i32 @vc4_crtc_lut_load(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
