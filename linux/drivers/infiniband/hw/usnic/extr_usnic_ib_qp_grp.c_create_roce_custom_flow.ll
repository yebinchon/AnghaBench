; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_create_roce_custom_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_create_roce_custom_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_qp_grp_flow = type { i32, %struct.usnic_ib_qp_grp*, %struct.TYPE_4__, %struct.usnic_fwd_flow* }
%struct.TYPE_4__ = type { i64 }
%struct.usnic_fwd_flow = type { i32 }
%struct.usnic_ib_qp_grp = type { i32 }
%struct.usnic_transport_spec = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.filter = type { i32 }
%struct.usnic_filter_action = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usnic_ib_qp_grp_flow* (%struct.usnic_ib_qp_grp*, %struct.usnic_transport_spec*)* @create_roce_custom_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usnic_ib_qp_grp_flow* @create_roce_custom_flow(%struct.usnic_ib_qp_grp* %0, %struct.usnic_transport_spec* %1) #0 {
  %3 = alloca %struct.usnic_ib_qp_grp_flow*, align 8
  %4 = alloca %struct.usnic_ib_qp_grp*, align 8
  %5 = alloca %struct.usnic_transport_spec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.filter, align 4
  %9 = alloca %struct.usnic_filter_action, align 4
  %10 = alloca %struct.usnic_ib_qp_grp_flow*, align 8
  %11 = alloca %struct.usnic_fwd_flow*, align 8
  %12 = alloca i32, align 4
  store %struct.usnic_ib_qp_grp* %0, %struct.usnic_ib_qp_grp** %4, align 8
  store %struct.usnic_transport_spec* %1, %struct.usnic_transport_spec** %5, align 8
  %13 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %5, align 8
  %14 = getelementptr inbounds %struct.usnic_transport_spec, %struct.usnic_transport_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %5, align 8
  %17 = getelementptr inbounds %struct.usnic_transport_spec, %struct.usnic_transport_spec* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @usnic_transport_rsrv_port(i32 %20, i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.usnic_ib_qp_grp_flow* @ERR_PTR(i32 %27)
  store %struct.usnic_ib_qp_grp_flow* %28, %struct.usnic_ib_qp_grp_flow** %3, align 8
  br label %88

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @usnic_fwd_init_usnic_filter(%struct.filter* %8, i64 %30)
  %32 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %33 = call i32 @init_filter_action(%struct.usnic_ib_qp_grp* %32, %struct.usnic_filter_action* %9)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %82

37:                                               ; preds = %29
  %38 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %39 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.usnic_fwd_flow* @usnic_fwd_alloc_flow(i32 %40, %struct.filter* %8, %struct.usnic_filter_action* %9)
  store %struct.usnic_fwd_flow* %41, %struct.usnic_fwd_flow** %11, align 8
  %42 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %11, align 8
  %43 = call i64 @IS_ERR_OR_NULL(%struct.usnic_fwd_flow* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %11, align 8
  %47 = icmp ne %struct.usnic_fwd_flow* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %11, align 8
  %50 = call i32 @PTR_ERR(%struct.usnic_fwd_flow* %49)
  br label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ %50, %48 ], [ %53, %51 ]
  store i32 %55, i32* %7, align 4
  br label %82

56:                                               ; preds = %37
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call %struct.usnic_ib_qp_grp_flow* @kzalloc(i32 32, i32 %57)
  store %struct.usnic_ib_qp_grp_flow* %58, %struct.usnic_ib_qp_grp_flow** %10, align 8
  %59 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %10, align 8
  %60 = icmp ne %struct.usnic_ib_qp_grp_flow* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %79

64:                                               ; preds = %56
  %65 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %11, align 8
  %66 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %10, align 8
  %67 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %66, i32 0, i32 3
  store %struct.usnic_fwd_flow* %65, %struct.usnic_fwd_flow** %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %10, align 8
  %70 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %10, align 8
  %73 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  %75 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %76 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %10, align 8
  %77 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %76, i32 0, i32 1
  store %struct.usnic_ib_qp_grp* %75, %struct.usnic_ib_qp_grp** %77, align 8
  %78 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %10, align 8
  store %struct.usnic_ib_qp_grp_flow* %78, %struct.usnic_ib_qp_grp_flow** %3, align 8
  br label %88

79:                                               ; preds = %61
  %80 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %11, align 8
  %81 = call i32 @usnic_fwd_dealloc_flow(%struct.usnic_fwd_flow* %80)
  br label %82

82:                                               ; preds = %79, %54, %36
  %83 = load i32, i32* %12, align 4
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @usnic_transport_unrsrv_port(i32 %83, i64 %84)
  %86 = load i32, i32* %7, align 4
  %87 = call %struct.usnic_ib_qp_grp_flow* @ERR_PTR(i32 %86)
  store %struct.usnic_ib_qp_grp_flow* %87, %struct.usnic_ib_qp_grp_flow** %3, align 8
  br label %88

88:                                               ; preds = %82, %64, %25
  %89 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %3, align 8
  ret %struct.usnic_ib_qp_grp_flow* %89
}

declare dso_local i64 @usnic_transport_rsrv_port(i32, i64) #1

declare dso_local %struct.usnic_ib_qp_grp_flow* @ERR_PTR(i32) #1

declare dso_local i32 @usnic_fwd_init_usnic_filter(%struct.filter*, i64) #1

declare dso_local i32 @init_filter_action(%struct.usnic_ib_qp_grp*, %struct.usnic_filter_action*) #1

declare dso_local %struct.usnic_fwd_flow* @usnic_fwd_alloc_flow(i32, %struct.filter*, %struct.usnic_filter_action*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.usnic_fwd_flow*) #1

declare dso_local i32 @PTR_ERR(%struct.usnic_fwd_flow*) #1

declare dso_local %struct.usnic_ib_qp_grp_flow* @kzalloc(i32, i32) #1

declare dso_local i32 @usnic_fwd_dealloc_flow(%struct.usnic_fwd_flow*) #1

declare dso_local i32 @usnic_transport_unrsrv_port(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
