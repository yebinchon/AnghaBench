; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_qp_grp_id_from_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_qp_grp_id_from_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_qp_grp_flow = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unsupported transport %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usnic_ib_qp_grp_flow*, i32*)* @qp_grp_id_from_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_grp_id_from_flow(%struct.usnic_ib_qp_grp_flow* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usnic_ib_qp_grp_flow*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usnic_ib_qp_grp_flow* %0, %struct.usnic_ib_qp_grp_flow** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %4, align 8
  %10 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %32 [
    i32 128, label %13
    i32 129, label %19
  ]

13:                                               ; preds = %2
  %14 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %4, align 8
  %15 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %4, align 8
  %21 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usnic_transport_sock_get_addr(i32 %23, i32* null, i32* null, i32* %8)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @usnic_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %29, %13
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @usnic_transport_sock_get_addr(i32, i32*, i32*, i32*) #1

declare dso_local i32 @usnic_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
