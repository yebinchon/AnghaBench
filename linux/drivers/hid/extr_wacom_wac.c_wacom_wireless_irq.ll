; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wireless_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wireless_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@WACOM_PKGLEN_WIRELESS = common dso_local global i64 0, align 8
@WACOM_REPORT_WL = common dso_local global i8 0, align 1
@INTUOSHT = common dso_local global i64 0, align 8
@INTUOSHT2 = common dso_local global i64 0, align 8
@SW_MUTE_DEVICE = common dso_local global i32 0, align 4
@WACOM_WORKER_WIRELESS = common dso_local global i32 0, align 4
@WACOM_POWER_SUPPLY_STATUS_AUTO = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i64)* @wacom_wireless_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_wireless_irq(%struct.wacom_wac* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %12 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @WACOM_PKGLEN_WIRELESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @WACOM_REPORT_WL, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %138

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %122

34:                                               ; preds = %26
  %35 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %36 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INTUOSHT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %44 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @INTUOSHT2, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %42, %34
  %51 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %52 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %50
  %58 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %59 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %57
  %65 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %66 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @SW_MUTE_DEVICE, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 5
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 64
  %76 = trunc i32 %75 to i8
  %77 = call i32 @input_report_switch(i64 %69, i32 %70, i8 zeroext %76)
  %78 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %79 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @input_sync(i64 %82)
  br label %84

84:                                               ; preds = %64, %57, %50, %42
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 6
  %87 = call i32 @get_unaligned_be16(i8* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 5
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 63
  %93 = mul nsw i32 %92, 100
  %94 = sdiv i32 %93, 31
  store i32 %94, i32* %9, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 5
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 128
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %10, align 4
  %104 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %105 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %84
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %112 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %114 = load i32, i32* @WACOM_WORKER_WIRELESS, align 4
  %115 = call i32 @wacom_schedule_work(%struct.wacom_wac* %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %84
  %117 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %118 = load i32, i32* @WACOM_POWER_SUPPLY_STATUS_AUTO, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @wacom_notify_battery(%struct.wacom_wac* %117, i32 %118, i32 %119, i32 %120, i32 1, i32 0)
  br label %137

122:                                              ; preds = %26
  %123 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %124 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %129 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %128, i32 0, i32 1
  store i32 0, i32* %129, align 8
  %130 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %131 = load i32, i32* @WACOM_WORKER_WIRELESS, align 4
  %132 = call i32 @wacom_schedule_work(%struct.wacom_wac* %130, i32 %131)
  %133 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %134 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %135 = call i32 @wacom_notify_battery(%struct.wacom_wac* %133, i32 %134, i32 0, i32 0, i32 0, i32 0)
  br label %136

136:                                              ; preds = %127, %122
  br label %137

137:                                              ; preds = %136, %116
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %25
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @input_report_switch(i64, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(i64) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @wacom_schedule_work(%struct.wacom_wac*, i32) #1

declare dso_local i32 @wacom_notify_battery(%struct.wacom_wac*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
