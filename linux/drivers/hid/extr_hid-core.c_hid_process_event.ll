; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32, %struct.hid_driver* }
%struct.hid_driver = type { i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 }
%struct.hid_device.0 = type opaque
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s's event failed with %d\0A\00", align 1
@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@HID_CLAIMED_HIDDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32, i32)* @hid_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_process_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hid_driver*, align 8
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 3
  %15 = load %struct.hid_driver*, %struct.hid_driver** %14, align 8
  store %struct.hid_driver* %15, %struct.hid_driver** %11, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %17 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 2
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %22 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @hid_dump_input(%struct.hid_device* %21, %struct.hid_usage* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %5
  %26 = load %struct.hid_driver*, %struct.hid_driver** %11, align 8
  %27 = icmp ne %struct.hid_driver* %26, null
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = load %struct.hid_driver*, %struct.hid_driver** %11, align 8
  %30 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %29, i32 0, i32 0
  %31 = load i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)* %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  %34 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %35 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %36 = call i64 @hid_match_usage(%struct.hid_device* %34, %struct.hid_usage* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  %39 = load %struct.hid_driver*, %struct.hid_driver** %11, align 8
  %40 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %39, i32 0, i32 0
  %41 = load i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device.0*, %struct.hid_field*, %struct.hid_usage*, i32)** %40, align 8
  %42 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %43 = bitcast %struct.hid_device* %42 to %struct.hid_device.0*
  %44 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %45 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 %41(%struct.hid_device.0* %43, %struct.hid_field* %44, %struct.hid_usage* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %55 = load %struct.hid_driver*, %struct.hid_driver** %11, align 8
  %56 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @hid_err(%struct.hid_device* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %50
  br label %99

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61, %33, %28, %25
  %63 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %64 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %71 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %72 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @hidinput_hid_event(%struct.hid_device* %70, %struct.hid_field* %71, %struct.hid_usage* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %77 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @HID_CLAIMED_HIDDEV, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %87 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %86, i32 0, i32 1
  %88 = load i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %92 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %91, i32 0, i32 1
  %93 = load i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)** %92, align 8
  %94 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %95 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %96 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 %93(%struct.hid_device* %94, %struct.hid_field* %95, %struct.hid_usage* %96, i32 %97)
  br label %99

99:                                               ; preds = %60, %90, %85, %82, %75
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @hid_dump_input(%struct.hid_device*, %struct.hid_usage*, i32) #1

declare dso_local i64 @hid_match_usage(%struct.hid_device*, %struct.hid_usage*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32, i32) #1

declare dso_local i32 @hidinput_hid_event(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
