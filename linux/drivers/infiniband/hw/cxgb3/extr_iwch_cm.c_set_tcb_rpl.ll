; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_cm.c_set_tcb_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_cm.c_set_tcb_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_set_tcb_rpl = type { i64 }

@CPL_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Unexpected SET_TCB_RPL status %u for tid %u\0A\00", align 1
@CPL_RET_BUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3cdev*, %struct.sk_buff*, i8*)* @set_tcb_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tcb_rpl(%struct.t3cdev* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cpl_set_tcb_rpl*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call %struct.cpl_set_tcb_rpl* @cplhdr(%struct.sk_buff* %8)
  store %struct.cpl_set_tcb_rpl* %9, %struct.cpl_set_tcb_rpl** %7, align 8
  %10 = load %struct.cpl_set_tcb_rpl*, %struct.cpl_set_tcb_rpl** %7, align 8
  %11 = getelementptr inbounds %struct.cpl_set_tcb_rpl, %struct.cpl_set_tcb_rpl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CPL_ERR_NONE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.cpl_set_tcb_rpl*, %struct.cpl_set_tcb_rpl** %7, align 8
  %17 = getelementptr inbounds %struct.cpl_set_tcb_rpl, %struct.cpl_set_tcb_rpl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.cpl_set_tcb_rpl*, %struct.cpl_set_tcb_rpl** %7, align 8
  %20 = call i32 @GET_TID(%struct.cpl_set_tcb_rpl* %19)
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %20)
  br label %22

22:                                               ; preds = %15, %3
  %23 = load i32, i32* @CPL_RET_BUF_DONE, align 4
  ret i32 %23
}

declare dso_local %struct.cpl_set_tcb_rpl* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_set_tcb_rpl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
