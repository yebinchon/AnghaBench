; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb-iop.c_adb_iop_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb-iop.c_adb_iop_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i32, i64* }
%struct.adb_iopmsg = type { i32, i32, i32 }

@current_req = common dso_local global %struct.adb_request* null, align 8
@ADB_IOP_EXPLICIT = common dso_local global i32 0, align 4
@sending = common dso_local global i32 0, align 4
@adb_iop_state = common dso_local global i32 0, align 4
@ADB_IOP = common dso_local global i32 0, align 4
@ADB_CHAN = common dso_local global i32 0, align 4
@adb_iop_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @adb_iop_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adb_iop_start() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.adb_request*, align 8
  %3 = alloca %struct.adb_iopmsg, align 4
  %4 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %4, %struct.adb_request** %2, align 8
  %5 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %6 = icmp ne %struct.adb_request* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %39

8:                                                ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load i32, i32* @ADB_IOP_EXPLICIT, align 4
  %12 = getelementptr inbounds %struct.adb_iopmsg, %struct.adb_iopmsg* %3, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %14 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 2
  %17 = getelementptr inbounds %struct.adb_iopmsg, %struct.adb_iopmsg* %3, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.adb_iopmsg, %struct.adb_iopmsg* %3, i32 0, i32 1
  %19 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %20 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %24 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @memcpy(i32* %18, i64* %22, i32 %26)
  %28 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %29 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* @sending, align 4
  store i32 %30, i32* @adb_iop_state, align 4
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  %33 = load i32, i32* @ADB_IOP, align 4
  %34 = load i32, i32* @ADB_CHAN, align 4
  %35 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %36 = bitcast %struct.adb_iopmsg* %3 to i32*
  %37 = load i32, i32* @adb_iop_complete, align 4
  %38 = call i32 @iop_send_message(i32 %33, i32 %34, %struct.adb_request* %35, i32 12, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @iop_send_message(i32, i32, %struct.adb_request*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
