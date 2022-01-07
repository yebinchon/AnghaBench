; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_issue_drep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_issue_drep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_port = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ib_mad_send_buf = type { i64 }
%struct.cm_dreq_msg = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cm_drep_msg = type { i32, i32, i32 }

@CM_DREP_ATTR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_port*, %struct.ib_mad_recv_wc*)* @cm_issue_drep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_issue_drep(%struct.cm_port* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cm_port*, align 8
  %5 = alloca %struct.ib_mad_recv_wc*, align 8
  %6 = alloca %struct.ib_mad_send_buf*, align 8
  %7 = alloca %struct.cm_dreq_msg*, align 8
  %8 = alloca %struct.cm_drep_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.cm_port* %0, %struct.cm_port** %4, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %5, align 8
  store %struct.ib_mad_send_buf* null, %struct.ib_mad_send_buf** %6, align 8
  %10 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %11 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %12 = call i32 @cm_alloc_response_msg(%struct.cm_port* %10, %struct.ib_mad_recv_wc* %11, %struct.ib_mad_send_buf** %6)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %19 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.cm_dreq_msg*
  store %struct.cm_dreq_msg* %22, %struct.cm_dreq_msg** %7, align 8
  %23 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %6, align 8
  %24 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.cm_drep_msg*
  store %struct.cm_drep_msg* %26, %struct.cm_drep_msg** %8, align 8
  %27 = load %struct.cm_drep_msg*, %struct.cm_drep_msg** %8, align 8
  %28 = getelementptr inbounds %struct.cm_drep_msg, %struct.cm_drep_msg* %27, i32 0, i32 2
  %29 = load i32, i32* @CM_DREP_ATTR_ID, align 4
  %30 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %7, align 8
  %31 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cm_format_mad_hdr(i32* %28, i32 %29, i32 %33)
  %35 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %7, align 8
  %36 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cm_drep_msg*, %struct.cm_drep_msg** %8, align 8
  %39 = getelementptr inbounds %struct.cm_drep_msg, %struct.cm_drep_msg* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %7, align 8
  %41 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cm_drep_msg*, %struct.cm_drep_msg** %8, align 8
  %44 = getelementptr inbounds %struct.cm_drep_msg, %struct.cm_drep_msg* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %6, align 8
  %46 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %45, i32* null)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %17
  %50 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %6, align 8
  %51 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %50)
  br label %52

52:                                               ; preds = %49, %17
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @cm_alloc_response_msg(%struct.cm_port*, %struct.ib_mad_recv_wc*, %struct.ib_mad_send_buf**) #1

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
