; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_destroy_conn_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_destroy_conn_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dsi*)* @mtk_dsi_destroy_conn_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dsi_destroy_conn_enc(%struct.mtk_dsi* %0) #0 {
  %2 = alloca %struct.mtk_dsi*, align 8
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %2, align 8
  %3 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %4 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %3, i32 0, i32 2
  %5 = call i32 @drm_encoder_cleanup(i32* %4)
  %6 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %7 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %13 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %12, i32 0, i32 1
  %14 = call i32 @drm_connector_cleanup(%struct.TYPE_2__* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %17 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %22 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @drm_panel_detach(i64 %23)
  br label %25

25:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @drm_encoder_cleanup(i32*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.TYPE_2__*) #1

declare dso_local i32 @drm_panel_detach(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
