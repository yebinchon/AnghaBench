; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_set_restart_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_set_restart_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, i64 }
%struct.hfi1_ctxtdata = type { i32 }

@RVT_R_RDMAR_SEQ = common dso_local global i32 0, align 4
@RVT_R_RSP_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, %struct.hfi1_ctxtdata*)* @set_restart_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_restart_qp(%struct.rvt_qp* %0, %struct.hfi1_ctxtdata* %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %4, align 8
  %5 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %6 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RVT_R_RDMAR_SEQ, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @RVT_R_RDMAR_SEQ, align 4
  %13 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %14 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %18 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %19 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @hfi1_restart_rc(%struct.rvt_qp* %17, i64 %21, i32 0)
  %23 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %24 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %23, i32 0, i32 1
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %11
  %28 = load i32, i32* @RVT_R_RSP_SEND, align 4
  %29 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %30 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %34 = call i32 @rvt_get_qp(%struct.rvt_qp* %33)
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 1
  %37 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %38 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %37, i32 0, i32 0
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  br label %40

40:                                               ; preds = %27, %11
  br label %41

41:                                               ; preds = %40, %2
  ret void
}

declare dso_local i32 @hfi1_restart_rc(%struct.rvt_qp*, i64, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @rvt_get_qp(%struct.rvt_qp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
