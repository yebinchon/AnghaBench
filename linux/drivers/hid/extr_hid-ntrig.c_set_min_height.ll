; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_set_min_height.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_set_min_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hid_device = type { i32 }
%struct.ntrig_data = type { i64, i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_min_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_min_height(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hid_device*, align 8
  %11 = alloca %struct.ntrig_data*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.hid_device* @to_hid_device(%struct.device* %13)
  store %struct.hid_device* %14, %struct.hid_device** %10, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %16 = call %struct.ntrig_data* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.ntrig_data* %16, %struct.ntrig_data** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @kstrtoul(i8* %17, i32 0, i64* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %45

23:                                               ; preds = %4
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %26 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %45

32:                                               ; preds = %23
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %35 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = mul i64 %33, %36
  %38 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %39 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = udiv i64 %37, %40
  %42 = load %struct.ntrig_data*, %struct.ntrig_data** %11, align 8
  %43 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %32, %29, %20
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.ntrig_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
