; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_tx_buf_alloc_6g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_tx_buf_alloc_6g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { %struct.TYPE_5__*, i32, %struct.drm_device* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MSM_BO_UNCACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tx_gem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsi_tx_buf_alloc_6g(%struct.msm_dsi_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_dsi_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %11 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %10, i32 0, i32 2
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.msm_drm_private*, %struct.msm_drm_private** %14, align 8
  store %struct.msm_drm_private* %15, %struct.msm_drm_private** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MSM_BO_UNCACHED, align 4
  %19 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %20 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %25 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %24, i32 0, i32 0
  %26 = call i32* @msm_gem_kernel_new(%struct.drm_device* %16, i32 %17, i32 %18, i32 %23, %struct.TYPE_5__** %25, i32* %8)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @IS_ERR(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %32 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %31, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %32, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @PTR_ERR(i32* %33)
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %2
  %36 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %37 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @msm_gem_object_set_name(%struct.TYPE_5__* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %41 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %46 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %35, %30
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32* @msm_gem_kernel_new(%struct.drm_device*, i32, i32, i32, %struct.TYPE_5__**, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @msm_gem_object_set_name(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
