; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_iowait.c_iowait_set_work_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_iowait.c_iowait_set_work_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iowait_work = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iowait_work* }

@IOWAIT_IB_SE = common dso_local global i64 0, align 8
@IOWAIT_PENDING_IB = common dso_local global i32 0, align 4
@IOWAIT_PENDING_TID = common dso_local global i32 0, align 4
@IOWAIT_TID_SE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iowait_set_work_flag(%struct.iowait_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iowait_work*, align 8
  store %struct.iowait_work* %0, %struct.iowait_work** %3, align 8
  %4 = load %struct.iowait_work*, %struct.iowait_work** %3, align 8
  %5 = load %struct.iowait_work*, %struct.iowait_work** %3, align 8
  %6 = getelementptr inbounds %struct.iowait_work, %struct.iowait_work* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.iowait_work*, %struct.iowait_work** %8, align 8
  %10 = load i64, i64* @IOWAIT_IB_SE, align 8
  %11 = getelementptr inbounds %struct.iowait_work, %struct.iowait_work* %9, i64 %10
  %12 = icmp eq %struct.iowait_work* %4, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.iowait_work*, %struct.iowait_work** %3, align 8
  %15 = getelementptr inbounds %struct.iowait_work, %struct.iowait_work* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* @IOWAIT_PENDING_IB, align 4
  %18 = call i32 @iowait_set_flag(%struct.TYPE_2__* %16, i32 %17)
  %19 = load i64, i64* @IOWAIT_IB_SE, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.iowait_work*, %struct.iowait_work** %3, align 8
  %23 = getelementptr inbounds %struct.iowait_work, %struct.iowait_work* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* @IOWAIT_PENDING_TID, align 4
  %26 = call i32 @iowait_set_flag(%struct.TYPE_2__* %24, i32 %25)
  %27 = load i32, i32* @IOWAIT_TID_SE, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @iowait_set_flag(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
