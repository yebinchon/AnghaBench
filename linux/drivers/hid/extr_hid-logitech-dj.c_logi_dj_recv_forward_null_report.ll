; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_forward_null_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_forward_null_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dj_receiver_dev = type { %struct.dj_device** }
%struct.dj_device = type { i32, i32 }
%struct.dj_report = type { i64 }

@MAX_REPORT_SIZE = common dso_local global i32 0, align 4
@NUMBER_OF_HID_REPORTS = common dso_local global i32 0, align 4
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@hid_reportid_size_map = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"hid_input_report error sending null report\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dj_receiver_dev*, %struct.dj_report*)* @logi_dj_recv_forward_null_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logi_dj_recv_forward_null_report(%struct.dj_receiver_dev* %0, %struct.dj_report* %1) #0 {
  %3 = alloca %struct.dj_receiver_dev*, align 8
  %4 = alloca %struct.dj_report*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dj_device*, align 8
  store %struct.dj_receiver_dev* %0, %struct.dj_receiver_dev** %3, align 8
  store %struct.dj_report* %1, %struct.dj_report** %4, align 8
  %9 = load i32, i32* @MAX_REPORT_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %14 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %13, i32 0, i32 0
  %15 = load %struct.dj_device**, %struct.dj_device*** %14, align 8
  %16 = load %struct.dj_report*, %struct.dj_report** %4, align 8
  %17 = getelementptr inbounds %struct.dj_report, %struct.dj_report* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.dj_device*, %struct.dj_device** %15, i64 %18
  %20 = load %struct.dj_device*, %struct.dj_device** %19, align 8
  store %struct.dj_device* %20, %struct.dj_device** %8, align 8
  %21 = mul nuw i64 4, %10
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i32* %12, i32 0, i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %54, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @NUMBER_OF_HID_REPORTS, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = load %struct.dj_device*, %struct.dj_device** %8, align 8
  %30 = getelementptr inbounds %struct.dj_device, %struct.dj_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %37, i32* %38, align 16
  %39 = load %struct.dj_device*, %struct.dj_device** %8, align 8
  %40 = getelementptr inbounds %struct.dj_device, %struct.dj_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HID_INPUT_REPORT, align 4
  %43 = load i32*, i32** @hid_reportid_size_map, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @hid_input_report(i32 %41, i32 %42, i32* %12, i32 %47, i32 1)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = call i32 @dbg_hid(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %36
  br label %53

53:                                               ; preds = %52, %28
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %24

57:                                               ; preds = %24
  %58 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @hid_input_report(i32, i32, i32*, i32, i32) #2

declare dso_local i32 @dbg_hid(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
