; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_create_read_req_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_create_read_req_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.t4_cqe = type { i32, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FW_RI_READ_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_wq*, %struct.t4_cqe*, %struct.t4_cqe*)* @create_read_req_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_read_req_cqe(%struct.t4_wq* %0, %struct.t4_cqe* %1, %struct.t4_cqe* %2) #0 {
  %4 = alloca %struct.t4_wq*, align 8
  %5 = alloca %struct.t4_cqe*, align 8
  %6 = alloca %struct.t4_cqe*, align 8
  store %struct.t4_wq* %0, %struct.t4_wq** %4, align 8
  store %struct.t4_cqe* %1, %struct.t4_cqe** %5, align 8
  store %struct.t4_cqe* %2, %struct.t4_cqe** %6, align 8
  %7 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %8 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.t4_cqe*, %struct.t4_cqe** %6, align 8
  %14 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 8
  %17 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %18 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @htonl(i32 %22)
  %24 = load %struct.t4_cqe*, %struct.t4_cqe** %6, align 8
  %25 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %27 = call i32 @CQE_QPID(%struct.t4_cqe* %26)
  %28 = call i32 @CQE_QPID_V(i32 %27)
  %29 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %30 = call i32 @SW_CQE(%struct.t4_cqe* %29)
  %31 = call i32 @CQE_SWCQE_V(i32 %30)
  %32 = or i32 %28, %31
  %33 = load i32, i32* @FW_RI_READ_REQ, align 4
  %34 = call i32 @CQE_OPCODE_V(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i32 @CQE_TYPE_V(i32 1)
  %37 = or i32 %35, %36
  %38 = call i8* @htonl(i32 %37)
  %39 = load %struct.t4_cqe*, %struct.t4_cqe** %6, align 8
  %40 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %42 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.t4_cqe*, %struct.t4_cqe** %6, align 8
  %45 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  ret void
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @CQE_QPID_V(i32) #1

declare dso_local i32 @CQE_QPID(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_SWCQE_V(i32) #1

declare dso_local i32 @SW_CQE(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_OPCODE_V(i32) #1

declare dso_local i32 @CQE_TYPE_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
