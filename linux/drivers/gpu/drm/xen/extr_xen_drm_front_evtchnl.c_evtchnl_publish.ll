; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_evtchnl_publish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_evtchnl_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_evtchnl = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xenbus_device* }
%struct.xenbus_device = type { i32 }
%struct.xenbus_transaction = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"writing ring-ref\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"writing event channel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xen_drm_front_evtchnl*, i8*, i8*, i8*)* @evtchnl_publish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchnl_publish(i32 %0, %struct.xen_drm_front_evtchnl* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xenbus_transaction, align 4
  %8 = alloca %struct.xen_drm_front_evtchnl*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.xenbus_device*, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  store i32 %0, i32* %14, align 4
  store %struct.xen_drm_front_evtchnl* %1, %struct.xen_drm_front_evtchnl** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %16 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %18, align 8
  store %struct.xenbus_device* %19, %struct.xenbus_device** %12, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %23 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @xenbus_printf(i32 %26, i8* %20, i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @xenbus_dev_error(%struct.xenbus_device* %31, i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %52

35:                                               ; preds = %5
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %39 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xenbus_printf(i32 %42, i8* %36, i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.xenbus_device*, %struct.xenbus_device** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @xenbus_dev_error(%struct.xenbus_device* %47, i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %52

51:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %46, %30
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @xenbus_dev_error(%struct.xenbus_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
