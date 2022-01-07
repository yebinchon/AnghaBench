; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_object.c_ttm_base_object_lookup_for_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_object.c_ttm_base_object_lookup_for_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_base_object = type { i32 }
%struct.ttm_object_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ttm_base_object* @ttm_base_object_lookup_for_ref(%struct.ttm_object_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_object_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_base_object*, align 8
  store %struct.ttm_object_device* %0, %struct.ttm_object_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.ttm_object_device*, %struct.ttm_object_device** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %7, i32 0, i32 0
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ttm_base_object* @idr_find(i32* %8, i32 %9)
  store %struct.ttm_base_object* %10, %struct.ttm_base_object** %5, align 8
  %11 = load %struct.ttm_base_object*, %struct.ttm_base_object** %5, align 8
  %12 = icmp ne %struct.ttm_base_object* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ttm_base_object*, %struct.ttm_base_object** %5, align 8
  %15 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %14, i32 0, i32 0
  %16 = call i32 @kref_get_unless_zero(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.ttm_base_object* null, %struct.ttm_base_object** %5, align 8
  br label %19

19:                                               ; preds = %18, %13, %2
  %20 = call i32 (...) @rcu_read_unlock()
  %21 = load %struct.ttm_base_object*, %struct.ttm_base_object** %5, align 8
  ret %struct.ttm_base_object* %21
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ttm_base_object* @idr_find(i32*, i32) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
