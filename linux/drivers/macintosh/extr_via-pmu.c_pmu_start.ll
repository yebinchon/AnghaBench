; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i64* }

@current_req = common dso_local global %struct.adb_request* null, align 8
@pmu_state = common dso_local global i64 0, align 8
@idle = common dso_local global i64 0, align 8
@req_awaiting_reply = common dso_local global i64 0, align 8
@sending = common dso_local global i64 0, align 8
@data_index = common dso_local global i32 0, align 4
@pmu_data_len = common dso_local global i32** null, align 8
@data_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_start() #0 {
  %1 = alloca %struct.adb_request*, align 8
  %2 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %2, %struct.adb_request** %1, align 8
  %3 = load %struct.adb_request*, %struct.adb_request** %1, align 8
  %4 = icmp ne %struct.adb_request* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i64, i64* @pmu_state, align 8
  %7 = load i64, i64* @idle, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i64, i64* @req_awaiting_reply, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %5, %0
  br label %32

13:                                               ; preds = %9
  %14 = load i64, i64* @sending, align 8
  store i64 %14, i64* @pmu_state, align 8
  store i32 1, i32* @data_index, align 4
  %15 = load i32**, i32*** @pmu_data_len, align 8
  %16 = load %struct.adb_request*, %struct.adb_request** %1, align 8
  %17 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32*, i32** %15, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @data_len, align 4
  %25 = call i32 (...) @wait_for_ack()
  %26 = load %struct.adb_request*, %struct.adb_request** %1, align 8
  %27 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @send_byte(i64 %30)
  br label %32

32:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @wait_for_ack(...) #1

declare dso_local i32 @send_byte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
