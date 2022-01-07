; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_notify_error_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_notify_error_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32*, i64, %struct.TYPE_3__, %struct.qib_qp_priv* }
%struct.TYPE_3__ = type { i32 }
%struct.qib_qp_priv = type { i32*, i32 }
%struct.qib_ibdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RVT_S_BUSY = common dso_local global i32 0, align 4
@RVT_S_ANY_WAIT_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_notify_error_qp(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.qib_qp_priv*, align 8
  %4 = alloca %struct.qib_ibdev*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %5 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %6 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %5, i32 0, i32 4
  %7 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  store %struct.qib_qp_priv* %7, %struct.qib_qp_priv** %3, align 8
  %8 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %9 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.qib_ibdev* @to_idev(i32 %11)
  store %struct.qib_ibdev* %12, %struct.qib_ibdev** %4, align 8
  %13 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %14 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %18 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %17, i32 0, i32 1
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %1
  %22 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %23 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RVT_S_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @RVT_S_ANY_WAIT_IO, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %32 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %36 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %35, i32 0, i32 1
  %37 = call i32 @list_del_init(i32* %36)
  br label %38

38:                                               ; preds = %28, %21, %1
  %39 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %40 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %44 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RVT_S_BUSY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %38
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %51 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %53 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %58 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @rvt_put_mr(i32* %59)
  %61 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %62 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %56, %49
  %64 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %65 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %70 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @qib_put_txreq(i32* %71)
  %73 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %74 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %63
  br label %76

76:                                               ; preds = %75, %38
  ret void
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rvt_put_mr(i32*) #1

declare dso_local i32 @qib_put_txreq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
