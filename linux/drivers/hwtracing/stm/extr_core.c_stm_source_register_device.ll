; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_source_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_source_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stm_source_data = type { %struct.stm_source_device*, i32 }
%struct.stm_source_device = type { %struct.TYPE_6__, %struct.stm_source_data*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.device*, i32* }

@stm_core_up = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stm_source_class = common dso_local global i32 0, align 4
@stm_source_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stm_source_register_device(%struct.device* %0, %struct.stm_source_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.stm_source_data*, align 8
  %6 = alloca %struct.stm_source_device*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.stm_source_data* %1, %struct.stm_source_data** %5, align 8
  %8 = load i32, i32* @stm_core_up, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EPROBE_DEFER, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %80

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.stm_source_device* @kzalloc(i32 48, i32 %14)
  store %struct.stm_source_device* %15, %struct.stm_source_device** %6, align 8
  %16 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %17 = icmp ne %struct.stm_source_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %80

21:                                               ; preds = %13
  %22 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %23 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %22, i32 0, i32 0
  %24 = call i32 @device_initialize(%struct.TYPE_6__* %23)
  %25 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %26 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  store i32* @stm_source_class, i32** %27, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %30 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store %struct.device* %28, %struct.device** %31, align 8
  %32 = load i32, i32* @stm_source_device_release, align 4
  %33 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %34 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %37 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.stm_source_data*, %struct.stm_source_data** %5, align 8
  %40 = getelementptr inbounds %struct.stm_source_data, %struct.stm_source_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kobject_set_name(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %21
  br label %75

46:                                               ; preds = %21
  %47 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %48 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %47, i32 0, i32 0
  %49 = call i32 @pm_runtime_no_callbacks(%struct.TYPE_6__* %48)
  %50 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %51 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %50, i32 0, i32 0
  %52 = call i32 @pm_runtime_forbid(%struct.TYPE_6__* %51)
  %53 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %54 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %53, i32 0, i32 0
  %55 = call i32 @device_add(%struct.TYPE_6__* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %75

59:                                               ; preds = %46
  %60 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %61 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %60, i32 0, i32 4
  %62 = call i32 @stm_output_init(i32* %61)
  %63 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %64 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %63, i32 0, i32 3
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %67 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %66, i32 0, i32 2
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.stm_source_data*, %struct.stm_source_data** %5, align 8
  %70 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %71 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %70, i32 0, i32 1
  store %struct.stm_source_data* %69, %struct.stm_source_data** %71, align 8
  %72 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %73 = load %struct.stm_source_data*, %struct.stm_source_data** %5, align 8
  %74 = getelementptr inbounds %struct.stm_source_data, %struct.stm_source_data* %73, i32 0, i32 0
  store %struct.stm_source_device* %72, %struct.stm_source_device** %74, align 8
  store i32 0, i32* %3, align 4
  br label %80

75:                                               ; preds = %58, %45
  %76 = load %struct.stm_source_device*, %struct.stm_source_device** %6, align 8
  %77 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %76, i32 0, i32 0
  %78 = call i32 @put_device(%struct.TYPE_6__* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %59, %18, %10
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.stm_source_device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @kobject_set_name(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_forbid(%struct.TYPE_6__*) #1

declare dso_local i32 @device_add(%struct.TYPE_6__*) #1

declare dso_local i32 @stm_output_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
