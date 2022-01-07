; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_is_rmpp_data_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_is_rmpp_data_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_mad_hdr = type { i32 }
%struct.ib_rmpp_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_TYPE_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_agent_private*, %struct.ib_mad_hdr*)* @is_rmpp_data_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_rmpp_data_mad(%struct.ib_mad_agent_private* %0, %struct.ib_mad_hdr* %1) #0 {
  %3 = alloca %struct.ib_mad_agent_private*, align 8
  %4 = alloca %struct.ib_mad_hdr*, align 8
  %5 = alloca %struct.ib_rmpp_mad*, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %3, align 8
  store %struct.ib_mad_hdr* %1, %struct.ib_mad_hdr** %4, align 8
  %6 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %7 = bitcast %struct.ib_mad_hdr* %6 to %struct.ib_rmpp_mad*
  store %struct.ib_rmpp_mad* %7, %struct.ib_rmpp_mad** %5, align 8
  %8 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %9 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %15 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %14, i32 0, i32 0
  %16 = call i32 @ib_mad_kernel_rmpp_agent(%struct.TYPE_3__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %5, align 8
  %20 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %19, i32 0, i32 0
  %21 = call i32 @ib_get_rmpp_flags(%struct.TYPE_4__* %20)
  %22 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %5, align 8
  %27 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_MGMT_RMPP_TYPE_DATA, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %25, %18, %13, %2
  %33 = phi i1 [ true, %18 ], [ true, %13 ], [ true, %2 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @ib_mad_kernel_rmpp_agent(%struct.TYPE_3__*) #1

declare dso_local i32 @ib_get_rmpp_flags(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
