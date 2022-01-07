; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_pol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_pol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dpi = type { i32 }
%struct.mtk_dpi_polarities = type { i64, i64, i64, i64 }

@MTK_DPI_POLARITY_RISING = common dso_local global i64 0, align 8
@CK_POL = common dso_local global i32 0, align 4
@DE_POL = common dso_local global i32 0, align 4
@HSYNC_POL = common dso_local global i32 0, align 4
@VSYNC_POL = common dso_local global i32 0, align 4
@DPI_OUTPUT_SETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dpi*, %struct.mtk_dpi_polarities*)* @mtk_dpi_config_pol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dpi_config_pol(%struct.mtk_dpi* %0, %struct.mtk_dpi_polarities* %1) #0 {
  %3 = alloca %struct.mtk_dpi*, align 8
  %4 = alloca %struct.mtk_dpi_polarities*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_dpi* %0, %struct.mtk_dpi** %3, align 8
  store %struct.mtk_dpi_polarities* %1, %struct.mtk_dpi_polarities** %4, align 8
  %6 = load %struct.mtk_dpi_polarities*, %struct.mtk_dpi_polarities** %4, align 8
  %7 = getelementptr inbounds %struct.mtk_dpi_polarities, %struct.mtk_dpi_polarities* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MTK_DPI_POLARITY_RISING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @CK_POL, align 4
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ 0, %11 ], [ %13, %12 ]
  %16 = load %struct.mtk_dpi_polarities*, %struct.mtk_dpi_polarities** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_dpi_polarities, %struct.mtk_dpi_polarities* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MTK_DPI_POLARITY_RISING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @DE_POL, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 0, %21 ], [ %23, %22 ]
  %26 = or i32 %15, %25
  %27 = load %struct.mtk_dpi_polarities*, %struct.mtk_dpi_polarities** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_dpi_polarities, %struct.mtk_dpi_polarities* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MTK_DPI_POLARITY_RISING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @HSYNC_POL, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  %37 = or i32 %26, %36
  %38 = load %struct.mtk_dpi_polarities*, %struct.mtk_dpi_polarities** %4, align 8
  %39 = getelementptr inbounds %struct.mtk_dpi_polarities, %struct.mtk_dpi_polarities* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MTK_DPI_POLARITY_RISING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @VSYNC_POL, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 0, %43 ], [ %45, %44 ]
  %48 = or i32 %37, %47
  store i32 %48, i32* %5, align 4
  %49 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %50 = load i32, i32* @DPI_OUTPUT_SETTING, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @CK_POL, align 4
  %53 = load i32, i32* @DE_POL, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @HSYNC_POL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @VSYNC_POL, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @mtk_dpi_mask(%struct.mtk_dpi* %49, i32 %50, i32 %51, i32 %58)
  ret void
}

declare dso_local i32 @mtk_dpi_mask(%struct.mtk_dpi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
