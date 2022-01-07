; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_match_one_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_match_one_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, i64, i64, i64 }
%struct.hid_device_id = type { i64, i64, i64, i64 }

@HID_BUS_ANY = common dso_local global i64 0, align 8
@HID_GROUP_ANY = common dso_local global i64 0, align 8
@HID_ANY_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_match_one_id(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_device_id*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %4, align 8
  %5 = load %struct.hid_device_id*, %struct.hid_device_id** %4, align 8
  %6 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HID_BUS_ANY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.hid_device_id*, %struct.hid_device_id** %4, align 8
  %12 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %10, %2
  %19 = load %struct.hid_device_id*, %struct.hid_device_id** %4, align 8
  %20 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HID_GROUP_ANY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = load %struct.hid_device_id*, %struct.hid_device_id** %4, align 8
  %26 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %29 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %24, %18
  %33 = load %struct.hid_device_id*, %struct.hid_device_id** %4, align 8
  %34 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HID_ANY_ID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = load %struct.hid_device_id*, %struct.hid_device_id** %4, align 8
  %40 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %43 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %38, %32
  %47 = load %struct.hid_device_id*, %struct.hid_device_id** %4, align 8
  %48 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HID_ANY_ID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  %53 = load %struct.hid_device_id*, %struct.hid_device_id** %4, align 8
  %54 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %57 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br label %60

60:                                               ; preds = %52, %46
  %61 = phi i1 [ true, %46 ], [ %59, %52 ]
  br label %62

62:                                               ; preds = %60, %38, %24, %10
  %63 = phi i1 [ false, %38 ], [ false, %24 ], [ false, %10 ], [ %61, %60 ]
  %64 = zext i1 %63 to i32
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
