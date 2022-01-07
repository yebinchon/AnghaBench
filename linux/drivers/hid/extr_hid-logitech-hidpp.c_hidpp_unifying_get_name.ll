; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_unifying_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_unifying_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }
%struct.hidpp_report = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@HIDPP_DEVICE_NAME = common dso_local global i32 0, align 4
@REPORT_ID_HIDPP_SHORT = common dso_local global i32 0, align 4
@HIDPP_GET_LONG_REGISTER = common dso_local global i32 0, align 4
@HIDPP_REG_PAIRING_INFORMATION = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hidpp_device*)* @hidpp_unifying_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hidpp_unifying_get_name(%struct.hidpp_device* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca %struct.hidpp_report, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %10 = load i32, i32* @HIDPP_DEVICE_NAME, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %12 = load i32, i32* @REPORT_ID_HIDPP_SHORT, align 4
  %13 = load i32, i32* @HIDPP_GET_LONG_REGISTER, align 4
  %14 = load i32, i32* @HIDPP_REG_PAIRING_INFORMATION, align 4
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %16 = call i32 @hidpp_send_rap_command_sync(%struct.hidpp_device* %11, i32 %12, i32 %13, i32 %14, i32* %15, i32 1, %struct.hidpp_report* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %55

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %4, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i8* null, i8** %2, align 8
  br label %55

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* null, i8** %2, align 8
  br label %55

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i32 %37, i32 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i8* null, i8** %2, align 8
  br label %55

43:                                               ; preds = %35
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %4, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @memcpy(i8* %44, i32* %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @hidpp_prefix_name(i8** %7, i32 %52)
  %54 = load i8*, i8** %7, align 8
  store i8* %54, i8** %2, align 8
  br label %55

55:                                               ; preds = %43, %42, %34, %30, %19
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

declare dso_local i32 @hidpp_send_rap_command_sync(%struct.hidpp_device*, i32, i32, i32, i32*, i32, %struct.hidpp_report*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @hidpp_prefix_name(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
