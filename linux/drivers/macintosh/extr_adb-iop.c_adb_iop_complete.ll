; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb-iop.c_adb_iop_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb-iop.c_adb_iop_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i64 }
%struct.iop_msg = type { i32 }

@current_req = common dso_local global %struct.adb_request* null, align 8
@adb_iop_state = common dso_local global i64 0, align 8
@sending = common dso_local global i64 0, align 8
@awaiting_reply = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop_msg*)* @adb_iop_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adb_iop_complete(%struct.iop_msg* %0) #0 {
  %2 = alloca %struct.iop_msg*, align 8
  %3 = alloca %struct.adb_request*, align 8
  %4 = alloca i64, align 8
  store %struct.iop_msg* %0, %struct.iop_msg** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @local_irq_save(i64 %5)
  %7 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %7, %struct.adb_request** %3, align 8
  %8 = load i64, i64* @adb_iop_state, align 8
  %9 = load i64, i64* @sending, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %13 = icmp ne %struct.adb_request* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %16 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64, i64* @awaiting_reply, align 8
  store i64 %20, i64* @adb_iop_state, align 8
  br label %21

21:                                               ; preds = %19, %14, %11, %1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @local_irq_restore(i64 %22)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
