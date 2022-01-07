; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_established_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_established_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ep %p tid %u\0A\00", align 1
@IW_CM_EVENT_ESTABLISHED = common dso_local global i32 0, align 4
@ESTAB_UPCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_ep*)* @established_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @established_upcall(%struct.c4iw_ep* %0) #0 {
  %2 = alloca %struct.c4iw_ep*, align 8
  %3 = alloca %struct.iw_cm_event, align 4
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %2, align 8
  %4 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %5 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %6 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %4, i32 %7)
  %9 = call i32 @memset(%struct.iw_cm_event* %3, i32 0, i32 12)
  %10 = load i32, i32* @IW_CM_EVENT_ESTABLISHED, align 4
  %11 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %13 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %17 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %21 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %1
  %26 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %27 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %28 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %26, i32 %29)
  %31 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %32 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)** %35, align 8
  %37 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %38 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 %36(%struct.TYPE_4__* %40, %struct.iw_cm_event* %3)
  %42 = load i32, i32* @ESTAB_UPCALL, align 4
  %43 = load %struct.c4iw_ep*, %struct.c4iw_ep** %2, align 8
  %44 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %42, i32* %45)
  br label %47

47:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32) #1

declare dso_local i32 @memset(%struct.iw_cm_event*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
