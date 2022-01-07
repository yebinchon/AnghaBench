; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_downscaling_clk_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_downscaling_clk_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_pipeline = type { i32 }
%struct.drm_display_mode = type { i64, i32, i32 }
%struct.komeda_data_flow_cfg = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_pipeline*, %struct.drm_display_mode*, i64, %struct.komeda_data_flow_cfg*)* @d71_downscaling_clk_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d71_downscaling_clk_check(%struct.komeda_pipeline* %0, %struct.drm_display_mode* %1, i64 %2, %struct.komeda_data_flow_cfg* %3) #0 {
  %5 = alloca %struct.komeda_pipeline*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.komeda_data_flow_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.komeda_pipeline* %0, %struct.komeda_pipeline** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.komeda_data_flow_cfg* %3, %struct.komeda_data_flow_cfg** %8, align 8
  %14 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %15 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %18 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %21 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %12, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %31, 3
  store i64 %32, i64* %13, align 8
  br label %48

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %12, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %11, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = mul nsw i32 2, %44
  %46 = sub nsw i32 %43, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %33, %26
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %13, align 8
  %51 = mul i64 %49, %50
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 1000
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %12, align 8
  %58 = mul i64 %56, %57
  %59 = icmp uge i64 %51, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %64

61:                                               ; preds = %48
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  br label %64

64:                                               ; preds = %61, %60
  %65 = phi i32 [ 0, %60 ], [ %63, %61 ]
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
