; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_rcfw_send_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_rcfw_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cmdq_base = type { i32, i32 }
%struct.creq_base = type { i32 }
%struct.creq_qp_event = type { i64 }

@RCFW_MAX_COOKIE_VALUE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cmdq[%#x]=%#x send failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cmdq[%#x]=%#x timedout (%d)msec\0A\00", align 1
@RCFW_CMD_WAIT_TIME_MS = common dso_local global i64 0, align 8
@FIRMWARE_TIMED_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"cmdq[%#x]=%#x status %#x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw* %0, %struct.cmdq_base* %1, %struct.creq_base* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %8 = alloca %struct.cmdq_base*, align 8
  %9 = alloca %struct.creq_base*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.creq_qp_event*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %7, align 8
  store %struct.cmdq_base* %1, %struct.cmdq_base** %8, align 8
  store %struct.creq_base* %2, %struct.creq_base** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.creq_base*, %struct.creq_base** %9, align 8
  %18 = bitcast %struct.creq_base* %17 to %struct.creq_qp_event*
  store %struct.creq_qp_event* %18, %struct.creq_qp_event** %12, align 8
  store i32 255, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %69, %5
  %20 = load %struct.cmdq_base*, %struct.cmdq_base** %8, align 8
  %21 = getelementptr inbounds %struct.cmdq_base, %struct.cmdq_base* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %24 = load %struct.cmdq_base*, %struct.cmdq_base** %8, align 8
  %25 = load %struct.creq_base*, %struct.creq_base** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @__send_message(%struct.bnxt_qplib_rcfw* %23, %struct.cmdq_base* %24, %struct.creq_base* %25, i8* %26, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load %struct.cmdq_base*, %struct.cmdq_base** %8, align 8
  %30 = getelementptr inbounds %struct.cmdq_base, %struct.cmdq_base* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load i32, i32* @RCFW_MAX_COOKIE_VALUE, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %19
  br label %73

38:                                               ; preds = %19
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46, %38
  %52 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %53 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %6, align 4
  br label %121

60:                                               ; preds = %46, %41
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @mdelay(i32 1)
  br label %67

65:                                               ; preds = %60
  %66 = call i32 @usleep_range(i32 500, i32 1000)
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %15, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %19, label %73

73:                                               ; preds = %69, %37
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @__block_for_resp(%struct.bnxt_qplib_rcfw* %77, i32 %78)
  store i32 %79, i32* %16, align 4
  br label %84

80:                                               ; preds = %73
  %81 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @__wait_for_resp(%struct.bnxt_qplib_rcfw* %81, i32 %82)
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %89 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i64, i64* @RCFW_CMD_WAIT_TIME_MS, align 8
  %95 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93, i64 %94)
  %96 = load i32, i32* @FIRMWARE_TIMED_OUT, align 4
  %97 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %98 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %97, i32 0, i32 1
  %99 = call i32 @set_bit(i32 %96, i32* %98)
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %6, align 4
  br label %121

101:                                              ; preds = %84
  %102 = load %struct.creq_qp_event*, %struct.creq_qp_event** %12, align 8
  %103 = getelementptr inbounds %struct.creq_qp_event, %struct.creq_qp_event* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %108 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.creq_qp_event*, %struct.creq_qp_event** %12, align 8
  %114 = getelementptr inbounds %struct.creq_qp_event, %struct.creq_qp_event* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %112, i64 %115)
  %117 = load i32, i32* @EFAULT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %106, %101
  %120 = load i32, i32* %16, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %87, %51
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @__send_message(%struct.bnxt_qplib_rcfw*, %struct.cmdq_base*, %struct.creq_base*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @__block_for_resp(%struct.bnxt_qplib_rcfw*, i32) #1

declare dso_local i32 @__wait_for_resp(%struct.bnxt_qplib_rcfw*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
