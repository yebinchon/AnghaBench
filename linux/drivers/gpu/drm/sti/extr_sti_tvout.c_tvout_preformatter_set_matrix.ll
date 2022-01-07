; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_tvout.c_tvout_preformatter_set_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_tvout.c_tvout_preformatter_set_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_tvout = type { i32 }
%struct.drm_display_mode = type { i64 }

@TVO_MIN_HD_HEIGHT = common dso_local global i64 0, align 8
@rgb_to_ycbcr_709 = common dso_local global i32* null, align 8
@rgb_to_ycbcr_601 = common dso_local global i32* null, align 8
@TVO_CSC_MAIN_M0 = common dso_local global i64 0, align 8
@TVO_CSC_AUX_M0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_tvout*, %struct.drm_display_mode*)* @tvout_preformatter_set_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tvout_preformatter_set_matrix(%struct.sti_tvout* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.sti_tvout*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.sti_tvout* %0, %struct.sti_tvout** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %7 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %8 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TVO_MIN_HD_HEIGHT, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** @rgb_to_ycbcr_709, align 8
  store i32* %13, i32** %6, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** @rgb_to_ycbcr_601, align 8
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %14, %12
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %45, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load %struct.sti_tvout*, %struct.sti_tvout** %3, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @TVO_CSC_MAIN_M0, align 8
  %28 = load i32, i32* %5, align 4
  %29 = mul i32 %28, 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @tvout_write(%struct.sti_tvout* %21, i32 %26, i64 %31)
  %33 = load %struct.sti_tvout*, %struct.sti_tvout** %3, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @TVO_CSC_AUX_M0, align 8
  %40 = load i32, i32* %5, align 4
  %41 = mul i32 %40, 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = call i32 @tvout_write(%struct.sti_tvout* %33, i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %20
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %17

48:                                               ; preds = %17
  ret void
}

declare dso_local i32 @tvout_write(%struct.sti_tvout*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
