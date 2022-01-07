; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_close_complete_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_close_complete_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ep %p tid %u\0A\00", align 1
@IW_CM_EVENT_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"close complete delivered ep %p cm_id %p tid %u\0A\00", align 1
@CLOSE_UPCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_ep*, i32)* @close_complete_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_complete_upcall(%struct.c4iw_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.c4iw_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iw_cm_event, align 4
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %7 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %8 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.TYPE_4__*
  %12 = call i32 (i8*, %struct.c4iw_ep*, %struct.TYPE_4__*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %6, %struct.TYPE_4__* %11)
  %13 = call i32 @memset(%struct.iw_cm_event* %5, i32 0, i32 8)
  %14 = load i32, i32* @IW_CM_EVENT_CLOSE, align 4
  %15 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %19 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %52

23:                                               ; preds = %2
  %24 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %25 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %26 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %30 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, %struct.c4iw_ep*, %struct.TYPE_4__*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.c4iw_ep* %24, %struct.TYPE_4__* %28, i32 %31)
  %33 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %34 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)** %37, align 8
  %39 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %40 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 %38(%struct.TYPE_4__* %42, %struct.iw_cm_event* %5)
  %44 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %45 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %44, i32 0, i32 0
  %46 = call i32 @deref_cm_id(%struct.TYPE_5__* %45)
  %47 = load i32, i32* @CLOSE_UPCALL, align 4
  %48 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %49 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @set_bit(i32 %47, i32* %50)
  br label %52

52:                                               ; preds = %23, %2
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
