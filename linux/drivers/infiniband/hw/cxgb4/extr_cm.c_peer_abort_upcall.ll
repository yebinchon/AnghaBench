; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_peer_abort_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_peer_abort_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ep %p tid %u\0A\00", align 1
@IW_CM_EVENT_CLOSE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"abort delivered ep %p cm_id %p tid %u\0A\00", align 1
@ABORT_UPCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_ep*)* @peer_abort_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peer_abort_upcall(%struct.c4iw_ep* %0) #0 {
  %2 = alloca %struct.c4iw_ep*, align 8
  %3 = alloca %struct.iw_cm_event, align 4
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %2, align 8
  %4 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %5 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %6 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_4__*
  %10 = call i32 (i8*, %struct.c4iw_ep*, %struct.TYPE_4__*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %4, %struct.TYPE_4__* %9)
  %11 = call i32 @memset(%struct.iw_cm_event* %3, i32 0, i32 8)
  %12 = load i32, i32* @IW_CM_EVENT_CLOSE, align 4
  %13 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @ECONNRESET, align 4
  %15 = sub nsw i32 0, %14
  %16 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %18 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %1
  %23 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %24 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %25 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %29 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, %struct.c4iw_ep*, %struct.TYPE_4__*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.c4iw_ep* %23, %struct.TYPE_4__* %27, i32 %30)
  %32 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %33 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)** %36, align 8
  %38 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %39 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 %37(%struct.TYPE_4__* %41, %struct.iw_cm_event* %3)
  %43 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %44 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %43, i32 0, i32 0
  %45 = call i32 @deref_cm_id(%struct.TYPE_5__* %44)
  %46 = load i32, i32* @ABORT_UPCALL, align 4
  %47 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %48 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, %struct.TYPE_4__*, ...) #1

declare dso_local i32 @memset(%struct.iw_cm_event*, i32, i32) #1

declare dso_local i32 @deref_cm_id(%struct.TYPE_5__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
