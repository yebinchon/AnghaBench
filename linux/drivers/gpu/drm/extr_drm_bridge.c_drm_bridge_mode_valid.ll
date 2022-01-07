; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_bridge_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_bridge_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.drm_bridge*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_bridge*, %struct.drm_display_mode*)* }
%struct.drm_display_mode = type { i32 }

@MODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_bridge_mode_valid(%struct.drm_bridge* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %7 = load i32, i32* @MODE_OK, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %9 = icmp ne %struct.drm_bridge* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %14 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.drm_bridge*, %struct.drm_display_mode*)*, i32 (%struct.drm_bridge*, %struct.drm_display_mode*)** %16, align 8
  %18 = icmp ne i32 (%struct.drm_bridge*, %struct.drm_display_mode*)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %21 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.drm_bridge*, %struct.drm_display_mode*)*, i32 (%struct.drm_bridge*, %struct.drm_display_mode*)** %23, align 8
  %25 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %27 = call i32 %24(%struct.drm_bridge* %25, %struct.drm_display_mode* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %19, %12
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MODE_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %28
  %35 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %36 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %35, i32 0, i32 0
  %37 = load %struct.drm_bridge*, %struct.drm_bridge** %36, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = call i32 @drm_bridge_mode_valid(%struct.drm_bridge* %37, %struct.drm_display_mode* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %32, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
