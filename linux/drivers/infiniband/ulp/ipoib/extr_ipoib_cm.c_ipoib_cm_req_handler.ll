; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_req_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_req_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.net_device* }
%struct.net_device = type { i64, i32, i32, i8*, %struct.ib_cm_id*, %struct.net_device* }
%struct.ib_cm_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipoib_dev_priv = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ipoib_cm_rx = type { i64, i32, i32, i8*, %struct.ib_cm_id*, %struct.ipoib_cm_rx* }

@.str = private unnamed_addr constant [13 x i8] c"REQ arrived\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPOIB_CM_RX_LIVE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@IPOIB_CM_RX_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to send REP: %d\0A\00", align 1
@ipoib_cm_err_attr = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to move qp to error state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_id*, %struct.ib_cm_event*)* @ipoib_cm_req_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_cm_req_handler(%struct.ib_cm_id* %0, %struct.ib_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_event*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca %struct.ipoib_cm_rx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %5, align 8
  %11 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %12 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %14)
  store %struct.ipoib_dev_priv* %15, %struct.ipoib_dev_priv** %7, align 8
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %17 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.net_device* @kzalloc(i32 40, i32 %18)
  %20 = bitcast %struct.net_device* %19 to %struct.ipoib_cm_rx*
  store %struct.ipoib_cm_rx* %20, %struct.ipoib_cm_rx** %8, align 8
  %21 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %22 = icmp ne %struct.ipoib_cm_rx* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %158

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = bitcast %struct.net_device* %27 to %struct.ipoib_cm_rx*
  %29 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %30 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %29, i32 0, i32 5
  store %struct.ipoib_cm_rx* %28, %struct.ipoib_cm_rx** %30, align 8
  %31 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %32 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %33 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %32, i32 0, i32 4
  store %struct.ib_cm_id* %31, %struct.ib_cm_id** %33, align 8
  %34 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %35 = bitcast %struct.ipoib_cm_rx* %34 to %struct.net_device*
  %36 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %37 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %36, i32 0, i32 0
  store %struct.net_device* %35, %struct.net_device** %37, align 8
  %38 = load i64, i64* @IPOIB_CM_RX_LIVE, align 8
  %39 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %40 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i8*, i8** @jiffies, align 8
  %42 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %43 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %45 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %44, i32 0, i32 2
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %49 = bitcast %struct.ipoib_cm_rx* %48 to %struct.net_device*
  %50 = call i32 @ipoib_cm_create_rx_qp(%struct.net_device* %47, %struct.net_device* %49)
  %51 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %52 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %54 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %26
  %59 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %60 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %10, align 4
  br label %153

63:                                               ; preds = %26
  %64 = call i32 (...) @prandom_u32()
  %65 = and i32 %64, 16777215
  store i32 %65, i32* %9, align 4
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %68 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %69 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ipoib_cm_modify_rx_qp(%struct.net_device* %66, %struct.ib_cm_id* %67, i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %148

76:                                               ; preds = %63
  %77 = load %struct.net_device*, %struct.net_device** %6, align 8
  %78 = call i32 @ipoib_cm_has_srq(%struct.net_device* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %83 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %84 = bitcast %struct.ipoib_cm_rx* %83 to %struct.net_device*
  %85 = call i32 @ipoib_cm_nonsrq_init_rx(%struct.net_device* %81, %struct.ib_cm_id* %82, %struct.net_device* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %148

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %76
  %91 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %92 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %91, i32 0, i32 0
  %93 = call i32 @spin_lock_irq(i32* %92)
  %94 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %95 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %98 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* @IPOIB_CM_RX_DELAY, align 4
  %101 = call i32 @queue_delayed_work(i32 %96, i32* %99, i32 %100)
  %102 = load i8*, i8** @jiffies, align 8
  %103 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %104 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %106 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @IPOIB_CM_RX_LIVE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %90
  %111 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %112 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %111, i32 0, i32 2
  %113 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %114 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = call i32 @list_move(i32* %112, i32* %115)
  br label %117

117:                                              ; preds = %110, %90
  %118 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %119 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %118, i32 0, i32 0
  %120 = call i32 @spin_unlock_irq(i32* %119)
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %123 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %124 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %127 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @ipoib_cm_send_rep(%struct.net_device* %121, %struct.ib_cm_id* %122, i32 %125, i32* %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %117
  %134 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %138 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @IB_QP_STATE, align 4
  %141 = call i64 @ib_modify_qp(i32 %139, i32* @ipoib_cm_err_attr, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %133
  %144 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %145 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %133
  br label %147

147:                                              ; preds = %146, %117
  store i32 0, i32* %3, align 4
  br label %158

148:                                              ; preds = %88, %75
  %149 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %150 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @ib_destroy_qp(i32 %151)
  br label %153

153:                                              ; preds = %148, %58
  %154 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %8, align 8
  %155 = bitcast %struct.ipoib_cm_rx* %154 to %struct.net_device*
  %156 = call i32 @kfree(%struct.net_device* %155)
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %153, %147, %23
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local %struct.net_device* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ipoib_cm_create_rx_qp(%struct.net_device*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @ipoib_cm_modify_rx_qp(%struct.net_device*, %struct.ib_cm_id*, i32, i32) #1

declare dso_local i32 @ipoib_cm_has_srq(%struct.net_device*) #1

declare dso_local i32 @ipoib_cm_nonsrq_init_rx(%struct.net_device*, %struct.ib_cm_id*, %struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ipoib_cm_send_rep(%struct.net_device*, %struct.ib_cm_id*, i32, i32*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i64 @ib_modify_qp(i32, i32*, i32) #1

declare dso_local i32 @ib_destroy_qp(i32) #1

declare dso_local i32 @kfree(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
