; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vpp.c_meson_vpp_write_vd_scaling_filter_coefs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vpp.c_meson_vpp_write_vd_scaling_filter_coefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i64 }

@VPP_SCALE_HORIZONTAL_COEF = common dso_local global i32 0, align 4
@VPP_SCALE_COEF_IDX = common dso_local global i32 0, align 4
@VPP_SCALE_COEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_drm*, i32*, i32)* @meson_vpp_write_vd_scaling_filter_coefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_vpp_write_vd_scaling_filter_coefs(%struct.meson_drm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.meson_drm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @VPP_SCALE_HORIZONTAL_COEF, align 4
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  %15 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %16 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @VPP_SCALE_COEF_IDX, align 4
  %19 = call i64 @_REG(i32 %18)
  %20 = add nsw i64 %17, %19
  %21 = call i32 @writel_relaxed(i32 %14, i64 %20)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %38, %13
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 33
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %32 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @VPP_SCALE_COEF, align 4
  %35 = call i64 @_REG(i32 %34)
  %36 = add nsw i64 %33, %35
  %37 = call i32 @writel_relaxed(i32 %30, i64 %36)
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %22

41:                                               ; preds = %22
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
