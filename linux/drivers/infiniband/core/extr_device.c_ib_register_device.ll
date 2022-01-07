; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { void (%struct.ib_device.0*)* }
%struct.ib_device.0 = type opaque

@.str = private unnamed_addr constant [44 x i8] c"Couldn't set up InfiniBand P_Key/GID cache\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Couldn't register device with driver model\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_register_device(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.ib_device*)*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @assign_name(%struct.ib_device* %8, i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %103

15:                                               ; preds = %2
  %16 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %17 = call i32 @setup_device(%struct.ib_device* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %103

22:                                               ; preds = %15
  %23 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %24 = call i32 @ib_cache_setup_one(%struct.ib_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %29 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %28, i32 0, i32 0
  %30 = call i32 @dev_warn(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %103

32:                                               ; preds = %22
  %33 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %34 = call i32 @ib_device_register_rdmacg(%struct.ib_device* %33)
  %35 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %36 = call i32 @rdma_counter_init(%struct.ib_device* %35)
  %37 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %38 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %37, i32 0, i32 0
  %39 = call i32 @dev_set_uevent_suppress(%struct.TYPE_7__* %38, i32 1)
  %40 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %41 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %40, i32 0, i32 0
  %42 = call i32 @device_add(%struct.TYPE_7__* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %94

46:                                               ; preds = %32
  %47 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %48 = call i32 @ib_device_register_sysfs(%struct.ib_device* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %53 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %52, i32 0, i32 0
  %54 = call i32 @dev_warn(%struct.TYPE_7__* %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %90

55:                                               ; preds = %46
  %56 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %57 = call i32 @enable_device_and_get(%struct.ib_device* %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %59 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %58, i32 0, i32 0
  %60 = call i32 @dev_set_uevent_suppress(%struct.TYPE_7__* %59, i32 0)
  %61 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %62 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* @KOBJ_ADD, align 4
  %65 = call i32 @kobject_uevent(i32* %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %55
  %69 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %70 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load void (%struct.ib_device.0*)*, void (%struct.ib_device.0*)** %71, align 8
  %73 = bitcast void (%struct.ib_device.0*)* %72 to void (%struct.ib_device*)*
  store void (%struct.ib_device*)* %73, void (%struct.ib_device*)** %7, align 8
  %74 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %75 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store void (%struct.ib_device.0*)* null, void (%struct.ib_device.0*)** %76, align 8
  %77 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %78 = call i32 @ib_device_put(%struct.ib_device* %77)
  %79 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %80 = call i32 @__ib_unregister_device(%struct.ib_device* %79)
  %81 = load void (%struct.ib_device*)*, void (%struct.ib_device*)** %7, align 8
  %82 = bitcast void (%struct.ib_device*)* %81 to void (%struct.ib_device.0*)*
  %83 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %84 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store void (%struct.ib_device.0*)* %82, void (%struct.ib_device.0*)** %85, align 8
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %103

87:                                               ; preds = %55
  %88 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %89 = call i32 @ib_device_put(%struct.ib_device* %88)
  store i32 0, i32* %3, align 4
  br label %103

90:                                               ; preds = %51
  %91 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %92 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %91, i32 0, i32 0
  %93 = call i32 @device_del(%struct.TYPE_7__* %92)
  br label %94

94:                                               ; preds = %90, %45
  %95 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %96 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %95, i32 0, i32 0
  %97 = call i32 @dev_set_uevent_suppress(%struct.TYPE_7__* %96, i32 0)
  %98 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %99 = call i32 @ib_device_unregister_rdmacg(%struct.ib_device* %98)
  %100 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %101 = call i32 @ib_cache_cleanup_one(%struct.ib_device* %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %94, %87, %68, %27, %20, %13
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @assign_name(%struct.ib_device*, i8*) #1

declare dso_local i32 @setup_device(%struct.ib_device*) #1

declare dso_local i32 @ib_cache_setup_one(%struct.ib_device*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @ib_device_register_rdmacg(%struct.ib_device*) #1

declare dso_local i32 @rdma_counter_init(%struct.ib_device*) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @ib_device_register_sysfs(%struct.ib_device*) #1

declare dso_local i32 @enable_device_and_get(%struct.ib_device*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @ib_device_put(%struct.ib_device*) #1

declare dso_local i32 @__ib_unregister_device(%struct.ib_device*) #1

declare dso_local i32 @device_del(%struct.TYPE_7__*) #1

declare dso_local i32 @ib_device_unregister_rdmacg(%struct.ib_device*) #1

declare dso_local i32 @ib_cache_cleanup_one(%struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
