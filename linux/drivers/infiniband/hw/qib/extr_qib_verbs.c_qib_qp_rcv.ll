; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_qp_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_qp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.qib_ibport }
%struct.qib_ibport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_header = type { i32 }
%struct.rvt_qp = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@ib_qib_disable_sma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ctxtdata*, %struct.ib_header*, i32, i8*, i32, %struct.rvt_qp*)* @qib_qp_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_qp_rcv(%struct.qib_ctxtdata* %0, %struct.ib_header* %1, i32 %2, i8* %3, i32 %4, %struct.rvt_qp* %5) #0 {
  %7 = alloca %struct.qib_ctxtdata*, align 8
  %8 = alloca %struct.ib_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rvt_qp*, align 8
  %13 = alloca %struct.qib_ibport*, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %7, align 8
  store %struct.ib_header* %1, %struct.ib_header** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.rvt_qp* %5, %struct.rvt_qp** %12, align 8
  %14 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %15 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.qib_ibport* %17, %struct.qib_ibport** %13, align 8
  %18 = load %struct.rvt_qp*, %struct.rvt_qp** %12, align 8
  %19 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32*, i32** @ib_rvt_state_ops, align 8
  %22 = load %struct.rvt_qp*, %struct.rvt_qp** %12, align 8
  %23 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %6
  %31 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %32 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %72

36:                                               ; preds = %6
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %12, align 8
  %38 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %70 [
    i32 130, label %41
    i32 132, label %41
    i32 128, label %46
    i32 131, label %54
    i32 129, label %62
  ]

41:                                               ; preds = %36, %36
  %42 = load i32, i32* @ib_qib_disable_sma, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %71

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %36, %45
  %47 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %48 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.rvt_qp*, %struct.rvt_qp** %12, align 8
  %53 = call i32 @qib_ud_rcv(%struct.qib_ibport* %47, %struct.ib_header* %48, i32 %49, i8* %50, i32 %51, %struct.rvt_qp* %52)
  br label %71

54:                                               ; preds = %36
  %55 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %56 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.rvt_qp*, %struct.rvt_qp** %12, align 8
  %61 = call i32 @qib_rc_rcv(%struct.qib_ctxtdata* %55, %struct.ib_header* %56, i32 %57, i8* %58, i32 %59, %struct.rvt_qp* %60)
  br label %71

62:                                               ; preds = %36
  %63 = load %struct.qib_ibport*, %struct.qib_ibport** %13, align 8
  %64 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.rvt_qp*, %struct.rvt_qp** %12, align 8
  %69 = call i32 @qib_uc_rcv(%struct.qib_ibport* %63, %struct.ib_header* %64, i32 %65, i8* %66, i32 %67, %struct.rvt_qp* %68)
  br label %71

70:                                               ; preds = %36
  br label %71

71:                                               ; preds = %70, %62, %54, %46, %44
  br label %72

72:                                               ; preds = %71, %30
  %73 = load %struct.rvt_qp*, %struct.rvt_qp** %12, align 8
  %74 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @qib_ud_rcv(%struct.qib_ibport*, %struct.ib_header*, i32, i8*, i32, %struct.rvt_qp*) #1

declare dso_local i32 @qib_rc_rcv(%struct.qib_ctxtdata*, %struct.ib_header*, i32, i8*, i32, %struct.rvt_qp*) #1

declare dso_local i32 @qib_uc_rcv(%struct.qib_ibport*, %struct.ib_header*, i32, i8*, i32, %struct.rvt_qp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
