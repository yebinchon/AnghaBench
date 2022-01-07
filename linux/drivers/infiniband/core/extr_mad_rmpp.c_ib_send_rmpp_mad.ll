; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad_rmpp.c_ib_send_rmpp_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad_rmpp.c_ib_send_rmpp_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wr_private = type { i32, i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ib_rmpp_mad* }
%struct.ib_rmpp_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@IB_RMPP_RESULT_UNHANDLED = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_TYPE_DATA = common dso_local global i64 0, align 8
@IB_RMPP_RESULT_INTERNAL = common dso_local global i32 0, align 4
@IB_RMPP_RESULT_CONSUMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_send_rmpp_mad(%struct.ib_mad_send_wr_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mad_send_wr_private*, align 8
  %4 = alloca %struct.ib_rmpp_mad*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wr_private** %3, align 8
  %6 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %7 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  store %struct.ib_rmpp_mad* %9, %struct.ib_rmpp_mad** %4, align 8
  %10 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %4, align 8
  %11 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %10, i32 0, i32 0
  %12 = call i32 @ib_get_rmpp_flags(%struct.TYPE_4__* %11)
  %13 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @IB_RMPP_RESULT_UNHANDLED, align 4
  store i32 %17, i32* %2, align 4
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %4, align 8
  %20 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IB_MGMT_RMPP_TYPE_DATA, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %27 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @IB_RMPP_RESULT_INTERNAL, align 4
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %18
  %30 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %31 = call i32 @init_newwin(%struct.ib_mad_send_wr_private* %30)
  %32 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %33 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %35 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %40 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %44 = call i32 @send_next_seg(%struct.ib_mad_send_wr_private* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %29
  %48 = load i32, i32* @IB_RMPP_RESULT_CONSUMED, align 4
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %29
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %47, %25, %16
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ib_get_rmpp_flags(%struct.TYPE_4__*) #1

declare dso_local i32 @init_newwin(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @send_next_seg(%struct.ib_mad_send_wr_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
