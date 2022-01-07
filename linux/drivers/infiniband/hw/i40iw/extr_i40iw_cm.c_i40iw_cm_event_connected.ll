; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_event_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_event_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_event = type { %struct.i40iw_cm_node* }
%struct.i40iw_cm_node = type { i64, i32, i32, i32, %struct.iw_cm_id* }
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, i32* }
%struct.i40iw_qp = type { i32*, %struct.TYPE_8__, i64, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i40iw_device = type { %struct.i40iw_cm_core, %struct.i40iw_sc_dev }
%struct.i40iw_cm_core = type { i32, i32 }
%struct.i40iw_sc_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32)* }
%struct.ib_qp_attr = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@SEND_RDMA_READ_ZERO = common dso_local global i64 0, align 8
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IW_CM_EVENT_CONNECT_REPLY = common dso_local global i32 0, align 4
@I40IW_DEBUG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"error sending cm event - CONNECT_REPLY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_event*)* @i40iw_cm_event_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_cm_event_connected(%struct.i40iw_cm_event* %0) #0 {
  %2 = alloca %struct.i40iw_cm_event*, align 8
  %3 = alloca %struct.i40iw_qp*, align 8
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca %struct.i40iw_cm_core*, align 8
  %6 = alloca %struct.i40iw_cm_node*, align 8
  %7 = alloca %struct.i40iw_sc_dev*, align 8
  %8 = alloca %struct.ib_qp_attr, align 4
  %9 = alloca %struct.iw_cm_id*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40iw_cm_event* %0, %struct.i40iw_cm_event** %2, align 8
  %13 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %14 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %13, i32 0, i32 0
  %15 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %14, align 8
  store %struct.i40iw_cm_node* %15, %struct.i40iw_cm_node** %6, align 8
  %16 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %17 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %16, i32 0, i32 4
  %18 = load %struct.iw_cm_id*, %struct.iw_cm_id** %17, align 8
  store %struct.iw_cm_id* %18, %struct.iw_cm_id** %9, align 8
  %19 = load %struct.iw_cm_id*, %struct.iw_cm_id** %9, align 8
  %20 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to %struct.i40iw_qp*
  store %struct.i40iw_qp* %22, %struct.i40iw_qp** %3, align 8
  %23 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %24 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.i40iw_device* @to_iwdev(i32 %26)
  store %struct.i40iw_device* %27, %struct.i40iw_device** %4, align 8
  %28 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %29 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %28, i32 0, i32 1
  store %struct.i40iw_sc_dev* %29, %struct.i40iw_sc_dev** %7, align 8
  %30 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %31 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %30, i32 0, i32 0
  store %struct.i40iw_cm_core* %31, %struct.i40iw_cm_core** %5, align 8
  %32 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %33 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %117

39:                                               ; preds = %1
  %40 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %41 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %42 = call i32 @i40iw_cm_init_tsa_conn(%struct.i40iw_qp* %40, %struct.i40iw_cm_node* %41)
  %43 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %44 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SEND_RDMA_READ_ZERO, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %50 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %39
  %54 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %55 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @kmap(i64 %56)
  %58 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %59 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  br label %62

62:                                               ; preds = %53, %39
  %63 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %64 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %66, align 8
  %68 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %69 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %68, i32 0, i32 3
  %70 = load i32, i32* %12, align 4
  %71 = call i32 %67(%struct.TYPE_7__* %69, i32 %70)
  %72 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %73 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %62
  %77 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %78 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @kunmap(i64 %79)
  br label %81

81:                                               ; preds = %76, %62
  %82 = call i32 @memset(%struct.ib_qp_attr* %8, i32 0, i32 4)
  %83 = load i32, i32* @IB_QPS_RTS, align 4
  %84 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %8, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %86 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %85, i32 0, i32 1
  store i32 0, i32* %86, align 8
  %87 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %88 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %87, i32 0, i32 1
  %89 = load i32, i32* @IB_QP_STATE, align 4
  %90 = call i32 @i40iw_modify_qp(%struct.TYPE_8__* %88, %struct.ib_qp_attr* %8, i32 %89, i32* null)
  %91 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %92 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %91, i32 0, i32 2
  store i32 1, i32* %92, align 4
  %93 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %5, align 8
  %94 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %93, i32 0, i32 0
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @spin_lock_irqsave(i32* %94, i64 %95)
  %97 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %98 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %97, i32 0, i32 3
  %99 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %5, align 8
  %100 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %99, i32 0, i32 1
  %101 = call i32 @list_move_tail(i32* %98, i32* %100)
  %102 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %5, align 8
  %103 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %102, i32 0, i32 0
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  %106 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %107 = load %struct.iw_cm_id*, %struct.iw_cm_id** %9, align 8
  %108 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %109 = call i32 @i40iw_send_cm_event(%struct.i40iw_cm_node* %106, %struct.iw_cm_id* %107, i32 %108, i32 0)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %81
  %113 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %114 = load i32, i32* @I40IW_DEBUG_CM, align 4
  %115 = call i32 @i40iw_debug(%struct.i40iw_sc_dev* %113, i32 %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %112, %81
  br label %138

117:                                              ; preds = %36
  %118 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %119 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  %120 = load %struct.iw_cm_id*, %struct.iw_cm_id** %9, align 8
  %121 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %120, i32 0, i32 1
  store i32* null, i32** %121, align 8
  %122 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %123 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %122, i32 0, i32 0
  %124 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %123, align 8
  %125 = load %struct.iw_cm_id*, %struct.iw_cm_id** %9, align 8
  %126 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @i40iw_send_cm_event(%struct.i40iw_cm_node* %124, %struct.iw_cm_id* %125, i32 %126, i32 %127)
  %129 = load %struct.iw_cm_id*, %struct.iw_cm_id** %9, align 8
  %130 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %129, i32 0, i32 0
  %131 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %130, align 8
  %132 = load %struct.iw_cm_id*, %struct.iw_cm_id** %9, align 8
  %133 = call i32 %131(%struct.iw_cm_id* %132)
  %134 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %135 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %134, i32 0, i32 0
  %136 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %135, align 8
  %137 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %136)
  br label %138

138:                                              ; preds = %117, %116
  ret void
}

declare dso_local %struct.i40iw_device* @to_iwdev(i32) #1

declare dso_local i32 @i40iw_cm_init_tsa_conn(%struct.i40iw_qp*, %struct.i40iw_cm_node*) #1

declare dso_local i32 @kmap(i64) #1

declare dso_local i32 @kunmap(i64) #1

declare dso_local i32 @memset(%struct.ib_qp_attr*, i32, i32) #1

declare dso_local i32 @i40iw_modify_qp(%struct.TYPE_8__*, %struct.ib_qp_attr*, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i40iw_send_cm_event(%struct.i40iw_cm_node*, %struct.iw_cm_id*, i32, i32) #1

declare dso_local i32 @i40iw_debug(%struct.i40iw_sc_dev*, i32, i8*) #1

declare dso_local i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
