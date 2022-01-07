; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.hidpp_device = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"received hid++ report of bad size (%d)\00", align 1
@HIDPP_REPORT_LONG_LENGTH = common dso_local global i32 0, align 4
@HIDPP_REPORT_SHORT_LENGTH = common dso_local global i32 0, align 4
@HIDPP_QUIRK_CLASS_WTP = common dso_local global i32 0, align 4
@HIDPP_QUIRK_CLASS_M560 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @hidpp_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hidpp_device*, align 8
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = call %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.hidpp_device* %13, %struct.hidpp_device** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %15 = icmp ne %struct.hidpp_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %62 [
    i32 128, label %21
    i32 130, label %36
    i32 129, label %49
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %24 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @hid_err(%struct.hid_device* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 1, i32* %5, align 4
  br label %93

31:                                               ; preds = %21
  %32 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @hidpp_raw_hidpp_event(%struct.hidpp_device* %32, i32* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  br label %62

36:                                               ; preds = %17
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @HIDPP_REPORT_LONG_LENGTH, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @hid_err(%struct.hid_device* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 1, i32* %5, align 4
  br label %93

44:                                               ; preds = %36
  %45 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @hidpp_raw_hidpp_event(%struct.hidpp_device* %45, i32* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  br label %62

49:                                               ; preds = %17
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @HIDPP_REPORT_SHORT_LENGTH, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @hid_err(%struct.hid_device* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 1, i32* %5, align 4
  br label %93

57:                                               ; preds = %49
  %58 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @hidpp_raw_hidpp_event(%struct.hidpp_device* %58, i32* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %17, %57, %44, %31
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %93

67:                                               ; preds = %62
  %68 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %69 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HIDPP_QUIRK_CLASS_WTP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @wtp_raw_event(%struct.hid_device* %75, i32* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  br label %93

79:                                               ; preds = %67
  %80 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %81 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @HIDPP_QUIRK_CLASS_M560, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @m560_raw_event(%struct.hid_device* %87, i32* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %93

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %86, %74, %65, %53, %40, %27, %16
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @hidpp_raw_hidpp_event(%struct.hidpp_device*, i32*, i32) #1

declare dso_local i32 @wtp_raw_event(%struct.hid_device*, i32*, i32) #1

declare dso_local i32 @m560_raw_event(%struct.hid_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
