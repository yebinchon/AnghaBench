; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-hyperv.c_mousevsc_on_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-hyperv.c_mousevsc_on_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.vmpacket_descriptor = type { i32 }
%struct.pipe_prt_msg = type { i64, i32, i64 }
%struct.synthhid_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mousevsc_dev = type { %struct.TYPE_5__*, i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.synthhid_input_report = type { %struct.pipe_prt_msg*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.synthhid_device_info = type { i32 }

@PIPE_MESSAGE_DATA = common dso_local global i64 0, align 8
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unsupported hid msg type - type %d len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.vmpacket_descriptor*)* @mousevsc_on_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousevsc_on_receive(%struct.hv_device* %0, %struct.vmpacket_descriptor* %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.vmpacket_descriptor*, align 8
  %5 = alloca %struct.pipe_prt_msg*, align 8
  %6 = alloca %struct.synthhid_msg*, align 8
  %7 = alloca %struct.mousevsc_dev*, align 8
  %8 = alloca %struct.synthhid_input_report*, align 8
  %9 = alloca i64, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store %struct.vmpacket_descriptor* %1, %struct.vmpacket_descriptor** %4, align 8
  %10 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %11 = call %struct.mousevsc_dev* @hv_get_drvdata(%struct.hv_device* %10)
  store %struct.mousevsc_dev* %11, %struct.mousevsc_dev** %7, align 8
  %12 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %13 = ptrtoint %struct.vmpacket_descriptor* %12 to i64
  %14 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %15 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 3
  %18 = sext i32 %17 to i64
  %19 = add i64 %13, %18
  %20 = inttoptr i64 %19 to %struct.pipe_prt_msg*
  store %struct.pipe_prt_msg* %20, %struct.pipe_prt_msg** %5, align 8
  %21 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %22 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PIPE_MESSAGE_DATA, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %122

27:                                               ; preds = %2
  %28 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %29 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.synthhid_msg*
  store %struct.synthhid_msg* %31, %struct.synthhid_msg** %6, align 8
  %32 = load %struct.synthhid_msg*, %struct.synthhid_msg** %6, align 8
  %33 = getelementptr inbounds %struct.synthhid_msg, %struct.synthhid_msg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %112 [
    i32 128, label %36
    i32 130, label %60
    i32 129, label %74
  ]

36:                                               ; preds = %27
  %37 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %38 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 24
  %42 = sub i64 %41, 1
  %43 = icmp ugt i64 %42, 4
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @WARN_ON(i32 1)
  br label %122

46:                                               ; preds = %36
  %47 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %48 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %47, i32 0, i32 5
  %49 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %50 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %51 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 24
  %55 = sub i64 %54, 1
  %56 = call i32 @memcpy(i32* %48, %struct.pipe_prt_msg* %49, i64 %55)
  %57 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %58 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %57, i32 0, i32 4
  %59 = call i32 @complete(i32* %58)
  br label %122

60:                                               ; preds = %27
  %61 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %62 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %64, 4
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  %68 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %69 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %70 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.synthhid_device_info*
  %73 = call i32 @mousevsc_on_receive_device_info(%struct.mousevsc_dev* %68, %struct.synthhid_device_info* %72)
  br label %122

74:                                               ; preds = %27
  %75 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %76 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.synthhid_input_report*
  store %struct.synthhid_input_report* %78, %struct.synthhid_input_report** %8, align 8
  %79 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %80 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %122

84:                                               ; preds = %74
  %85 = load %struct.synthhid_input_report*, %struct.synthhid_input_report** %8, align 8
  %86 = getelementptr inbounds %struct.synthhid_input_report, %struct.synthhid_input_report* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @min(i32 %88, i32 8)
  store i64 %89, i64* %9, align 8
  %90 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %91 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.synthhid_input_report*, %struct.synthhid_input_report** %8, align 8
  %94 = getelementptr inbounds %struct.synthhid_input_report, %struct.synthhid_input_report* %93, i32 0, i32 0
  %95 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @memcpy(i32* %92, %struct.pipe_prt_msg* %95, i64 %96)
  %98 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %99 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @HID_INPUT_REPORT, align 4
  %102 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %103 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @hid_input_report(i32 %100, i32 %101, i32* %104, i64 %105, i32 1)
  %107 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %108 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = call i32 @pm_wakeup_hard_event(i32* %110)
  br label %122

112:                                              ; preds = %27
  %113 = load %struct.synthhid_msg*, %struct.synthhid_msg** %6, align 8
  %114 = getelementptr inbounds %struct.synthhid_msg, %struct.synthhid_msg* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.synthhid_msg*, %struct.synthhid_msg** %6, align 8
  %118 = getelementptr inbounds %struct.synthhid_msg, %struct.synthhid_msg* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %120)
  br label %122

122:                                              ; preds = %26, %112, %84, %83, %60, %46, %44
  ret void
}

declare dso_local %struct.mousevsc_dev* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.pipe_prt_msg*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mousevsc_on_receive_device_info(%struct.mousevsc_dev*, %struct.synthhid_device_info*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @hid_input_report(i32, i32, i32*, i64, i32) #1

declare dso_local i32 @pm_wakeup_hard_event(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
