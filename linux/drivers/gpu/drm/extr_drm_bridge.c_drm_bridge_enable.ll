; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_bridge_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_bridge_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.drm_bridge*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_bridge*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_bridge_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %3 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %4 = icmp ne %struct.drm_bridge* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %8 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*)** %10, align 8
  %12 = icmp ne i32 (%struct.drm_bridge*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %15 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*)** %17, align 8
  %19 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %20 = call i32 %18(%struct.drm_bridge* %19)
  br label %21

21:                                               ; preds = %13, %6
  %22 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %23 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %22, i32 0, i32 0
  %24 = load %struct.drm_bridge*, %struct.drm_bridge** %23, align 8
  call void @drm_bridge_enable(%struct.drm_bridge* %24)
  br label %25

25:                                               ; preds = %21, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
