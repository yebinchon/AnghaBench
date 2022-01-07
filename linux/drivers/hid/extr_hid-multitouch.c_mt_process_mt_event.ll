; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_process_mt_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_process_mt_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.mt_application = type { i32, i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i32, i32 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@MT_QUIRK_WIN8_PTP_BUTTONS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.mt_application*, %struct.hid_field*, %struct.hid_usage*, i32, i32)* @mt_process_mt_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt_process_mt_event(%struct.hid_device* %0, %struct.mt_application* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.mt_application*, align 8
  %9 = alloca %struct.hid_field*, align 8
  %10 = alloca %struct.hid_usage*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.input_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store %struct.mt_application* %1, %struct.mt_application** %8, align 8
  store %struct.hid_field* %2, %struct.hid_field** %9, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.mt_application*, %struct.mt_application** %8, align 8
  %16 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %19 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.input_dev*, %struct.input_dev** %21, align 8
  store %struct.input_dev* %22, %struct.input_dev** %14, align 8
  %23 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %6
  %28 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %29 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %6
  br label %73

35:                                               ; preds = %27
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @MT_QUIRK_WIN8_PTP_BUTTONS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %73

44:                                               ; preds = %40
  %45 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %46 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EV_KEY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %52 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BTN_LEFT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.mt_application*, %struct.mt_application** %8, align 8
  %59 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %73

62:                                               ; preds = %50, %44
  br label %63

63:                                               ; preds = %62, %35
  %64 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %65 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %66 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %69 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @input_event(%struct.input_dev* %64, i32 %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %63, %56, %43, %34
  ret void
}

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
