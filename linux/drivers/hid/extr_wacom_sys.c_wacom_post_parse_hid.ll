; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_post_parse_hid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_post_parse_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.wacom_features = type { i64, i32, i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@HID_GENERIC = common dso_local global i64 0, align 8
@WACOM_DEVICETYPE_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.wacom_features*)* @wacom_post_parse_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_post_parse_hid(%struct.hid_device* %0, %struct.wacom_features* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca %struct.wacom_wac*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.wacom_features* %1, %struct.wacom_features** %4, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %7)
  store %struct.wacom* %8, %struct.wacom** %5, align 8
  %9 = load %struct.wacom*, %struct.wacom** %5, align 8
  %10 = getelementptr inbounds %struct.wacom, %struct.wacom* %9, i32 0, i32 0
  store %struct.wacom_wac* %10, %struct.wacom_wac** %6, align 8
  %11 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %12 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HID_GENERIC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %74

16:                                               ; preds = %2
  %17 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %18 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %23 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @WACOM_DEVICETYPE_DIRECT, align 4
  %28 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %29 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %39

32:                                               ; preds = %21
  %33 = load i32, i32* @WACOM_DEVICETYPE_DIRECT, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %36 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %26
  br label %40

40:                                               ; preds = %39, %16
  %41 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %42 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  %46 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %47 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @WACOM_DEVICETYPE_DIRECT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %54 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %57 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %61 = call i32 @input_mt_init_slots(i32 %55, i32 %59, i32 %60)
  br label %72

62:                                               ; preds = %45
  %63 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %64 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %67 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @INPUT_MT_POINTER, align 4
  %71 = call i32 @input_mt_init_slots(i32 %65, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %52
  br label %73

73:                                               ; preds = %72, %40
  br label %74

74:                                               ; preds = %73, %2
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_mt_init_slots(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
