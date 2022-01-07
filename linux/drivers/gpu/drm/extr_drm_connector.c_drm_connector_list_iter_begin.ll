; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_list_iter_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_list_iter_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_connector_list_iter = type { i32*, %struct.drm_device* }

@connector_list_iter_dep_map = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_connector_list_iter_begin(%struct.drm_device* %0, %struct.drm_connector_list_iter* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_connector_list_iter*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_connector_list_iter* %1, %struct.drm_connector_list_iter** %4, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_connector_list_iter*, %struct.drm_connector_list_iter** %4, align 8
  %7 = getelementptr inbounds %struct.drm_connector_list_iter, %struct.drm_connector_list_iter* %6, i32 0, i32 1
  store %struct.drm_device* %5, %struct.drm_device** %7, align 8
  %8 = load %struct.drm_connector_list_iter*, %struct.drm_connector_list_iter** %4, align 8
  %9 = getelementptr inbounds %struct.drm_connector_list_iter, %struct.drm_connector_list_iter* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* @_RET_IP_, align 4
  %11 = call i32 @lock_acquire_shared_recursive(i32* @connector_list_iter_dep_map, i32 0, i32 1, i32* null, i32 %10)
  ret void
}

declare dso_local i32 @lock_acquire_shared_recursive(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
