; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_close_con_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_close_con_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.c4iw_ep = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.c4iw_qp_attributes = type { i32 }
%struct.cpl_close_con_rpl = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ep %p tid %u\0A\00", align 1
@CLOSE_CON_RPL = common dso_local global i32 0, align 4
@C4IW_QP_STATE_IDLE = common dso_local global i32 0, align 4
@C4IW_QP_ATTR_NEXT_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Bad endpoint state %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.sk_buff*)* @close_con_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_con_rpl(%struct.c4iw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c4iw_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.c4iw_ep*, align 8
  %7 = alloca %struct.c4iw_qp_attributes, align 4
  %8 = alloca %struct.cpl_close_con_rpl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.cpl_close_con_rpl* @cplhdr(%struct.sk_buff* %11)
  store %struct.cpl_close_con_rpl* %12, %struct.cpl_close_con_rpl** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.cpl_close_con_rpl*, %struct.cpl_close_con_rpl** %8, align 8
  %14 = call i32 @GET_TID(%struct.cpl_close_con_rpl* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev* %15, i32 %16)
  store %struct.c4iw_ep* %17, %struct.c4iw_ep** %6, align 8
  %18 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %19 = icmp ne %struct.c4iw_ep* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %100

21:                                               ; preds = %2
  %22 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %23 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %24 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %22, i32 %25)
  %27 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %28 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* @CLOSE_CON_RPL, align 4
  %32 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %33 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = call i32 @set_bit(i32 %31, i32* %34)
  %36 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %37 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %80 [
    i32 130, label %40
    i32 128, label %44
    i32 131, label %79
    i32 129, label %79
  ]

40:                                               ; preds = %21
  %41 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %42 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %41, i32 0, i32 0
  %43 = call i32 @__state_set(%struct.TYPE_4__* %42, i32 128)
  br label %86

44:                                               ; preds = %21
  %45 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %46 = call i32 @stop_ep_timer(%struct.c4iw_ep* %45)
  %47 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %48 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %44
  %53 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %54 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = icmp ne %struct.TYPE_5__* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load i32, i32* @C4IW_QP_STATE_IDLE, align 4
  %60 = getelementptr inbounds %struct.c4iw_qp_attributes, %struct.c4iw_qp_attributes* %7, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %62 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %68 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* @C4IW_QP_ATTR_NEXT_STATE, align 4
  %72 = call i32 @c4iw_modify_qp(i32 %66, %struct.TYPE_5__* %70, i32 %71, %struct.c4iw_qp_attributes* %7, i32 1)
  br label %73

73:                                               ; preds = %58, %52, %44
  %74 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %75 = call i32 @close_complete_upcall(%struct.c4iw_ep* %74, i32 0)
  %76 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %77 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %76, i32 0, i32 0
  %78 = call i32 @__state_set(%struct.TYPE_4__* %77, i32 129)
  store i32 1, i32* %9, align 4
  br label %86

79:                                               ; preds = %21, %21
  br label %86

80:                                               ; preds = %21
  %81 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %82 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %80, %79, %73, %40
  %87 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %88 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %95 = call i32 @release_ep_resources(%struct.c4iw_ep* %94)
  br label %96

96:                                               ; preds = %93, %86
  %97 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %98 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %97, i32 0, i32 0
  %99 = call i32 @c4iw_put_ep(%struct.TYPE_4__* %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %20
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.cpl_close_con_rpl* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_close_con_rpl*) #1

declare dso_local %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__state_set(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @stop_ep_timer(%struct.c4iw_ep*) #1

declare dso_local i32 @c4iw_modify_qp(i32, %struct.TYPE_5__*, i32, %struct.c4iw_qp_attributes*, i32) #1

declare dso_local i32 @close_complete_upcall(%struct.c4iw_ep*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @release_ep_resources(%struct.c4iw_ep*) #1

declare dso_local i32 @c4iw_put_ep(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
