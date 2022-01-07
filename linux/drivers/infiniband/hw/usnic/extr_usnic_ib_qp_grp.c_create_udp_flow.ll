; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_create_udp_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_create_udp_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_qp_grp_flow = type { i32, %struct.usnic_ib_qp_grp*, %struct.TYPE_4__, %struct.usnic_fwd_flow* }
%struct.TYPE_4__ = type { %struct.usnic_fwd_flow* }
%struct.usnic_fwd_flow = type { i32 }
%struct.usnic_ib_qp_grp = type { i32 }
%struct.usnic_transport_spec = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.socket = type opaque
%struct.filter = type { i32 }
%struct.usnic_filter_action = type { i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Protocol for fd %d is not UDP\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usnic_ib_qp_grp_flow* (%struct.usnic_ib_qp_grp*, %struct.usnic_transport_spec*)* @create_udp_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usnic_ib_qp_grp_flow* @create_udp_flow(%struct.usnic_ib_qp_grp* %0, %struct.usnic_transport_spec* %1) #0 {
  %3 = alloca %struct.usnic_ib_qp_grp_flow*, align 8
  %4 = alloca %struct.usnic_ib_qp_grp*, align 8
  %5 = alloca %struct.usnic_transport_spec*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.filter, align 4
  %10 = alloca %struct.usnic_filter_action, align 4
  %11 = alloca %struct.usnic_ib_qp_grp_flow*, align 8
  %12 = alloca %struct.usnic_fwd_flow*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usnic_ib_qp_grp* %0, %struct.usnic_ib_qp_grp** %4, align 8
  store %struct.usnic_transport_spec* %1, %struct.usnic_transport_spec** %5, align 8
  %17 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %5, align 8
  %18 = getelementptr inbounds %struct.usnic_transport_spec, %struct.usnic_transport_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %5, align 8
  %21 = getelementptr inbounds %struct.usnic_transport_spec, %struct.usnic_transport_spec* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.usnic_fwd_flow* @usnic_transport_get_socket(i32 %24)
  %26 = bitcast %struct.usnic_fwd_flow* %25 to %struct.socket*
  store %struct.socket* %26, %struct.socket** %6, align 8
  %27 = load %struct.socket*, %struct.socket** %6, align 8
  %28 = bitcast %struct.socket* %27 to %struct.usnic_fwd_flow*
  %29 = call i64 @IS_ERR_OR_NULL(%struct.usnic_fwd_flow* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.socket*, %struct.socket** %6, align 8
  %33 = bitcast %struct.socket* %32 to %struct.usnic_fwd_flow*
  %34 = call %struct.usnic_ib_qp_grp_flow* @ERR_CAST(%struct.usnic_fwd_flow* %33)
  store %struct.usnic_ib_qp_grp_flow* %34, %struct.usnic_ib_qp_grp_flow** %3, align 8
  br label %112

35:                                               ; preds = %2
  %36 = load %struct.socket*, %struct.socket** %6, align 8
  %37 = bitcast %struct.socket* %36 to %struct.usnic_fwd_flow*
  %38 = call i32 @usnic_transport_sock_get_addr(%struct.usnic_fwd_flow* %37, i32* %16, i32* %14, i32* %15)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %106

42:                                               ; preds = %35
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @IPPROTO_UDP, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @usnic_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %106

51:                                               ; preds = %42
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @usnic_fwd_init_udp_filter(%struct.filter* %9, i32 %52, i32 %53)
  %55 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %56 = call i32 @init_filter_action(%struct.usnic_ib_qp_grp* %55, %struct.usnic_filter_action* %10)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %106

60:                                               ; preds = %51
  %61 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %62 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.usnic_fwd_flow* @usnic_fwd_alloc_flow(i32 %63, %struct.filter* %9, %struct.usnic_filter_action* %10)
  store %struct.usnic_fwd_flow* %64, %struct.usnic_fwd_flow** %12, align 8
  %65 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %12, align 8
  %66 = call i64 @IS_ERR_OR_NULL(%struct.usnic_fwd_flow* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %12, align 8
  %70 = icmp ne %struct.usnic_fwd_flow* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %12, align 8
  %73 = call i32 @PTR_ERR(%struct.usnic_fwd_flow* %72)
  br label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EFAULT, align 4
  %76 = sub nsw i32 0, %75
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i32 [ %73, %71 ], [ %76, %74 ]
  store i32 %78, i32* %8, align 4
  br label %106

79:                                               ; preds = %60
  %80 = load i32, i32* @GFP_ATOMIC, align 4
  %81 = call %struct.usnic_ib_qp_grp_flow* @kzalloc(i32 32, i32 %80)
  store %struct.usnic_ib_qp_grp_flow* %81, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %82 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %83 = icmp ne %struct.usnic_ib_qp_grp_flow* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %103

87:                                               ; preds = %79
  %88 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %12, align 8
  %89 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %90 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %89, i32 0, i32 3
  store %struct.usnic_fwd_flow* %88, %struct.usnic_fwd_flow** %90, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %93 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.socket*, %struct.socket** %6, align 8
  %95 = bitcast %struct.socket* %94 to %struct.usnic_fwd_flow*
  %96 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %97 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store %struct.usnic_fwd_flow* %95, %struct.usnic_fwd_flow** %98, align 8
  %99 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %100 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %101 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %100, i32 0, i32 1
  store %struct.usnic_ib_qp_grp* %99, %struct.usnic_ib_qp_grp** %101, align 8
  %102 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  store %struct.usnic_ib_qp_grp_flow* %102, %struct.usnic_ib_qp_grp_flow** %3, align 8
  br label %112

103:                                              ; preds = %84
  %104 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %12, align 8
  %105 = call i32 @usnic_fwd_dealloc_flow(%struct.usnic_fwd_flow* %104)
  br label %106

106:                                              ; preds = %103, %77, %59, %46, %41
  %107 = load %struct.socket*, %struct.socket** %6, align 8
  %108 = bitcast %struct.socket* %107 to %struct.usnic_fwd_flow*
  %109 = call i32 @usnic_transport_put_socket(%struct.usnic_fwd_flow* %108)
  %110 = load i32, i32* %8, align 4
  %111 = call %struct.usnic_ib_qp_grp_flow* @ERR_PTR(i32 %110)
  store %struct.usnic_ib_qp_grp_flow* %111, %struct.usnic_ib_qp_grp_flow** %3, align 8
  br label %112

112:                                              ; preds = %106, %87, %31
  %113 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %3, align 8
  ret %struct.usnic_ib_qp_grp_flow* %113
}

declare dso_local %struct.usnic_fwd_flow* @usnic_transport_get_socket(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.usnic_fwd_flow*) #1

declare dso_local %struct.usnic_ib_qp_grp_flow* @ERR_CAST(%struct.usnic_fwd_flow*) #1

declare dso_local i32 @usnic_transport_sock_get_addr(%struct.usnic_fwd_flow*, i32*, i32*, i32*) #1

declare dso_local i32 @usnic_err(i8*, i32) #1

declare dso_local i32 @usnic_fwd_init_udp_filter(%struct.filter*, i32, i32) #1

declare dso_local i32 @init_filter_action(%struct.usnic_ib_qp_grp*, %struct.usnic_filter_action*) #1

declare dso_local %struct.usnic_fwd_flow* @usnic_fwd_alloc_flow(i32, %struct.filter*, %struct.usnic_filter_action*) #1

declare dso_local i32 @PTR_ERR(%struct.usnic_fwd_flow*) #1

declare dso_local %struct.usnic_ib_qp_grp_flow* @kzalloc(i32, i32) #1

declare dso_local i32 @usnic_fwd_dealloc_flow(%struct.usnic_fwd_flow*) #1

declare dso_local i32 @usnic_transport_put_socket(%struct.usnic_fwd_flow*) #1

declare dso_local %struct.usnic_ib_qp_grp_flow* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
