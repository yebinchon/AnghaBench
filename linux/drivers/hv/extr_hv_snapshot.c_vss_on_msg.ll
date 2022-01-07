; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_snapshot.c_vss_on_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_snapshot.c_vss_on_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hv_vss_msg = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"VSS: Message size does not match length\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VSS_OP_REGISTER = common dso_local global i64 0, align 8
@VSS_OP_REGISTER1 = common dso_local global i64 0, align 8
@vss_transaction = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@HVUTIL_READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"VSS: Got unexpected registration request\0A\00", align 1
@HVUTIL_USERSPACE_REQ = common dso_local global i64 0, align 8
@HVUTIL_USERSPACE_RECV = common dso_local global i64 0, align 8
@VSS_OP_HOT_BACKUP = common dso_local global i64 0, align 8
@VSS_HBU_NO_AUTO_RECOVERY = common dso_local global i32 0, align 4
@vss_timeout_work = common dso_local global i32 0, align 4
@vss_poll_wrapper = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"VSS: Transaction not active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @vss_on_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vss_on_msg(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_vss_msg*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.hv_vss_msg*
  store %struct.hv_vss_msg* %8, %struct.hv_vss_msg** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %10, 16
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %6, align 8
  %18 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VSS_OP_REGISTER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %6, align 8
  %25 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VSS_OP_REGISTER1, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23, %16
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 0), align 8
  %32 = load i64, i64* @HVUTIL_READY, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %76

38:                                               ; preds = %30
  %39 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %6, align 8
  %40 = call i32 @vss_handle_handshake(%struct.hv_vss_msg* %39)
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %23
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 0), align 8
  %43 = load i64, i64* @HVUTIL_USERSPACE_REQ, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  %46 = load i64, i64* @HVUTIL_USERSPACE_RECV, align 8
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 0), align 8
  %47 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %6, align 8
  %48 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VSS_OP_HOT_BACKUP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i32, i32* @VSS_HBU_NO_AUTO_RECOVERY, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 2), align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %45
  %59 = call i64 @cancel_delayed_work_sync(i32* @vss_timeout_work)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %6, align 8
  %63 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @vss_respond_to_host(i32 %64)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vss_transaction, i32 0, i32 1), align 8
  %67 = load i32, i32* @vss_poll_wrapper, align 4
  %68 = call i32 @hv_poll_channel(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %58
  br label %74

70:                                               ; preds = %41
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %70, %38, %34, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @vss_handle_handshake(%struct.hv_vss_msg*) #1

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @vss_respond_to_host(i32) #1

declare dso_local i32 @hv_poll_channel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
