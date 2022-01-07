; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_send_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_send_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { i32, %struct.mcast_member*, %struct.mcast_port* }
%struct.mcast_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mcast_member = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@sa_client = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_SET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@join_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcast_group*, %struct.mcast_member*)* @send_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_join(%struct.mcast_group* %0, %struct.mcast_member* %1) #0 {
  %3 = alloca %struct.mcast_group*, align 8
  %4 = alloca %struct.mcast_member*, align 8
  %5 = alloca %struct.mcast_port*, align 8
  %6 = alloca i32, align 4
  store %struct.mcast_group* %0, %struct.mcast_group** %3, align 8
  store %struct.mcast_member* %1, %struct.mcast_member** %4, align 8
  %7 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %8 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %7, i32 0, i32 2
  %9 = load %struct.mcast_port*, %struct.mcast_port** %8, align 8
  store %struct.mcast_port* %9, %struct.mcast_port** %5, align 8
  %10 = load %struct.mcast_member*, %struct.mcast_member** %4, align 8
  %11 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %12 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %11, i32 0, i32 1
  store %struct.mcast_member* %10, %struct.mcast_member** %12, align 8
  %13 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %14 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %19 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IB_MGMT_METHOD_SET, align 4
  %22 = load %struct.mcast_member*, %struct.mcast_member** %4, align 8
  %23 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.mcast_member*, %struct.mcast_member** %4, align 8
  %26 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load i32, i32* @join_handler, align 4
  %31 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %32 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %33 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %32, i32 0, i32 0
  %34 = call i32 @ib_sa_mcmember_rec_query(i32* @sa_client, i32 %17, i32 %20, i32 %21, i32* %24, i32 %28, i32 3000, i32 %29, i32 %30, %struct.mcast_group* %31, i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 0, %37 ], [ %39, %38 ]
  ret i32 %41
}

declare dso_local i32 @ib_sa_mcmember_rec_query(i32*, i32, i32, i32, i32*, i32, i32, i32, i32, %struct.mcast_group*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
