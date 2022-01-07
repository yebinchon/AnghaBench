; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_send_fap_command_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_send_fap_command_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }
%struct.hidpp_report = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HIDPP_REPORT_LONG_LENGTH = common dso_local global i32 0, align 4
@REPORT_ID_HIDPP_VERY_LONG = common dso_local global i32 0, align 4
@REPORT_ID_HIDPP_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*, i8*, i8*, i8**, i32, %struct.hidpp_report*)* @hidpp_send_fap_command_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_send_fap_command_sync(%struct.hidpp_device* %0, i8* %1, i8* %2, i8** %3, i32 %4, %struct.hidpp_report* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hidpp_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hidpp_report*, align 8
  %14 = alloca %struct.hidpp_report*, align 8
  %15 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.hidpp_report* %5, %struct.hidpp_report** %13, align 8
  %16 = load i32, i32* %12, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %65

22:                                               ; preds = %6
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.hidpp_report* @kzalloc(i32 32, i32 %23)
  store %struct.hidpp_report* %24, %struct.hidpp_report** %14, align 8
  %25 = load %struct.hidpp_report*, %struct.hidpp_report** %14, align 8
  %26 = icmp ne %struct.hidpp_report* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %65

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @HIDPP_REPORT_LONG_LENGTH, align 4
  %33 = sub nsw i32 %32, 4
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @REPORT_ID_HIDPP_VERY_LONG, align 4
  %37 = load %struct.hidpp_report*, %struct.hidpp_report** %14, align 8
  %38 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @REPORT_ID_HIDPP_LONG, align 4
  %41 = load %struct.hidpp_report*, %struct.hidpp_report** %14, align 8
  %42 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.hidpp_report*, %struct.hidpp_report** %14, align 8
  %46 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.hidpp_report*, %struct.hidpp_report** %14, align 8
  %50 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load %struct.hidpp_report*, %struct.hidpp_report** %14, align 8
  %53 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @memcpy(i32* %54, i8** %55, i32 %56)
  %58 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %59 = load %struct.hidpp_report*, %struct.hidpp_report** %14, align 8
  %60 = load %struct.hidpp_report*, %struct.hidpp_report** %13, align 8
  %61 = call i32 @hidpp_send_message_sync(%struct.hidpp_device* %58, %struct.hidpp_report* %59, %struct.hidpp_report* %60)
  store i32 %61, i32* %15, align 4
  %62 = load %struct.hidpp_report*, %struct.hidpp_report** %14, align 8
  %63 = call i32 @kfree(%struct.hidpp_report* %62)
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %43, %27, %19
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local %struct.hidpp_report* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8**, i32) #1

declare dso_local i32 @hidpp_send_message_sync(%struct.hidpp_device*, %struct.hidpp_report*, %struct.hidpp_report*) #1

declare dso_local i32 @kfree(%struct.hidpp_report*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
