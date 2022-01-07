; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { %struct.TYPE_6__, i32, %struct.gb_host_device*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32, i32*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.gb_host_device = type { i32, %struct.TYPE_7__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s:svc\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@greybus_bus_type = common dso_local global i32 0, align 4
@greybus_svc_type = common dso_local global i32 0, align 4
@svc_groups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%d-svc\00", align 1
@GB_SVC_STATE_RESET = common dso_local global i32 0, align 4
@GB_SVC_CPORT_ID = common dso_local global i32 0, align 4
@gb_svc_request_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create connection: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gb_svc* @gb_svc_create(%struct.gb_host_device* %0) #0 {
  %2 = alloca %struct.gb_svc*, align 8
  %3 = alloca %struct.gb_host_device*, align 8
  %4 = alloca %struct.gb_svc*, align 8
  store %struct.gb_host_device* %0, %struct.gb_host_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.gb_svc* @kzalloc(i32 64, i32 %5)
  store %struct.gb_svc* %6, %struct.gb_svc** %4, align 8
  %7 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %8 = icmp ne %struct.gb_svc* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.gb_svc* null, %struct.gb_svc** %2, align 8
  br label %98

10:                                               ; preds = %1
  %11 = load i32, i32* @WQ_UNBOUND, align 4
  %12 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %13 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %12, i32 0, i32 1
  %14 = call i32 @dev_name(%struct.TYPE_7__* %13)
  %15 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 %14)
  %16 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %17 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %19 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %10
  %23 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %24 = call i32 @kfree(%struct.gb_svc* %23)
  store %struct.gb_svc* null, %struct.gb_svc** %2, align 8
  br label %98

25:                                               ; preds = %10
  %26 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %27 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %26, i32 0, i32 1
  %28 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %29 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %32 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  store i32* @greybus_bus_type, i32** %33, align 8
  %34 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %35 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  store i32* @greybus_svc_type, i32** %36, align 8
  %37 = load i32, i32* @svc_groups, align 4
  %38 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %39 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %42 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %48 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %51 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %50, i32 0, i32 0
  %52 = call i32 @device_initialize(%struct.TYPE_6__* %51)
  %53 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %54 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %53, i32 0, i32 0
  %55 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %56 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_set_name(%struct.TYPE_6__* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %60 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %59, i32 0, i32 4
  %61 = call i32 @ida_init(i32* %60)
  %62 = load i32, i32* @GB_SVC_STATE_RESET, align 4
  %63 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %64 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %66 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %67 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %66, i32 0, i32 2
  store %struct.gb_host_device* %65, %struct.gb_host_device** %67, align 8
  %68 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %69 = load i32, i32* @GB_SVC_CPORT_ID, align 4
  %70 = load i32, i32* @gb_svc_request_handler, align 4
  %71 = call i32 @gb_connection_create_static(%struct.gb_host_device* %68, i32 %69, i32 %70)
  %72 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %73 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %75 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %25
  %80 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %81 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %80, i32 0, i32 0
  %82 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %83 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PTR_ERR(i32 %84)
  %86 = call i32 @dev_err(%struct.TYPE_6__* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %94

87:                                               ; preds = %25
  %88 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %89 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %92 = call i32 @gb_connection_set_data(i32 %90, %struct.gb_svc* %91)
  %93 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  store %struct.gb_svc* %93, %struct.gb_svc** %2, align 8
  br label %98

94:                                               ; preds = %79
  %95 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %96 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %95, i32 0, i32 0
  %97 = call i32 @put_device(%struct.TYPE_6__* %96)
  store %struct.gb_svc* null, %struct.gb_svc** %2, align 8
  br label %98

98:                                               ; preds = %94, %87, %22, %9
  %99 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  ret %struct.gb_svc* %99
}

declare dso_local %struct.gb_svc* @kzalloc(i32, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.gb_svc*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @gb_connection_create_static(%struct.gb_host_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gb_connection_set_data(i32, %struct.gb_svc*) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
