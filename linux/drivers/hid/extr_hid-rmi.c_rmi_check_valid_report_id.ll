; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_check_valid_report_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_check_valid_report_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hid_report** }
%struct.hid_report = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_MSVENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32, i32, %struct.hid_report**)* @rmi_check_valid_report_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_check_valid_report_id(%struct.hid_device* %0, i32 %1, i32 %2, %struct.hid_report** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hid_report**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.hid_report** %3, %struct.hid_report*** %9, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.hid_report**, %struct.hid_report*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %19, i64 %21
  %23 = load %struct.hid_report*, %struct.hid_report** %22, align 8
  %24 = load %struct.hid_report**, %struct.hid_report*** %9, align 8
  store %struct.hid_report* %23, %struct.hid_report** %24, align 8
  %25 = load %struct.hid_report**, %struct.hid_report*** %9, align 8
  %26 = load %struct.hid_report*, %struct.hid_report** %25, align 8
  %27 = icmp ne %struct.hid_report* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %54, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.hid_report**, %struct.hid_report*** %9, align 8
  %32 = load %struct.hid_report*, %struct.hid_report** %31, align 8
  %33 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load %struct.hid_report**, %struct.hid_report*** %9, align 8
  %38 = load %struct.hid_report*, %struct.hid_report** %37, align 8
  %39 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @HID_USAGE_PAGE, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %59

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %29

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %57, %4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
