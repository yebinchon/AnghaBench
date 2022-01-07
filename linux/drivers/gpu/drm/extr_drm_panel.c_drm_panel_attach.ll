; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_panel.c_drm_panel_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_panel.c_drm_panel_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32, %struct.drm_connector* }
%struct.drm_connector = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_panel_attach(%struct.drm_panel* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_panel*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %4, align 8
  %7 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %6, i32 0, i32 1
  %8 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %9 = icmp ne %struct.drm_connector* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %15 = load %struct.drm_panel*, %struct.drm_panel** %4, align 8
  %16 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %15, i32 0, i32 1
  store %struct.drm_connector* %14, %struct.drm_connector** %16, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %18 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_panel*, %struct.drm_panel** %4, align 8
  %21 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %13, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
