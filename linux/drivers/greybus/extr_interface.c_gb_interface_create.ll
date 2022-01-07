; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, %struct.gb_module*, %struct.gb_host_device* }
%struct.TYPE_5__ = type { i32, i32, i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.gb_host_device = type { i32 }
%struct.gb_module = type { %struct.TYPE_6__, %struct.gb_host_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@gb_interface_mode_switch_work = common dso_local global i32 0, align 4
@GB_INTERFACE_DEVICE_ID_BAD = common dso_local global i32 0, align 4
@greybus_bus_type = common dso_local global i32 0, align 4
@greybus_interface_type = common dso_local global i32 0, align 4
@interface_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%u\00", align 1
@GB_INTERFACE_AUTOSUSPEND_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gb_interface* @gb_interface_create(%struct.gb_module* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_interface*, align 8
  %4 = alloca %struct.gb_module*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_host_device*, align 8
  %7 = alloca %struct.gb_interface*, align 8
  store %struct.gb_module* %0, %struct.gb_module** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gb_module*, %struct.gb_module** %4, align 8
  %9 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %8, i32 0, i32 1
  %10 = load %struct.gb_host_device*, %struct.gb_host_device** %9, align 8
  store %struct.gb_host_device* %10, %struct.gb_host_device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gb_interface* @kzalloc(i32 80, i32 %11)
  store %struct.gb_interface* %12, %struct.gb_interface** %7, align 8
  %13 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %14 = icmp ne %struct.gb_interface* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.gb_interface* null, %struct.gb_interface** %3, align 8
  br label %84

16:                                               ; preds = %2
  %17 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  %18 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %19 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %18, i32 0, i32 9
  store %struct.gb_host_device* %17, %struct.gb_host_device** %19, align 8
  %20 = load %struct.gb_module*, %struct.gb_module** %4, align 8
  %21 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %22 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %21, i32 0, i32 8
  store %struct.gb_module* %20, %struct.gb_module** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %25 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %27 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %26, i32 0, i32 6
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %30 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %29, i32 0, i32 5
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %33 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %32, i32 0, i32 4
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %36 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %35, i32 0, i32 3
  %37 = load i32, i32* @gb_interface_mode_switch_work, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %40 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %39, i32 0, i32 2
  %41 = call i32 @init_completion(i32* %40)
  %42 = load i32, i32* @GB_INTERFACE_DEVICE_ID_BAD, align 4
  %43 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %44 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.gb_module*, %struct.gb_module** %4, align 8
  %46 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %45, i32 0, i32 0
  %47 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %48 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %51 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i32* @greybus_bus_type, i32** %52, align 8
  %53 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %54 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32* @greybus_interface_type, i32** %55, align 8
  %56 = load i32, i32* @interface_groups, align 4
  %57 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %58 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.gb_module*, %struct.gb_module** %4, align 8
  %61 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %65 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %68 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %67, i32 0, i32 0
  %69 = call i32 @device_initialize(%struct.TYPE_5__* %68)
  %70 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %71 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %70, i32 0, i32 0
  %72 = load %struct.gb_module*, %struct.gb_module** %4, align 8
  %73 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %72, i32 0, i32 0
  %74 = call i32 @dev_name(%struct.TYPE_6__* %73)
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @dev_set_name(%struct.TYPE_5__* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %78 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %77, i32 0, i32 0
  %79 = load i32, i32* @GB_INTERFACE_AUTOSUSPEND_MS, align 4
  %80 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_5__* %78, i32 %79)
  %81 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  %82 = call i32 @trace_gb_interface_create(%struct.gb_interface* %81)
  %83 = load %struct.gb_interface*, %struct.gb_interface** %7, align 8
  store %struct.gb_interface* %83, %struct.gb_interface** %3, align 8
  br label %84

84:                                               ; preds = %16, %15
  %85 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  ret %struct.gb_interface* %85
}

declare dso_local %struct.gb_interface* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @trace_gb_interface_create(%struct.gb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
