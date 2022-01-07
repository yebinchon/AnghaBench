; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_buffer_object = type { %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_bo_unpin(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.vmw_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_buffer_object*, align 8
  %9 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %5, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %11 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %10, i32 0, i32 0
  store %struct.ttm_buffer_object* %11, %struct.ttm_buffer_object** %8, align 8
  %12 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %13 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %12, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @ttm_read_lock(i32* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %43

23:                                               ; preds = %3
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %24, i32 %25, i32 0, i32* null)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %38

33:                                               ; preds = %23
  %34 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %35 = call i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object* %34, i32 0)
  %36 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %37 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %36)
  br label %38

38:                                               ; preds = %33, %32
  %39 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %40 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %39, i32 0, i32 0
  %41 = call i32 @ttm_read_unlock(i32* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ttm_read_lock(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32*) #1

declare dso_local i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object*, i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
