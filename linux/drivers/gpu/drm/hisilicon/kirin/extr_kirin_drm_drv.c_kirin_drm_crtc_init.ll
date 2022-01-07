; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_drv.c_kirin_drm_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_drv.c_kirin_drm_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.drm_plane = type { i32 }
%struct.kirin_drm_data = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no port node found in %pOF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to init crtc.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, %struct.kirin_drm_data*)* @kirin_drm_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirin_drm_crtc_init(%struct.drm_device* %0, %struct.drm_crtc* %1, %struct.drm_plane* %2, %struct.kirin_drm_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.kirin_drm_data*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %7, align 8
  store %struct.drm_plane* %2, %struct.drm_plane** %8, align 8
  store %struct.kirin_drm_data* %3, %struct.kirin_drm_data** %9, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device_node* @of_get_child_by_name(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %17, %struct.device_node** %10, align 8
  %18 = load %struct.device_node*, %struct.device_node** %10, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %4
  %21 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %53

29:                                               ; preds = %4
  %30 = load %struct.device_node*, %struct.device_node** %10, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  %32 = load %struct.device_node*, %struct.device_node** %10, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 0
  store %struct.device_node* %32, %struct.device_node** %34, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %37 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %38 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %9, align 8
  %39 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %35, %struct.drm_crtc* %36, %struct.drm_plane* %37, i32* null, i32 %40, i32* null)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %53

47:                                               ; preds = %29
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %49 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %9, align 8
  %50 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %48, i32 %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %44, %20
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, i32*, i32, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
