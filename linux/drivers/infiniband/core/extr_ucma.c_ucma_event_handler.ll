; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64, i32, %struct.ucma_context* }
%struct.ucma_context = type { %struct.TYPE_8__*, %struct.rdma_cm_id*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.rdma_cm_event = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ucma_event = type { i32, %struct.TYPE_6__, %struct.rdma_cm_id* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_CONNECT_REQUEST = common dso_local global i64 0, align 8
@IB_QPT_UD = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_DEVICE_REMOVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @ucma_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_event_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.rdma_cm_event*, align 8
  %6 = alloca %struct.ucma_event*, align 8
  %7 = alloca %struct.ucma_context*, align 8
  %8 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %5, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 2
  %11 = load %struct.ucma_context*, %struct.ucma_context** %10, align 8
  store %struct.ucma_context* %11, %struct.ucma_context** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ucma_event* @kzalloc(i32 40, i32 %12)
  store %struct.ucma_event* %13, %struct.ucma_event** %6, align 8
  %14 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %15 = icmp ne %struct.ucma_event* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %18 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RDMA_CM_EVENT_CONNECT_REQUEST, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %148

23:                                               ; preds = %2
  %24 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %25 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %30 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %31 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %30, i32 0, i32 2
  store %struct.rdma_cm_id* %29, %struct.rdma_cm_id** %31, align 8
  %32 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %33 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %34 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %35 = call i32 @ucma_set_event_context(%struct.ucma_context* %32, %struct.rdma_cm_event* %33, %struct.ucma_event* %34)
  %36 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %37 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %40 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %43 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %46 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %49 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IB_QPT_UD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %23
  %54 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %55 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %58 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %62 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = call i32 @ucma_copy_ud_event(i32 %56, i32* %60, i32* %63)
  br label %74

65:                                               ; preds = %23
  %66 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %67 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %71 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @ucma_copy_conn_event(i32* %69, i32* %72)
  br label %74

74:                                               ; preds = %65, %53
  %75 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %76 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @RDMA_CM_EVENT_CONNECT_REQUEST, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %82 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  %88 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %89 = call i32 @kfree(%struct.ucma_event* %88)
  br label %141

90:                                               ; preds = %80
  %91 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %92 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  br label %119

95:                                               ; preds = %74
  %96 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %97 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %102 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %101, i32 0, i32 1
  %103 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %102, align 8
  %104 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %105 = icmp ne %struct.rdma_cm_id* %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %100, %95
  %107 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %108 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @RDMA_CM_EVENT_DEVICE_REMOVAL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %114 = call i32 @ucma_removal_event_handler(%struct.rdma_cm_id* %113)
  br label %115

115:                                              ; preds = %112, %106
  %116 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %117 = call i32 @kfree(%struct.ucma_event* %116)
  br label %141

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %90
  %120 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %121 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %120, i32 0, i32 0
  %122 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %123 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = call i32 @list_add_tail(i32* %121, i32* %125)
  %127 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %128 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = call i32 @wake_up_interruptible(i32* %130)
  %132 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %133 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @RDMA_CM_EVENT_DEVICE_REMOVAL, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %119
  %138 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %139 = call i32 @ucma_removal_event_handler(%struct.rdma_cm_id* %138)
  br label %140

140:                                              ; preds = %137, %119
  br label %141

141:                                              ; preds = %140, %115, %85
  %142 = load %struct.ucma_context*, %struct.ucma_context** %7, align 8
  %143 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %141, %16
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.ucma_event* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ucma_set_event_context(%struct.ucma_context*, %struct.rdma_cm_event*, %struct.ucma_event*) #1

declare dso_local i32 @ucma_copy_ud_event(i32, i32*, i32*) #1

declare dso_local i32 @ucma_copy_conn_event(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ucma_event*) #1

declare dso_local i32 @ucma_removal_event_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
