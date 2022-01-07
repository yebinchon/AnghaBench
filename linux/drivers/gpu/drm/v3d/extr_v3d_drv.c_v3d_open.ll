; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_drv.c_v3d_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_drv.c_v3d_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.v3d_file_priv* }
%struct.v3d_file_priv = type { i32*, %struct.v3d_dev* }
%struct.v3d_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_sched_rq* }
%struct.drm_sched_rq = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V3D_MAX_QUEUES = common dso_local global i32 0, align 4
@DRM_SCHED_PRIORITY_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*)* @v3d_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_open(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.v3d_dev*, align 8
  %7 = alloca %struct.v3d_file_priv*, align 8
  %8 = alloca %struct.drm_sched_rq*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call %struct.v3d_dev* @to_v3d_dev(%struct.drm_device* %10)
  store %struct.v3d_dev* %11, %struct.v3d_dev** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.v3d_file_priv* @kzalloc(i32 16, i32 %12)
  store %struct.v3d_file_priv* %13, %struct.v3d_file_priv** %7, align 8
  %14 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %7, align 8
  %15 = icmp ne %struct.v3d_file_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %21 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %7, align 8
  %22 = getelementptr inbounds %struct.v3d_file_priv, %struct.v3d_file_priv* %21, i32 0, i32 1
  store %struct.v3d_dev* %20, %struct.v3d_dev** %22, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %46, %19
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @V3D_MAX_QUEUES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %29 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %35, align 8
  %37 = load i64, i64* @DRM_SCHED_PRIORITY_NORMAL, align 8
  %38 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %36, i64 %37
  store %struct.drm_sched_rq* %38, %struct.drm_sched_rq** %8, align 8
  %39 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %7, align 8
  %40 = getelementptr inbounds %struct.v3d_file_priv, %struct.v3d_file_priv* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @drm_sched_entity_init(i32* %44, %struct.drm_sched_rq** %8, i32 1, i32* null)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %7, align 8
  %51 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %52 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %51, i32 0, i32 0
  store %struct.v3d_file_priv* %50, %struct.v3d_file_priv** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(%struct.drm_device*) #1

declare dso_local %struct.v3d_file_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_sched_entity_init(i32*, %struct.drm_sched_rq**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
