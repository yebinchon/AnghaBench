; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xen_drm_front_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XenbusStateClosing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@XenbusStateUnknown = common dso_local global i32 0, align 4
@XenbusStateInitWait = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Backend state is %s while removing driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @xen_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_drv_remove(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.xen_drm_front_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 0
  %8 = call %struct.xen_drm_front_info* @dev_get_drvdata(i32* %7)
  store %struct.xen_drm_front_info* %8, %struct.xen_drm_front_info** %3, align 8
  store i32 100, i32* %4, align 4
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %10 = load i32, i32* @XenbusStateClosing, align 4
  %11 = call i32 @xenbus_switch_state(%struct.xenbus_device* %9, i32 %10)
  br label %12

12:                                               ; preds = %28, %1
  %13 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %14 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @XenbusStateUnknown, align 4
  %19 = call i32 @xenbus_read_unsigned(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @XenbusStateInitWait, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i1 [ false, %12 ], [ %25, %22 ]
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = call i32 @msleep(i32 10)
  br label %12

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %35 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @XenbusStateUnknown, align 4
  %40 = call i32 @xenbus_read_unsigned(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @xenbus_strstate(i32 %41)
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %33, %30
  %45 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %46 = call i32 @xen_drm_drv_fini(%struct.xen_drm_front_info* %45)
  %47 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %48 = call i32 @xenbus_frontend_closed(%struct.xenbus_device* %47)
  ret i32 0
}

declare dso_local %struct.xen_drm_front_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @xenbus_read_unsigned(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @xenbus_strstate(i32) #1

declare dso_local i32 @xen_drm_drv_fini(%struct.xen_drm_front_info*) #1

declare dso_local i32 @xenbus_frontend_closed(%struct.xenbus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
