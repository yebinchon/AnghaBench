; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_rcfw_free_sbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_rcfw_free_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_qplib_rcfw_sbuf = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_qplib_rcfw_free_sbuf(%struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw_sbuf* %1) #0 {
  %3 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %4 = alloca %struct.bnxt_qplib_rcfw_sbuf*, align 8
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %3, align 8
  store %struct.bnxt_qplib_rcfw_sbuf* %1, %struct.bnxt_qplib_rcfw_sbuf** %4, align 8
  %5 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %4, align 8
  %6 = getelementptr inbounds %struct.bnxt_qplib_rcfw_sbuf, %struct.bnxt_qplib_rcfw_sbuf* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %4, align 8
  %15 = getelementptr inbounds %struct.bnxt_qplib_rcfw_sbuf, %struct.bnxt_qplib_rcfw_sbuf* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %4, align 8
  %18 = getelementptr inbounds %struct.bnxt_qplib_rcfw_sbuf, %struct.bnxt_qplib_rcfw_sbuf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %4, align 8
  %21 = getelementptr inbounds %struct.bnxt_qplib_rcfw_sbuf, %struct.bnxt_qplib_rcfw_sbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dma_free_coherent(i32* %13, i32 %16, i64 %19, i32 %22)
  br label %24

24:                                               ; preds = %9, %2
  %25 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %4, align 8
  %26 = call i32 @kfree(%struct.bnxt_qplib_rcfw_sbuf* %25)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.bnxt_qplib_rcfw_sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
