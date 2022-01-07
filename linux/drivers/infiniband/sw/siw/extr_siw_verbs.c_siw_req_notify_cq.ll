; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_req_notify_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_req_notify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.siw_cq = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"flags: 0x%02x\0A\00", align 1
@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@SIW_NOTIFY_SOLICITED = common dso_local global i32 0, align 4
@SIW_NOTIFY_ALL = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_req_notify_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.siw_cq*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %8 = call %struct.siw_cq* @to_siw_cq(%struct.ib_cq* %7)
  store %struct.siw_cq* %8, %struct.siw_cq** %6, align 8
  %9 = load %struct.siw_cq*, %struct.siw_cq** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @siw_dbg_cq(%struct.siw_cq* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.siw_cq*, %struct.siw_cq** %6, align 8
  %19 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SIW_NOTIFY_SOLICITED, align 4
  %24 = call i32 @smp_store_mb(i32 %22, i32 %23)
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.siw_cq*, %struct.siw_cq** %6, align 8
  %27 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SIW_NOTIFY_ALL, align 4
  %32 = call i32 @smp_store_mb(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %17
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.siw_cq*, %struct.siw_cq** %6, align 8
  %40 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.siw_cq*, %struct.siw_cq** %6, align 8
  %43 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %38
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.siw_cq* @to_siw_cq(%struct.ib_cq*) #1

declare dso_local i32 @siw_dbg_cq(%struct.siw_cq*, i8*, i32) #1

declare dso_local i32 @smp_store_mb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
