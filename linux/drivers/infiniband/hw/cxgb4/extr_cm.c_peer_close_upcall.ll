; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_peer_close_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_peer_close_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ep %p tid %u\0A\00", align 1
@IW_CM_EVENT_DISCONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"peer close delivered ep %p cm_id %p tid %u\0A\00", align 1
@DISCONN_UPCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_ep*)* @peer_close_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peer_close_upcall(%struct.c4iw_ep* %0) #0 {
  %2 = alloca %struct.c4iw_ep*, align 8
  %3 = alloca %struct.iw_cm_event, align 4
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %2, align 8
  %4 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %5 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %6 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_5__*
  %10 = call i32 (i8*, %struct.c4iw_ep*, %struct.TYPE_5__*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %4, %struct.TYPE_5__* %9)
  %11 = call i32 @memset(%struct.iw_cm_event* %3, i32 0, i32 4)
  %12 = load i32, i32* @IW_CM_EVENT_DISCONNECT, align 4
  %13 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %15 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %1
  %20 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %21 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %22 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %26 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, %struct.c4iw_ep*, %struct.TYPE_5__*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.c4iw_ep* %20, %struct.TYPE_5__* %24, i32 %27)
  %29 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %30 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_5__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_5__*, %struct.iw_cm_event*)** %33, align 8
  %35 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %36 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 %34(%struct.TYPE_5__* %38, %struct.iw_cm_event* %3)
  %40 = load i32, i32* @DISCONN_UPCALL, align 4
  %41 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %42 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @set_bit(i32 %40, i32* %43)
  br label %45

45:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, %struct.TYPE_5__*, ...) #1

declare dso_local i32 @memset(%struct.iw_cm_event*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
