; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_req_notify_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_req_notify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.i40iw_cq = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.i40iw_cq_uk }
%struct.i40iw_cq_uk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.i40iw_cq_uk.0*, i32)* }
%struct.i40iw_cq_uk.0 = type opaque

@IW_CQ_COMPL_EVENT = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@IW_CQ_COMPL_SOLICITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32)* @i40iw_req_notify_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_req_notify_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_cq*, align 8
  %6 = alloca %struct.i40iw_cq_uk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @IW_CQ_COMPL_EVENT, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %11 = bitcast %struct.ib_cq* %10 to %struct.i40iw_cq*
  store %struct.i40iw_cq* %11, %struct.i40iw_cq** %5, align 8
  %12 = load %struct.i40iw_cq*, %struct.i40iw_cq** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.i40iw_cq_uk* %14, %struct.i40iw_cq_uk** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IW_CQ_COMPL_SOLICITED, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = load %struct.i40iw_cq*, %struct.i40iw_cq** %5, align 8
  %22 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %21, i32 0, i32 0
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %6, align 8
  %26 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.i40iw_cq_uk.0*, i32)*, i32 (%struct.i40iw_cq_uk.0*, i32)** %27, align 8
  %29 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %6, align 8
  %30 = bitcast %struct.i40iw_cq_uk* %29 to %struct.i40iw_cq_uk.0*
  %31 = load i32, i32* %8, align 4
  %32 = call i32 %28(%struct.i40iw_cq_uk.0* %30, i32 %31)
  %33 = load %struct.i40iw_cq*, %struct.i40iw_cq** %5, align 8
  %34 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
