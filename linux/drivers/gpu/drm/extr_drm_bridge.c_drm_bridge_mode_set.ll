; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_bridge_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_bridge_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.drm_bridge*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* }
%struct.drm_display_mode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_bridge_mode_set(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %8 = icmp ne %struct.drm_bridge* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %33

10:                                               ; preds = %3
  %11 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %12 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, i32 (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)** %14, align 8
  %16 = icmp ne i32 (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %19 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, i32 (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)** %21, align 8
  %23 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %26 = call i32 %22(%struct.drm_bridge* %23, %struct.drm_display_mode* %24, %struct.drm_display_mode* %25)
  br label %27

27:                                               ; preds = %17, %10
  %28 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %29 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %28, i32 0, i32 0
  %30 = load %struct.drm_bridge*, %struct.drm_bridge** %29, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  call void @drm_bridge_mode_set(%struct.drm_bridge* %30, %struct.drm_display_mode* %31, %struct.drm_display_mode* %32)
  br label %33

33:                                               ; preds = %27, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
