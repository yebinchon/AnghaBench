; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_rtr_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_rtr_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.siw_cep = type { i32 }
%struct.siw_qp = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.siw_qp* }

@.str = private unnamed_addr constant [24 x i8] c"No connection endpoint\0A\00", align 1
@siw_tcp_rx_data = common dso_local global i32 0, align 4
@IW_CM_EVENT_ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @siw_rtr_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_rtr_data_ready(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.siw_cep*, align 8
  %4 = alloca %struct.siw_qp*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  store %struct.siw_qp* null, %struct.siw_qp** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = call i32 @read_lock(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.siw_cep* @sk_to_cep(%struct.sock* %9)
  store %struct.siw_cep* %10, %struct.siw_cep** %3, align 8
  %11 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %12 = icmp ne %struct.siw_cep* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call %struct.siw_qp* @sk_to_qp(%struct.sock* %16)
  store %struct.siw_qp* %17, %struct.siw_qp** %4, align 8
  %18 = call i32 @memset(%struct.TYPE_8__* %5, i32 0, i32 16)
  %19 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.siw_qp* %19, %struct.siw_qp** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = load i32, i32* @siw_tcp_rx_data, align 4
  %25 = call i32 @tcp_read_sock(%struct.sock* %23, %struct.TYPE_8__* %5, i32 %24)
  %26 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %27 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %15
  %32 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %33 = load i32, i32* @IW_CM_EVENT_ESTABLISHED, align 4
  %34 = call i32 @siw_cm_upcall(%struct.siw_cep* %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %31, %15
  br label %36

36:                                               ; preds = %35, %13
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = call i32 @read_unlock(i32* %38)
  %40 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %41 = icmp ne %struct.siw_qp* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %44 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %45 = call i32 @siw_qp_socket_assoc(%struct.siw_cep* %43, %struct.siw_qp* %44)
  br label %46

46:                                               ; preds = %42, %36
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.siw_cep* @sk_to_cep(%struct.sock*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local %struct.siw_qp* @sk_to_qp(%struct.sock*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @tcp_read_sock(%struct.sock*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @siw_cm_upcall(%struct.siw_cep*, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @siw_qp_socket_assoc(%struct.siw_cep*, %struct.siw_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
