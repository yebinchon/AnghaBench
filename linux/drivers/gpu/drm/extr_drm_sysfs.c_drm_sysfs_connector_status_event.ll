; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_connector_status_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_sysfs.c_drm_sysfs_connector_status_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_8__, %struct.drm_device* }
%struct.TYPE_8__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_property = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@__const.drm_sysfs_connector_status_event.hotplug_str = private unnamed_addr constant [10 x i8] c"HOTPLUG=1\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"CONNECTOR=%u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"PROPERTY=%u\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"generating connector status event\0A\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_sysfs_connector_status_event(%struct.drm_connector* %0, %struct.drm_property* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_property*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca [21 x i8], align 16
  %8 = alloca [21 x i8], align 16
  %9 = alloca [4 x i8*], align 16
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.drm_property* %1, %struct.drm_property** %4, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.drm_sysfs_connector_status_event.hotplug_str, i32 0, i32 0), i64 10, i1 false)
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  %17 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 1
  %19 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* null, i8** %20, align 8
  %21 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 0
  %23 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %24 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @drm_mode_obj_find_prop_id(%struct.TYPE_8__* %22, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %33 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %34 = call i32 @ARRAY_SIZE(i8* %33)
  %35 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @snprintf(i8* %32, i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0
  %41 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(i8* %41)
  %43 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %44 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snprintf(i8* %40, i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* @KOBJ_CHANGE, align 4
  %56 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %57 = call i32 @kobject_uevent_env(i32* %54, i32 %55, i8** %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @drm_mode_obj_find_prop_id(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @DRM_DEBUG(i8*) #2

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
