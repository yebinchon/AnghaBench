; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_send_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_send_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ABORT_REQ_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_ep*)* @send_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_abort(%struct.c4iw_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c4iw_ep*, align 8
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %3, align 8
  %4 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %5 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %11 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %19 = call i32 @send_abort_req(%struct.c4iw_ep* %18)
  store i32 0, i32* %2, align 4
  br label %28

20:                                               ; preds = %9
  %21 = load i32, i32* @ABORT_REQ_IN_PROGRESS, align 4
  %22 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %23 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @set_bit(i32 %21, i32* %24)
  %26 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %27 = call i32 @read_tcb(%struct.c4iw_ep* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @send_abort_req(%struct.c4iw_ep*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @read_tcb(%struct.c4iw_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
