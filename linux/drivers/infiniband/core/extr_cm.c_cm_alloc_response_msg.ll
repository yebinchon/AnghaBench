; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_alloc_response_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_alloc_response_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_port = type { i32 }
%struct.ib_mad_recv_wc = type { i32 }
%struct.ib_mad_send_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_port*, %struct.ib_mad_recv_wc*, %struct.ib_mad_send_buf**)* @cm_alloc_response_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_alloc_response_msg(%struct.cm_port* %0, %struct.ib_mad_recv_wc* %1, %struct.ib_mad_send_buf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm_port*, align 8
  %6 = alloca %struct.ib_mad_recv_wc*, align 8
  %7 = alloca %struct.ib_mad_send_buf**, align 8
  %8 = alloca %struct.ib_mad_send_buf*, align 8
  %9 = alloca i32, align 4
  store %struct.cm_port* %0, %struct.cm_port** %5, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %6, align 8
  store %struct.ib_mad_send_buf** %2, %struct.ib_mad_send_buf*** %7, align 8
  %10 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %11 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %12 = call %struct.ib_mad_send_buf* @cm_alloc_response_msg_no_ah(%struct.cm_port* %10, %struct.ib_mad_recv_wc* %11)
  store %struct.ib_mad_send_buf* %12, %struct.ib_mad_send_buf** %8, align 8
  %13 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %14 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.ib_mad_send_buf* %17)
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %21 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %22 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %23 = call i32 @cm_create_response_msg_ah(%struct.cm_port* %20, %struct.ib_mad_recv_wc* %21, %struct.ib_mad_send_buf* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %28 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %27)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %19
  %31 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %8, align 8
  %32 = load %struct.ib_mad_send_buf**, %struct.ib_mad_send_buf*** %7, align 8
  store %struct.ib_mad_send_buf* %31, %struct.ib_mad_send_buf** %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %26, %16
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.ib_mad_send_buf* @cm_alloc_response_msg_no_ah(%struct.cm_port*, %struct.ib_mad_recv_wc*) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @cm_create_response_msg_ah(%struct.cm_port*, %struct.ib_mad_recv_wc*, %struct.ib_mad_send_buf*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
