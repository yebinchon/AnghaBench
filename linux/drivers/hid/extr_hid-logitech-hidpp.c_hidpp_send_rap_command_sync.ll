; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_send_rap_command_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_send_rap_command_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }
%struct.hidpp_report = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HIDPP_REPORT_SHORT_LENGTH = common dso_local global i32 0, align 4
@HIDPP_REPORT_LONG_LENGTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*, i32, i32, i32, i32*, i32, %struct.hidpp_report*)* @hidpp_send_rap_command_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_send_rap_command_sync(%struct.hidpp_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, %struct.hidpp_report* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hidpp_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hidpp_report*, align 8
  %16 = alloca %struct.hidpp_report*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.hidpp_report* %6, %struct.hidpp_report** %15, align 8
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %31 [
    i32 129, label %20
    i32 130, label %23
    i32 128, label %26
  ]

20:                                               ; preds = %7
  %21 = load i32, i32* @HIDPP_REPORT_SHORT_LENGTH, align 4
  %22 = sub nsw i32 %21, 4
  store i32 %22, i32* %18, align 4
  br label %34

23:                                               ; preds = %7
  %24 = load i32, i32* @HIDPP_REPORT_LONG_LENGTH, align 4
  %25 = sub nsw i32 %24, 4
  store i32 %25, i32* %18, align 4
  br label %34

26:                                               ; preds = %7
  %27 = load %struct.hidpp_device*, %struct.hidpp_device** %9, align 8
  %28 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 4
  store i32 %30, i32* %18, align 4
  br label %34

31:                                               ; preds = %7
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %74

34:                                               ; preds = %26, %23, %20
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %74

41:                                               ; preds = %34
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.hidpp_report* @kzalloc(i32 16, i32 %42)
  store %struct.hidpp_report* %43, %struct.hidpp_report** %16, align 8
  %44 = load %struct.hidpp_report*, %struct.hidpp_report** %16, align 8
  %45 = icmp ne %struct.hidpp_report* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %74

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.hidpp_report*, %struct.hidpp_report** %16, align 8
  %52 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.hidpp_report*, %struct.hidpp_report** %16, align 8
  %55 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.hidpp_report*, %struct.hidpp_report** %16, align 8
  %59 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.hidpp_report*, %struct.hidpp_report** %16, align 8
  %62 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @memcpy(i32* %63, i32* %64, i32 %65)
  %67 = load %struct.hidpp_device*, %struct.hidpp_device** %9, align 8
  %68 = load %struct.hidpp_report*, %struct.hidpp_report** %16, align 8
  %69 = load %struct.hidpp_report*, %struct.hidpp_report** %15, align 8
  %70 = call i32 @hidpp_send_message_sync(%struct.hidpp_device* %67, %struct.hidpp_report* %68, %struct.hidpp_report* %69)
  store i32 %70, i32* %17, align 4
  %71 = load %struct.hidpp_report*, %struct.hidpp_report** %16, align 8
  %72 = call i32 @kfree(%struct.hidpp_report* %71)
  %73 = load i32, i32* %17, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %49, %46, %38, %31
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local %struct.hidpp_report* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hidpp_send_message_sync(%struct.hidpp_device*, %struct.hidpp_report*, %struct.hidpp_report*) #1

declare dso_local i32 @kfree(%struct.hidpp_report*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
