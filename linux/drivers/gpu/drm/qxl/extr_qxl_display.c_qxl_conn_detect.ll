; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_conn_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_conn_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.qxl_output = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"#%d connected: %d\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @qxl_conn_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_conn_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qxl_output*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.qxl_device*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.qxl_output* @drm_connector_to_qxl_output(%struct.drm_connector* %9)
  store %struct.qxl_output* %10, %struct.qxl_output** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.qxl_device*, %struct.qxl_device** %15, align 8
  store %struct.qxl_device* %16, %struct.qxl_device** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %18 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.qxl_output*, %struct.qxl_output** %5, align 8
  %23 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %21
  br label %53

28:                                               ; preds = %2
  %29 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %30 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.qxl_output*, %struct.qxl_output** %5, align 8
  %35 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %28
  %39 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %40 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.qxl_output*, %struct.qxl_output** %5, align 8
  %45 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call i64 @qxl_head_enabled(i32* %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %38, %28
  %51 = phi i1 [ false, %28 ], [ %49, %38 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %27
  %54 = load %struct.qxl_output*, %struct.qxl_output** %5, align 8
  %55 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @connector_status_connected, align 4
  br label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @connector_status_disconnected, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  ret i32 %66
}

declare dso_local %struct.qxl_output* @drm_connector_to_qxl_output(%struct.drm_connector*) #1

declare dso_local i64 @qxl_head_enabled(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
