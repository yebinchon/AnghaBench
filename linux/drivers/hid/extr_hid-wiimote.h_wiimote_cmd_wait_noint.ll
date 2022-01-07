; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote.h_wiimote_cmd_wait_noint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote.h_wiimote_cmd_wait_noint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WIIPROTO_REQ_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiimote_data*)* @wiimote_cmd_wait_noint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_cmd_wait_noint(%struct.wiimote_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i64, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  %5 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %6 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* @HZ, align 4
  %9 = call i64 @wait_for_completion_timeout(i32* %7, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %17 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WIIPROTO_REQ_NULL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %22, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
