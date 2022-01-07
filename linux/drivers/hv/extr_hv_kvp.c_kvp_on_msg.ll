; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_on_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_on_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.hv_kvp_msg = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hv_kvp_msg_enumerate }
%struct.hv_kvp_msg_enumerate = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@kvp_transaction = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@HVUTIL_READY = common dso_local global i64 0, align 8
@HVUTIL_USERSPACE_REQ = common dso_local global i64 0, align 8
@HVUTIL_USERSPACE_RECV = common dso_local global i64 0, align 8
@dm_reg_value = common dso_local global i32 0, align 4
@HV_S_CONT = common dso_local global i32 0, align 4
@kvp_timeout_work = common dso_local global i32 0, align 4
@kvp_poll_wrapper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @kvp_on_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_on_msg(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_kvp_msg*, align 8
  %7 = alloca %struct.hv_kvp_msg_enumerate*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.hv_kvp_msg*
  store %struct.hv_kvp_msg* %10, %struct.hv_kvp_msg** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 16
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %63

17:                                               ; preds = %2
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kvp_transaction, i32 0, i32 0), align 8
  %19 = load i64, i64* @HVUTIL_READY, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %6, align 8
  %23 = call i32 @kvp_handle_handshake(%struct.hv_kvp_msg* %22)
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %17
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kvp_transaction, i32 0, i32 0), align 8
  %26 = load i64, i64* @HVUTIL_USERSPACE_REQ, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %24
  %32 = load i64, i64* @HVUTIL_USERSPACE_RECV, align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kvp_transaction, i32 0, i32 0), align 8
  %33 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %6, align 8
  %34 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.hv_kvp_msg_enumerate* %35, %struct.hv_kvp_msg_enumerate** %7, align 8
  %36 = load i32, i32* @dm_reg_value, align 4
  switch i32 %36, label %52 [
    i32 129, label %37
    i32 128, label %48
  ]

37:                                               ; preds = %31
  %38 = load %struct.hv_kvp_msg_enumerate*, %struct.hv_kvp_msg_enumerate** %7, align 8
  %39 = getelementptr inbounds %struct.hv_kvp_msg_enumerate, %struct.hv_kvp_msg_enumerate* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @HV_S_CONT, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %37
  br label %52

48:                                               ; preds = %31
  %49 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %6, align 8
  %50 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %31, %48, %47
  %53 = call i64 @cancel_delayed_work_sync(i32* @kvp_timeout_work)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @kvp_respond_to_host(%struct.hv_kvp_msg* %56, i32 %57)
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kvp_transaction, i32 0, i32 1), align 8
  %60 = load i32, i32* @kvp_poll_wrapper, align 4
  %61 = call i32 @hv_poll_channel(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %52
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %28, %21, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @kvp_handle_handshake(%struct.hv_kvp_msg*) #1

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kvp_respond_to_host(%struct.hv_kvp_msg*, i32) #1

declare dso_local i32 @hv_poll_channel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
