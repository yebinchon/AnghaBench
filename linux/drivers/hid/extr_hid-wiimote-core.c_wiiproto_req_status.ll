; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32 }

@WIIPROTO_REQ_SREQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiproto_req_status(%struct.wiimote_data* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  %3 = alloca [2 x i64], align 16
  store %struct.wiimote_data* %0, %struct.wiimote_data** %2, align 8
  %4 = load i64, i64* @WIIPROTO_REQ_SREQ, align 8
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %4, i64* %5, align 16
  %6 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %9 = call i32 @wiiproto_keep_rumble(%struct.wiimote_data* %7, i64* %8)
  %10 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %12 = call i32 @wiimote_queue(%struct.wiimote_data* %10, i64* %11, i32 16)
  ret void
}

declare dso_local i32 @wiiproto_keep_rumble(%struct.wiimote_data*, i64*) #1

declare dso_local i32 @wiimote_queue(%struct.wiimote_data*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
