; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_bus.c_scmi_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_bus.c_scmi_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_device = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, %struct.device_node*, %struct.device* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@scmi_bus_id = common dso_local global i32 0, align 4
@scmi_bus_type = common dso_local global i32 0, align 4
@scmi_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"scmi_dev.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scmi_device* @scmi_device_create(%struct.device_node* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.scmi_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scmi_device*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.scmi_device* @kzalloc(i32 40, i32 %11)
  store %struct.scmi_device* %12, %struct.scmi_device** %10, align 8
  %13 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  %14 = icmp ne %struct.scmi_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.scmi_device* null, %struct.scmi_device** %4, align 8
  br label %65

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @ida_simple_get(i32* @scmi_bus_id, i32 1, i32 0, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %62

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  %25 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  %28 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  %31 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store %struct.device* %29, %struct.device** %32, align 8
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  %35 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store %struct.device_node* %33, %struct.device_node** %36, align 8
  %37 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  %38 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32* @scmi_bus_type, i32** %39, align 8
  %40 = load i32, i32* @scmi_device_release, align 4
  %41 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  %42 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  %45 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %44, i32 0, i32 2
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_set_name(%struct.TYPE_4__* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  %49 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %48, i32 0, i32 2
  %50 = call i32 @device_register(%struct.TYPE_4__* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %22
  br label %56

54:                                               ; preds = %22
  %55 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  store %struct.scmi_device* %55, %struct.scmi_device** %4, align 8
  br label %65

56:                                               ; preds = %53
  %57 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  %58 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %57, i32 0, i32 2
  %59 = call i32 @put_device(%struct.TYPE_4__* %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ida_simple_remove(i32* @scmi_bus_id, i32 %60)
  br label %62

62:                                               ; preds = %56, %21
  %63 = load %struct.scmi_device*, %struct.scmi_device** %10, align 8
  %64 = call i32 @kfree(%struct.scmi_device* %63)
  store %struct.scmi_device* null, %struct.scmi_device** %4, align 8
  br label %65

65:                                               ; preds = %62, %54, %15
  %66 = load %struct.scmi_device*, %struct.scmi_device** %4, align 8
  ret %struct.scmi_device* %66
}

declare dso_local %struct.scmi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.scmi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
