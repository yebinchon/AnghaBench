; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_rcfw_alloc_sbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_rcfw_alloc_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw_sbuf = type { i32, i32, i32 }
%struct.bnxt_qplib_rcfw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bnxt_qplib_rcfw_sbuf* @bnxt_qplib_rcfw_alloc_sbuf(%struct.bnxt_qplib_rcfw* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt_qplib_rcfw_sbuf*, align 8
  %4 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_qplib_rcfw_sbuf*, align 8
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.bnxt_qplib_rcfw_sbuf* @kzalloc(i32 12, i32 %7)
  store %struct.bnxt_qplib_rcfw_sbuf* %8, %struct.bnxt_qplib_rcfw_sbuf** %6, align 8
  %9 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %6, align 8
  %10 = icmp ne %struct.bnxt_qplib_rcfw_sbuf* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.bnxt_qplib_rcfw_sbuf* null, %struct.bnxt_qplib_rcfw_sbuf** %3, align 8
  br label %39

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %6, align 8
  %15 = getelementptr inbounds %struct.bnxt_qplib_rcfw_sbuf, %struct.bnxt_qplib_rcfw_sbuf* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %4, align 8
  %17 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %6, align 8
  %21 = getelementptr inbounds %struct.bnxt_qplib_rcfw_sbuf, %struct.bnxt_qplib_rcfw_sbuf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %6, align 8
  %24 = getelementptr inbounds %struct.bnxt_qplib_rcfw_sbuf, %struct.bnxt_qplib_rcfw_sbuf* %23, i32 0, i32 1
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i32 @dma_alloc_coherent(i32* %19, i32 %22, i32* %24, i32 %25)
  %27 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %6, align 8
  %28 = getelementptr inbounds %struct.bnxt_qplib_rcfw_sbuf, %struct.bnxt_qplib_rcfw_sbuf* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %6, align 8
  %30 = getelementptr inbounds %struct.bnxt_qplib_rcfw_sbuf, %struct.bnxt_qplib_rcfw_sbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %12
  br label %36

34:                                               ; preds = %12
  %35 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %6, align 8
  store %struct.bnxt_qplib_rcfw_sbuf* %35, %struct.bnxt_qplib_rcfw_sbuf** %3, align 8
  br label %39

36:                                               ; preds = %33
  %37 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %6, align 8
  %38 = call i32 @kfree(%struct.bnxt_qplib_rcfw_sbuf* %37)
  store %struct.bnxt_qplib_rcfw_sbuf* null, %struct.bnxt_qplib_rcfw_sbuf** %3, align 8
  br label %39

39:                                               ; preds = %36, %34, %11
  %40 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %3, align 8
  ret %struct.bnxt_qplib_rcfw_sbuf* %40
}

declare dso_local %struct.bnxt_qplib_rcfw_sbuf* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.bnxt_qplib_rcfw_sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
