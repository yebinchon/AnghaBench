; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_create_and_add_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_create_and_add_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_qp_grp_flow = type { i32 }
%struct.usnic_ib_qp_grp = type { i32 }
%struct.usnic_transport_spec = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unsupported transport %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usnic_ib_qp_grp_flow* (%struct.usnic_ib_qp_grp*, %struct.usnic_transport_spec*)* @create_and_add_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usnic_ib_qp_grp_flow* @create_and_add_flow(%struct.usnic_ib_qp_grp* %0, %struct.usnic_transport_spec* %1) #0 {
  %3 = alloca %struct.usnic_ib_qp_grp_flow*, align 8
  %4 = alloca %struct.usnic_ib_qp_grp*, align 8
  %5 = alloca %struct.usnic_transport_spec*, align 8
  %6 = alloca %struct.usnic_ib_qp_grp_flow*, align 8
  %7 = alloca i32, align 4
  store %struct.usnic_ib_qp_grp* %0, %struct.usnic_ib_qp_grp** %4, align 8
  store %struct.usnic_transport_spec* %1, %struct.usnic_transport_spec** %5, align 8
  %8 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %5, align 8
  %9 = getelementptr inbounds %struct.usnic_transport_spec, %struct.usnic_transport_spec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %20 [
    i32 128, label %12
    i32 129, label %16
  ]

12:                                               ; preds = %2
  %13 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %14 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %5, align 8
  %15 = call %struct.usnic_ib_qp_grp_flow* @create_roce_custom_flow(%struct.usnic_ib_qp_grp* %13, %struct.usnic_transport_spec* %14)
  store %struct.usnic_ib_qp_grp_flow* %15, %struct.usnic_ib_qp_grp_flow** %6, align 8
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %18 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %5, align 8
  %19 = call %struct.usnic_ib_qp_grp_flow* @create_udp_flow(%struct.usnic_ib_qp_grp* %17, %struct.usnic_transport_spec* %18)
  store %struct.usnic_ib_qp_grp_flow* %19, %struct.usnic_ib_qp_grp_flow** %6, align 8
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %5, align 8
  %22 = getelementptr inbounds %struct.usnic_transport_spec, %struct.usnic_transport_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usnic_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.usnic_ib_qp_grp_flow* @ERR_PTR(i32 %26)
  store %struct.usnic_ib_qp_grp_flow* %27, %struct.usnic_ib_qp_grp_flow** %3, align 8
  br label %42

28:                                               ; preds = %16, %12
  %29 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %6, align 8
  %30 = call i32 @IS_ERR_OR_NULL(%struct.usnic_ib_qp_grp_flow* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %6, align 8
  %34 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %33, i32 0, i32 0
  %35 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %36 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  %38 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %6, align 8
  %39 = call i32 @usnic_debugfs_flow_add(%struct.usnic_ib_qp_grp_flow* %38)
  br label %40

40:                                               ; preds = %32, %28
  %41 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %6, align 8
  store %struct.usnic_ib_qp_grp_flow* %41, %struct.usnic_ib_qp_grp_flow** %3, align 8
  br label %42

42:                                               ; preds = %40, %20
  %43 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %3, align 8
  ret %struct.usnic_ib_qp_grp_flow* %43
}

declare dso_local %struct.usnic_ib_qp_grp_flow* @create_roce_custom_flow(%struct.usnic_ib_qp_grp*, %struct.usnic_transport_spec*) #1

declare dso_local %struct.usnic_ib_qp_grp_flow* @create_udp_flow(%struct.usnic_ib_qp_grp*, %struct.usnic_transport_spec*) #1

declare dso_local i32 @usnic_err(i8*, i32) #1

declare dso_local %struct.usnic_ib_qp_grp_flow* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.usnic_ib_qp_grp_flow*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usnic_debugfs_flow_add(%struct.usnic_ib_qp_grp_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
