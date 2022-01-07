; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move_m2mf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move_m2mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, i32*, %struct.ttm_mem_reg*)*, %struct.nouveau_channel.0* }
%struct.nouveau_channel = type opaque
%struct.nouveau_channel.0 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.nouveau_cli = type { i32 }
%struct.nouveau_fence = type { i32 }

@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*)* @nouveau_bo_move_m2mf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bo_move_m2mf(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.nouveau_drm*, align 8
  %13 = alloca %struct.nouveau_channel.0*, align 8
  %14 = alloca %struct.nouveau_cli*, align 8
  %15 = alloca %struct.nouveau_fence*, align 8
  %16 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %11, align 8
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.nouveau_drm* @nouveau_bdev(i32 %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %12, align 8
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %23, align 8
  store %struct.nouveau_channel.0* %24, %struct.nouveau_channel.0** %13, align 8
  %25 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %13, align 8
  %26 = getelementptr inbounds %struct.nouveau_channel.0, %struct.nouveau_channel.0* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to %struct.nouveau_cli*
  store %struct.nouveau_cli* %30, %struct.nouveau_cli** %14, align 8
  %31 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %32 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %5
  %40 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %41 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %42 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %43 = call i32 @nouveau_bo_move_prep(%struct.nouveau_drm* %40, %struct.ttm_buffer_object* %41, %struct.ttm_mem_reg* %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %6, align 4
  br label %95

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %5
  %50 = load %struct.nouveau_cli*, %struct.nouveau_cli** %14, align 8
  %51 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %50, i32 0, i32 0
  %52 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %53 = call i32 @mutex_lock_nested(i32* %51, i32 %52)
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %55 = call i32 @nouveau_bo(%struct.ttm_buffer_object* %54)
  %56 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %13, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @nouveau_fence_sync(i32 %55, %struct.nouveau_channel.0* %56, i32 1, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %49
  %62 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %63 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, i32*, %struct.ttm_mem_reg*)*, i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, i32*, %struct.ttm_mem_reg*)** %64, align 8
  %66 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %13, align 8
  %67 = bitcast %struct.nouveau_channel.0* %66 to %struct.nouveau_channel*
  %68 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %69 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %70 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %69, i32 0, i32 0
  %71 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %72 = call i32 %65(%struct.nouveau_channel* %67, %struct.ttm_buffer_object* %68, i32* %70, %struct.ttm_mem_reg* %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %61
  %76 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %13, align 8
  %77 = call i32 @nouveau_fence_new(%struct.nouveau_channel.0* %76, i32 0, %struct.nouveau_fence** %15)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %82 = load %struct.nouveau_fence*, %struct.nouveau_fence** %15, align 8
  %83 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %82, i32 0, i32 0
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %86 = call i32 @ttm_bo_move_accel_cleanup(%struct.ttm_buffer_object* %81, i32* %83, i32 %84, %struct.ttm_mem_reg* %85)
  store i32 %86, i32* %16, align 4
  %87 = call i32 @nouveau_fence_unref(%struct.nouveau_fence** %15)
  br label %88

88:                                               ; preds = %80, %75
  br label %89

89:                                               ; preds = %88, %61
  br label %90

90:                                               ; preds = %89, %49
  %91 = load %struct.nouveau_cli*, %struct.nouveau_cli** %14, align 8
  %92 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %90, %46
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @nouveau_bo_move_prep(%struct.nouveau_drm*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @nouveau_fence_sync(i32, %struct.nouveau_channel.0*, i32, i32) #1

declare dso_local i32 @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @nouveau_fence_new(%struct.nouveau_channel.0*, i32, %struct.nouveau_fence**) #1

declare dso_local i32 @ttm_bo_move_accel_cleanup(%struct.ttm_buffer_object*, i32*, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @nouveau_fence_unref(%struct.nouveau_fence**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
