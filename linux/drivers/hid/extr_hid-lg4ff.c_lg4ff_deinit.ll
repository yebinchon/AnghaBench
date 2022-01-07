; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.lg4ff_device_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.lg4ff_device_entry**, i64 }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }

@.str = private unnamed_addr constant [60 x i8] c"Error while deinitializing device, no private driver data.\0A\00", align 1
@dev_attr_real_id = common dso_local global i32 0, align 4
@dev_attr_alternate_modes = common dso_local global i32 0, align 4
@dev_attr_combine_pedals = common dso_local global i32 0, align 4
@dev_attr_range = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Device successfully unregistered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg4ff_deinit(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.lg4ff_device_entry*, align 8
  %5 = alloca %struct.lg_drv_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %7 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %6)
  store %struct.lg_drv_data* %7, %struct.lg_drv_data** %5, align 8
  %8 = load %struct.lg_drv_data*, %struct.lg_drv_data** %5, align 8
  %9 = icmp ne %struct.lg_drv_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %12 = call i32 @hid_err(%struct.hid_device* %11, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.lg_drv_data*, %struct.lg_drv_data** %5, align 8
  %15 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %14, i32 0, i32 0
  %16 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %15, align 8
  store %struct.lg4ff_device_entry* %16, %struct.lg4ff_device_entry** %4, align 8
  %17 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %4, align 8
  %18 = icmp ne %struct.lg4ff_device_entry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %44

20:                                               ; preds = %13
  %21 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %4, align 8
  %22 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %28 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %27, i32 0, i32 0
  %29 = call i32 @device_remove_file(i32* %28, i32* @dev_attr_real_id)
  %30 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %30, i32 0, i32 0
  %32 = call i32 @device_remove_file(i32* %31, i32* @dev_attr_alternate_modes)
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 0
  %36 = call i32 @device_remove_file(i32* %35, i32* @dev_attr_combine_pedals)
  %37 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %38 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %37, i32 0, i32 0
  %39 = call i32 @device_remove_file(i32* %38, i32* @dev_attr_range)
  %40 = load %struct.lg_drv_data*, %struct.lg_drv_data** %5, align 8
  %41 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %40, i32 0, i32 0
  store %struct.lg4ff_device_entry* null, %struct.lg4ff_device_entry** %41, align 8
  %42 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %4, align 8
  %43 = call i32 @kfree(%struct.lg4ff_device_entry* %42)
  br label %44

44:                                               ; preds = %33, %19
  %45 = call i32 @dbg_hid(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.lg4ff_device_entry*) #1

declare dso_local i32 @dbg_hid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
