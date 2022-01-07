; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.sii8620 = type { i32* }

@MHL_DCAP_VID_LINK_MODE = common dso_local global i64 0, align 8
@MHL_DCAP_VID_LINK_PPIXEL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*, %struct.drm_display_mode*)* @sii8620_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii8620_mode_valid(%struct.drm_bridge* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.sii8620*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %10 = call %struct.sii8620* @bridge_to_sii8620(%struct.drm_bridge* %9)
  store %struct.sii8620* %10, %struct.sii8620** %6, align 8
  %11 = load %struct.sii8620*, %struct.sii8620** %6, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %13 = call i32 @sii8620_is_packing_required(%struct.sii8620* %11, %struct.drm_display_mode* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.sii8620*, %struct.sii8620** %6, align 8
  %15 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @MHL_DCAP_VID_LINK_MODE, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MHL_DCAP_VID_LINK_PPIXEL, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %34 [
    i32 0, label %23
    i32 1, label %25
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @MODE_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @MODE_OK, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.sii8620* @bridge_to_sii8620(%struct.drm_bridge*) #1

declare dso_local i32 @sii8620_is_packing_required(%struct.sii8620*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
