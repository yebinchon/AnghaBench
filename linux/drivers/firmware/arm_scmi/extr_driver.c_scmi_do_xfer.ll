; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_do_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_do_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_xfer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.scmi_info = type { %struct.TYPE_3__*, i32, %struct.device* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.scmi_chan_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"mbox send fail %d\0A\00", align 1
@SCMI_MAX_POLL_TO_NS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"mbox timed out in resp(caller: %pS)\0A\00", align 1
@_RET_IP_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scmi_do_xfer(%struct.scmi_handle* %0, %struct.scmi_xfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca %struct.scmi_xfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scmi_info*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.scmi_chan_info*, align 8
  %11 = alloca i32, align 4
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store %struct.scmi_xfer* %1, %struct.scmi_xfer** %5, align 8
  %12 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %13 = call %struct.scmi_info* @handle_to_scmi_info(%struct.scmi_handle* %12)
  store %struct.scmi_info* %13, %struct.scmi_info** %8, align 8
  %14 = load %struct.scmi_info*, %struct.scmi_info** %8, align 8
  %15 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %14, i32 0, i32 2
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.scmi_info*, %struct.scmi_info** %8, align 8
  %18 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %17, i32 0, i32 1
  %19 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %20 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.scmi_chan_info* @idr_find(i32* %18, i32 %22)
  store %struct.scmi_chan_info* %23, %struct.scmi_chan_info** %10, align 8
  %24 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %10, align 8
  %25 = icmp ne %struct.scmi_chan_info* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %117

33:                                               ; preds = %2
  %34 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %10, align 8
  %35 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %38 = call i32 @mbox_send_message(i32 %36, %struct.scmi_xfer* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %117

46:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  %47 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %48 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = call i32 (...) @ktime_get()
  %54 = load i32, i32* @SCMI_MAX_POLL_TO_NS, align 4
  %55 = call i32 @ktime_add_ns(i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %10, align 8
  %57 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @scmi_xfer_done_no_timeout(%struct.scmi_chan_info* %56, %struct.scmi_xfer* %57, i32 %58)
  %60 = call i32 @spin_until_cond(i32 %59)
  %61 = call i32 (...) @ktime_get()
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @ktime_before(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %67 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %10, align 8
  %68 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @scmi_fetch_response(%struct.scmi_xfer* %66, i32 %69)
  br label %74

71:                                               ; preds = %52
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %65
  br label %95

75:                                               ; preds = %46
  %76 = load %struct.scmi_info*, %struct.scmi_info** %8, align 8
  %77 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @msecs_to_jiffies(i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %83 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %82, i32 0, i32 1
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @wait_for_completion_timeout(i32* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %75
  %88 = load %struct.device*, %struct.device** %9, align 8
  %89 = load i64, i64* @_RET_IP_, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* @ETIMEDOUT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %87, %75
  br label %95

95:                                               ; preds = %94, %74
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %95
  %99 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %100 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %106 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @scmi_to_linux_errno(i64 %108)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %104, %98, %95
  %111 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %10, align 8
  %112 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @mbox_client_txdone(i32 %113, i32 %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %110, %41, %30
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.scmi_info* @handle_to_scmi_info(%struct.scmi_handle*) #1

declare dso_local %struct.scmi_chan_info* @idr_find(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mbox_send_message(i32, %struct.scmi_xfer*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @spin_until_cond(i32) #1

declare dso_local i32 @scmi_xfer_done_no_timeout(%struct.scmi_chan_info*, %struct.scmi_xfer*, i32) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i32 @scmi_fetch_response(%struct.scmi_xfer*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @scmi_to_linux_errno(i64) #1

declare dso_local i32 @mbox_client_txdone(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
