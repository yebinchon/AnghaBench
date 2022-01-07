; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.ttm_bo_device }
%struct.ttm_bo_device = type { i32 }
%struct.vmw_buffer_object = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.ttm_buffer_object = type opaque
%struct.ttm_buffer_object.2 = type opaque
%struct.ttm_buffer_object.0 = type opaque
%struct.ttm_buffer_object.1 = type opaque

@TTM_MAX_BO_PRIORITY = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_bo_init(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, i64 %2, %struct.ttm_placement* %3, i32 %4, void (%struct.ttm_buffer_object*)* %5) #0 {
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca %struct.vmw_buffer_object*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ttm_placement*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.ttm_buffer_object*)*, align 8
  %13 = alloca %struct.ttm_bo_device*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %7, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ttm_placement* %3, %struct.ttm_placement** %10, align 8
  store i32 %4, i32* %11, align 4
  store void (%struct.ttm_buffer_object*)* %5, void (%struct.ttm_buffer_object*)** %12, align 8
  %17 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %18 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %17, i32 0, i32 0
  store %struct.ttm_bo_device* %18, %struct.ttm_bo_device** %13, align 8
  %19 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %12, align 8
  %20 = icmp eq void (%struct.ttm_buffer_object*)* %19, bitcast (void (%struct.ttm_buffer_object.0*)* @vmw_user_bo_destroy to void (%struct.ttm_buffer_object*)*)
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %16, align 4
  %22 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %12, align 8
  %23 = icmp ne void (%struct.ttm_buffer_object*)* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %12, align 8
  %29 = icmp ne void (%struct.ttm_buffer_object*)* %28, bitcast (void (%struct.ttm_buffer_object.1*)* @vmw_bo_bo_free to void (%struct.ttm_buffer_object*)*)
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br label %32

32:                                               ; preds = %30, %6
  %33 = phi i1 [ false, %6 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON_ONCE(i32 %34)
  %36 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* %16, align 4
  %39 = call i64 @vmw_bo_acc_size(%struct.vmw_private* %36, i64 %37, i32 %38)
  store i64 %39, i64* %14, align 8
  %40 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %41 = call i32 @memset(%struct.vmw_buffer_object* %40, i32 0, i32 8)
  %42 = load i32, i32* @TTM_MAX_BO_PRIORITY, align 4
  %43 = icmp sle i32 %42, 3
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUILD_BUG_ON(i32 %44)
  %46 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %47 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 3, i32* %48, align 4
  %49 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %50 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %49, i32 0, i32 1
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %53 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %54 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %53, i32 0, i32 0
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* @ttm_bo_type_device, align 4
  %57 = load %struct.ttm_placement*, %struct.ttm_placement** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i64, i64* %14, align 8
  %60 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %12, align 8
  %61 = bitcast void (%struct.ttm_buffer_object*)* %60 to void (%struct.ttm_buffer_object.2*)*
  %62 = call i32 @ttm_bo_init(%struct.ttm_bo_device* %52, %struct.TYPE_2__* %54, i64 %55, i32 %56, %struct.ttm_placement* %57, i32 0, i32 %58, i64 %59, i32* null, i32* null, void (%struct.ttm_buffer_object.2*)* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  ret i32 %63
}

declare dso_local void @vmw_user_bo_destroy(%struct.ttm_buffer_object.0*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local void @vmw_bo_bo_free(%struct.ttm_buffer_object.1*) #1

declare dso_local i64 @vmw_bo_acc_size(%struct.vmw_private*, i64, i32) #1

declare dso_local i32 @memset(%struct.vmw_buffer_object*, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ttm_bo_init(%struct.ttm_bo_device*, %struct.TYPE_2__*, i64, i32, %struct.ttm_placement*, i32, i32, i64, i32*, i32*, void (%struct.ttm_buffer_object.2*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
