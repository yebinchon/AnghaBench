; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_finish_peer_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_finish_peer_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.c4iw_ep = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.c4iw_qp_attributes = type { i32 }

@C4IW_QP_STATE_ERROR = common dso_local global i32 0, align 4
@C4IW_QP_ATTR_NEXT_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_dev*, %struct.c4iw_ep*)* @finish_peer_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_peer_abort(%struct.c4iw_dev* %0, %struct.c4iw_ep* %1) #0 {
  %3 = alloca %struct.c4iw_dev*, align 8
  %4 = alloca %struct.c4iw_ep*, align 8
  %5 = alloca %struct.c4iw_qp_attributes, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %3, align 8
  store %struct.c4iw_ep* %1, %struct.c4iw_ep** %4, align 8
  %6 = load %struct.c4iw_ep*, %struct.c4iw_ep** %4, align 8
  %7 = load %struct.c4iw_ep*, %struct.c4iw_ep** %4, align 8
  %8 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @complete_cached_srq_buffers(%struct.c4iw_ep* %6, i32 %9)
  %11 = load %struct.c4iw_ep*, %struct.c4iw_ep** %4, align 8
  %12 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load %struct.c4iw_ep*, %struct.c4iw_ep** %4, align 8
  %18 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load i32, i32* @C4IW_QP_STATE_ERROR, align 4
  %24 = getelementptr inbounds %struct.c4iw_qp_attributes, %struct.c4iw_qp_attributes* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.c4iw_ep*, %struct.c4iw_ep** %4, align 8
  %26 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.c4iw_ep*, %struct.c4iw_ep** %4, align 8
  %32 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* @C4IW_QP_ATTR_NEXT_STATE, align 4
  %36 = call i32 @c4iw_modify_qp(i32 %30, %struct.TYPE_4__* %34, i32 %35, %struct.c4iw_qp_attributes* %5, i32 1)
  br label %37

37:                                               ; preds = %22, %16, %2
  %38 = load %struct.c4iw_ep*, %struct.c4iw_ep** %4, align 8
  %39 = call i32 @peer_abort_upcall(%struct.c4iw_ep* %38)
  %40 = load %struct.c4iw_ep*, %struct.c4iw_ep** %4, align 8
  %41 = call i32 @release_ep_resources(%struct.c4iw_ep* %40)
  %42 = load %struct.c4iw_ep*, %struct.c4iw_ep** %4, align 8
  %43 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %42, i32 0, i32 0
  %44 = call i32 @c4iw_put_ep(%struct.TYPE_3__* %43)
  ret void
}

declare dso_local i32 @complete_cached_srq_buffers(%struct.c4iw_ep*, i32) #1

declare dso_local i32 @c4iw_modify_qp(i32, %struct.TYPE_4__*, i32, %struct.c4iw_qp_attributes*, i32) #1

declare dso_local i32 @peer_abort_upcall(%struct.c4iw_ep*) #1

declare dso_local i32 @release_ep_resources(%struct.c4iw_ep*) #1

declare dso_local i32 @c4iw_put_ep(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
