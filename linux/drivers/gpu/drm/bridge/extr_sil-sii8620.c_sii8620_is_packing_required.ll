; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_is_packing_required.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_is_packing_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }
%struct.drm_display_mode = type { i32 }

@MHL3_MAX_PCLK = common dso_local global i32 0, align 4
@MHL3_MAX_PCLK_PP_MODE = common dso_local global i32 0, align 4
@MHL1_MAX_PCLK = common dso_local global i32 0, align 4
@MHL1_MAX_PCLK_PP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii8620*, %struct.drm_display_mode*)* @sii8620_is_packing_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii8620_is_packing_required(%struct.sii8620* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sii8620*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %9 = call i64 @sii8620_is_mhl3(%struct.sii8620* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @MHL3_MAX_PCLK, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @MHL3_MAX_PCLK_PP_MODE, align 4
  store i32 %13, i32* %7, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @MHL1_MAX_PCLK, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @MHL1_MAX_PCLK_PP_MODE, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %32

24:                                               ; preds = %17
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %32

31:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @sii8620_is_mhl3(%struct.sii8620*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
