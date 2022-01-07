; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_do_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_do_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_info = type { i32, %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.ti_sci_xfer = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Mbox timedout in resp(caller: %pS)\0A\00", align 1
@_RET_IP_ = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_info*, %struct.ti_sci_xfer*)* @ti_sci_do_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_do_xfer(%struct.ti_sci_info* %0, %struct.ti_sci_xfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_sci_info*, align 8
  %5 = alloca %struct.ti_sci_xfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.ti_sci_info* %0, %struct.ti_sci_info** %4, align 8
  store %struct.ti_sci_xfer* %1, %struct.ti_sci_xfer** %5, align 8
  %9 = load %struct.ti_sci_info*, %struct.ti_sci_info** %4, align 8
  %10 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %9, i32 0, i32 2
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.ti_sci_info*, %struct.ti_sci_info** %4, align 8
  %13 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %5, align 8
  %16 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %15, i32 0, i32 1
  %17 = call i32 @mbox_send_message(i32 %14, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %23 = load %struct.ti_sci_info*, %struct.ti_sci_info** %4, align 8
  %24 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @msecs_to_jiffies(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %5, align 8
  %30 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @wait_for_completion_timeout(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %22
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = load i64, i64* @_RET_IP_, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %34, %22
  %42 = load %struct.ti_sci_info*, %struct.ti_sci_info** %4, align 8
  %43 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mbox_client_txdone(i32 %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %20
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @mbox_send_message(i32, i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @mbox_client_txdone(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
