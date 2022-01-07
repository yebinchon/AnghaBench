; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_user_event_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_user_event_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32* }

@_QIB_MAX_EVENT_BIT = common dso_local global i32 0, align 4
@_QIB_EVENT_DISARM_BUFS_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ctxtdata*, i32, i64)* @qib_user_event_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_user_event_ack(%struct.qib_ctxtdata* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.qib_ctxtdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %37, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @_QIB_MAX_EVENT_BIT, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @test_bit(i32 %14, i64* %6)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %37

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @_QIB_EVENT_DISARM_BUFS_BIT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %24 = call i32 @qib_disarm_piobufs_ifneeded(%struct.qib_ctxtdata* %23)
  %25 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %26 = call i32 @disarm_req_delay(%struct.qib_ctxtdata* %25)
  store i32 %26, i32* %7, align 4
  br label %36

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %30 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @clear_bit(i32 %28, i32* %34)
  br label %36

36:                                               ; preds = %27, %22
  br label %37

37:                                               ; preds = %36, %17
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @qib_disarm_piobufs_ifneeded(%struct.qib_ctxtdata*) #1

declare dso_local i32 @disarm_req_delay(%struct.qib_ctxtdata*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
