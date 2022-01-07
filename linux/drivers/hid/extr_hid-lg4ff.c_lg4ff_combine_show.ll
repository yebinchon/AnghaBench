; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_combine_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_combine_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hid_device = type { i32 }
%struct.lg4ff_device_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }

@.str = private unnamed_addr constant [32 x i8] c"Private driver data not found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Device properties not found!\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @lg4ff_combine_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lg4ff_combine_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.lg4ff_device_entry*, align 8
  %10 = alloca %struct.lg_drv_data*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.hid_device* @to_hid_device(%struct.device* %12)
  store %struct.hid_device* %13, %struct.hid_device** %8, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %15 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %14)
  store %struct.lg_drv_data* %15, %struct.lg_drv_data** %10, align 8
  %16 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %17 = icmp ne %struct.lg_drv_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %20 = call i32 @hid_err(%struct.hid_device* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %23 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %22, i32 0, i32 0
  %24 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %23, align 8
  store %struct.lg4ff_device_entry* %24, %struct.lg4ff_device_entry** %9, align 8
  %25 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %26 = icmp ne %struct.lg4ff_device_entry* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %29 = call i32 @hid_err(%struct.hid_device* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %39

30:                                               ; preds = %21
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %34 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @scnprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %30, %27, %18
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
