; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_scaler.c_sun8i_ui_scaler_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_scaler.c_sun8i_ui_scaler_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_mixer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@DE3_VI_SCALER_UNIT_BASE = common dso_local global i64 0, align 8
@DE3_VI_SCALER_UNIT_SIZE = common dso_local global i32 0, align 4
@DE3_UI_SCALER_UNIT_SIZE = common dso_local global i32 0, align 4
@DE2_VI_SCALER_UNIT_BASE = common dso_local global i64 0, align 8
@DE2_VI_SCALER_UNIT_SIZE = common dso_local global i32 0, align 4
@DE2_UI_SCALER_UNIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sun8i_mixer*, i32)* @sun8i_ui_scaler_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun8i_ui_scaler_base(%struct.sun8i_mixer* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sun8i_mixer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sun8i_mixer* %0, %struct.sun8i_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %4, align 8
  %8 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %4, align 8
  %13 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load i64, i64* @DE3_VI_SCALER_UNIT_BASE, align 8
  %20 = load i32, i32* @DE3_VI_SCALER_UNIT_SIZE, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = load i32, i32* @DE3_UI_SCALER_UNIT_SIZE, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %26, %27
  %29 = mul nsw i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %24, %30
  store i64 %31, i64* %3, align 8
  br label %46

32:                                               ; preds = %2
  %33 = load i64, i64* @DE2_VI_SCALER_UNIT_BASE, align 8
  %34 = load i32, i32* @DE2_VI_SCALER_UNIT_SIZE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = load i32, i32* @DE2_UI_SCALER_UNIT_SIZE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %40, %41
  %43 = mul nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %38, %44
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %32, %18
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
