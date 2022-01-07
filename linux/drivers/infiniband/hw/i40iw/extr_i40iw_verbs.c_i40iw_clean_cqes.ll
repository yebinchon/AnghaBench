; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_clean_cqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_clean_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i40iw_cq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.i40iw_cq_uk }
%struct.i40iw_cq_uk = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32*, %struct.i40iw_cq_uk.0*)* }
%struct.i40iw_cq_uk.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_qp*, %struct.i40iw_cq*)* @i40iw_clean_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_clean_cqes(%struct.i40iw_qp* %0, %struct.i40iw_cq* %1) #0 {
  %3 = alloca %struct.i40iw_qp*, align 8
  %4 = alloca %struct.i40iw_cq*, align 8
  %5 = alloca %struct.i40iw_cq_uk*, align 8
  store %struct.i40iw_qp* %0, %struct.i40iw_qp** %3, align 8
  store %struct.i40iw_cq* %1, %struct.i40iw_cq** %4, align 8
  %6 = load %struct.i40iw_cq*, %struct.i40iw_cq** %4, align 8
  %7 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.i40iw_cq_uk* %8, %struct.i40iw_cq_uk** %5, align 8
  %9 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %5, align 8
  %10 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32 (i32*, %struct.i40iw_cq_uk.0*)*, i32 (i32*, %struct.i40iw_cq_uk.0*)** %11, align 8
  %13 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %14 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %5, align 8
  %17 = bitcast %struct.i40iw_cq_uk* %16 to %struct.i40iw_cq_uk.0*
  %18 = call i32 %12(i32* %15, %struct.i40iw_cq_uk.0* %17)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
