; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_connector = type { %struct.TYPE_6__, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.drm_device* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32* }

@mst_cbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_dp_mst_init(%struct.radeon_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.radeon_connector* %0, %struct.radeon_connector** %3, align 8
  %5 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %4, align 8
  %9 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32* @mst_cbs, i32** %19, align 8
  %20 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %20, i32 0, i32 2
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @drm_dp_mst_topology_mgr_init(%struct.TYPE_8__* %21, %struct.drm_device* %22, i32* %26, i32 16, i32 6, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %16, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @drm_dp_mst_topology_mgr_init(%struct.TYPE_8__*, %struct.drm_device*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
