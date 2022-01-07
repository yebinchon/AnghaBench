; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_device = type { i32*, %struct.hid_device*, %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.hid_device = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@PID_RESET = common dso_local global i64 0, align 8
@PID_DEVICE_CONTROL = common dso_local global i64 0, align 8
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@PID_ENABLE_ACTUATORS = common dso_local global i64 0, align 8
@PID_POOL = common dso_local global i64 0, align 8
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@PID_SIMULTANEOUS_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"device reports %d simultaneous effects\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"pid_pool requested again\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pidff_device*)* @pidff_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pidff_reset(%struct.pidff_device* %0) #0 {
  %2 = alloca %struct.pidff_device*, align 8
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pidff_device* %0, %struct.pidff_device** %2, align 8
  %5 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %6 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %5, i32 0, i32 1
  %7 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  store %struct.hid_device* %7, %struct.hid_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %9 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @PID_RESET, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %15 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %14, i32 0, i32 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %13, i32* %19, align 4
  %20 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %21 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %22 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @PID_DEVICE_CONTROL, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %28 = call i32 @hid_hw_request(%struct.hid_device* %20, i32 %26, i32 %27)
  %29 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %30 = call i32 @hid_hw_wait(%struct.hid_device* %29)
  %31 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %32 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %33 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @PID_DEVICE_CONTROL, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %39 = call i32 @hid_hw_request(%struct.hid_device* %31, i32 %37, i32 %38)
  %40 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %41 = call i32 @hid_hw_wait(%struct.hid_device* %40)
  %42 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %43 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @PID_ENABLE_ACTUATORS, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %49 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %48, i32 0, i32 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %47, i32* %53, align 4
  %54 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %55 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %56 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @PID_DEVICE_CONTROL, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %62 = call i32 @hid_hw_request(%struct.hid_device* %54, i32 %60, i32 %61)
  %63 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %64 = call i32 @hid_hw_wait(%struct.hid_device* %63)
  %65 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %66 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %67 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @PID_POOL, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %73 = call i32 @hid_hw_request(%struct.hid_device* %65, i32 %71, i32 %72)
  %74 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %75 = call i32 @hid_hw_wait(%struct.hid_device* %74)
  %76 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %77 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i64, i64* @PID_SIMULTANEOUS_MAX, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %131

84:                                               ; preds = %1
  br label %85

85:                                               ; preds = %114, %84
  %86 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %87 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i64, i64* @PID_SIMULTANEOUS_MAX, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %96, label %130

96:                                               ; preds = %85
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  %99 = icmp sgt i32 %97, 20
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %102 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %101, i32 0, i32 1
  %103 = load %struct.hid_device*, %struct.hid_device** %102, align 8
  %104 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %105 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i64, i64* @PID_SIMULTANEOUS_MAX, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @hid_warn(%struct.hid_device* %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %130

114:                                              ; preds = %96
  %115 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %116 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %115, i32 0, i32 1
  %117 = load %struct.hid_device*, %struct.hid_device** %116, align 8
  %118 = call i32 @hid_dbg(%struct.hid_device* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %119 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %120 = load %struct.pidff_device*, %struct.pidff_device** %2, align 8
  %121 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @PID_POOL, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %127 = call i32 @hid_hw_request(%struct.hid_device* %119, i32 %125, i32 %126)
  %128 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %129 = call i32 @hid_hw_wait(%struct.hid_device* %128)
  br label %85

130:                                              ; preds = %100, %85
  br label %131

131:                                              ; preds = %130, %1
  ret void
}

declare dso_local i32 @hid_hw_request(%struct.hid_device*, i32, i32) #1

declare dso_local i32 @hid_hw_wait(%struct.hid_device*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
