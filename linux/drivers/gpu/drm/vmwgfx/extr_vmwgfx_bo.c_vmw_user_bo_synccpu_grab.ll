; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_user_bo_synccpu_grab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_user_bo_synccpu_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_user_buffer_object = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ttm_object_file = type { i32 }

@drm_vmw_synccpu_allow_cs = common dso_local global i32 0, align 4
@drm_vmw_synccpu_dontblock = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TTM_REF_SYNCCPU_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_user_buffer_object*, %struct.ttm_object_file*, i32)* @vmw_user_bo_synccpu_grab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_user_bo_synccpu_grab(%struct.vmw_user_buffer_object* %0, %struct.ttm_object_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_user_buffer_object*, align 8
  %6 = alloca %struct.ttm_object_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_buffer_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.vmw_user_buffer_object* %0, %struct.vmw_user_buffer_object** %5, align 8
  store %struct.ttm_object_file* %1, %struct.ttm_object_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %5, align 8
  %14 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.ttm_buffer_object* %15, %struct.ttm_buffer_object** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @drm_vmw_synccpu_allow_cs, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @drm_vmw_synccpu_dontblock, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %29 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %37

35:                                               ; preds = %20
  %36 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 0, %34 ], [ %36, %35 ]
  %39 = call i64 @dma_resv_wait_timeout_rcu(i32 %31, i32 1, i32 1, i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %89

45:                                               ; preds = %37
  %46 = load i64, i64* %12, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, i64* %12, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %89

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %89

53:                                               ; preds = %3
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @drm_vmw_synccpu_dontblock, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @ttm_bo_synccpu_write_grab(%struct.ttm_buffer_object* %54, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %89

70:                                               ; preds = %53
  %71 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %72 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %5, align 8
  %73 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* @TTM_REF_SYNCCPU_WRITE, align 4
  %76 = call i32 @ttm_ref_object_add(%struct.ttm_object_file* %71, i32* %74, i32 %75, i32* %9, i32 0)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79, %70
  %83 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %5, align 8
  %84 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @ttm_bo_synccpu_write_release(%struct.ttm_buffer_object* %85)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %68, %52, %48, %42
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @dma_resv_wait_timeout_rcu(i32, i32, i32, i32) #1

declare dso_local i32 @ttm_bo_synccpu_write_grab(%struct.ttm_buffer_object*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_ref_object_add(%struct.ttm_object_file*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ttm_bo_synccpu_write_release(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
