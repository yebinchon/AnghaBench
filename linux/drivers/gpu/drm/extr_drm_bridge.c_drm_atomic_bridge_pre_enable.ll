; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_atomic_bridge_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_atomic_bridge_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.TYPE_2__*, %struct.drm_bridge* }
%struct.TYPE_2__ = type { i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)* }
%struct.drm_atomic_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_bridge_pre_enable(%struct.drm_bridge* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %6 = icmp ne %struct.drm_bridge* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %44

8:                                                ; preds = %2
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %9, i32 0, i32 1
  %11 = load %struct.drm_bridge*, %struct.drm_bridge** %10, align 8
  %12 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  call void @drm_atomic_bridge_pre_enable(%struct.drm_bridge* %11, %struct.drm_atomic_state* %12)
  %13 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %14 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)*, i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)** %16, align 8
  %18 = icmp ne i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %8
  %20 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %21 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)*, i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)** %23, align 8
  %25 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %26 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %27 = call i32 %24(%struct.drm_bridge* %25, %struct.drm_atomic_state* %26)
  br label %44

28:                                               ; preds = %8
  %29 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %30 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*)** %32, align 8
  %34 = icmp ne i32 (%struct.drm_bridge*)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %37 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*)** %39, align 8
  %41 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %42 = call i32 %40(%struct.drm_bridge* %41)
  br label %43

43:                                               ; preds = %35, %28
  br label %44

44:                                               ; preds = %7, %43, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
