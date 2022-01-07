; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_range_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_range_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hid_device = type { i32 }
%struct.lg4ff_device_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32 (%struct.hid_device.0*, i64)* }
%struct.hid_device.0 = type opaque
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }

@.str = private unnamed_addr constant [32 x i8] c"Private driver data not found!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Device properties not found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lg4ff_range_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lg4ff_range_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hid_device*, align 8
  %11 = alloca %struct.lg4ff_device_entry*, align 8
  %12 = alloca %struct.lg_drv_data*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.hid_device* @to_hid_device(%struct.device* %14)
  store %struct.hid_device* %15, %struct.hid_device** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @simple_strtoul(i8* %16, i32* null, i32 10)
  store i64 %17, i64* %13, align 8
  %18 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %19 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %18)
  store %struct.lg_drv_data* %19, %struct.lg_drv_data** %12, align 8
  %20 = load %struct.lg_drv_data*, %struct.lg_drv_data** %12, align 8
  %21 = icmp ne %struct.lg_drv_data* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %24 = call i32 @hid_err(%struct.hid_device* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %81

27:                                               ; preds = %4
  %28 = load %struct.lg_drv_data*, %struct.lg_drv_data** %12, align 8
  %29 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %28, i32 0, i32 0
  %30 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %29, align 8
  store %struct.lg4ff_device_entry* %30, %struct.lg4ff_device_entry** %11, align 8
  %31 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %32 = icmp ne %struct.lg4ff_device_entry* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %35 = call i32 @hid_err(%struct.hid_device* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %81

38:                                               ; preds = %27
  %39 = load i64, i64* %13, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %43 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %41, %38
  %47 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %48 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32 (%struct.hid_device.0*, i64)*, i32 (%struct.hid_device.0*, i64)** %49, align 8
  %51 = icmp ne i32 (%struct.hid_device.0*, i64)* %50, null
  br i1 %51, label %52, label %79

52:                                               ; preds = %46
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %55 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %53, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %52
  %60 = load i64, i64* %13, align 8
  %61 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %62 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %60, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %68 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32 (%struct.hid_device.0*, i64)*, i32 (%struct.hid_device.0*, i64)** %69, align 8
  %71 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %72 = bitcast %struct.hid_device* %71 to %struct.hid_device.0*
  %73 = load i64, i64* %13, align 8
  %74 = call i32 %70(%struct.hid_device.0* %72, i64 %73)
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %77 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %66, %59, %52, %46
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %79, %33, %22
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
