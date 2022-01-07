; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_atomic_bridge_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_atomic_bridge_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.drm_bridge*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)* }
%struct.drm_atomic_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_bridge_enable(%struct.drm_bridge* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %6 = icmp ne %struct.drm_bridge* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %45

8:                                                ; preds = %2
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)*, i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)** %12, align 8
  %14 = icmp ne i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %17 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)*, i32 (%struct.drm_bridge*, %struct.drm_atomic_state*)** %19, align 8
  %21 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %22 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %23 = call i32 %20(%struct.drm_bridge* %21, %struct.drm_atomic_state* %22)
  br label %40

24:                                               ; preds = %8
  %25 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %26 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*)** %28, align 8
  %30 = icmp ne i32 (%struct.drm_bridge*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %33 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*)** %35, align 8
  %37 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %38 = call i32 %36(%struct.drm_bridge* %37)
  br label %39

39:                                               ; preds = %31, %24
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %42 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %41, i32 0, i32 0
  %43 = load %struct.drm_bridge*, %struct.drm_bridge** %42, align 8
  %44 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  call void @drm_atomic_bridge_enable(%struct.drm_bridge* %43, %struct.drm_atomic_state* %44)
  br label %45

45:                                               ; preds = %40, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
