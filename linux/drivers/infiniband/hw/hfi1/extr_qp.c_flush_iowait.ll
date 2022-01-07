; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_flush_iowait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_flush_iowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*)* @flush_iowait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_iowait(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %6 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %7 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %6, i32 0, i32 0
  %8 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  store %struct.hfi1_qp_priv* %8, %struct.hfi1_qp_priv** %3, align 8
  %9 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %10 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %39

16:                                               ; preds = %1
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @write_seqlock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %21 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %16
  %26 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @list_del_init(i32* %28)
  %30 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %34 = call i32 @rvt_put_qp(%struct.rvt_qp* %33)
  br label %35

35:                                               ; preds = %25, %16
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @write_sequnlock_irqrestore(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %15
  ret void
}

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @rvt_put_qp(%struct.rvt_qp*) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
