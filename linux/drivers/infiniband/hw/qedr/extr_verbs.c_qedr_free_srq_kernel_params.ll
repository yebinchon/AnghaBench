; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_free_srq_kernel_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_free_srq_kernel_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_srq = type { %struct.qedr_dev*, %struct.qedr_srq_hwq_info }
%struct.qedr_dev = type { %struct.TYPE_4__*, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32*)* }
%struct.qedr_srq_hwq_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_srq*)* @qedr_free_srq_kernel_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_free_srq_kernel_params(%struct.qedr_srq* %0) #0 {
  %2 = alloca %struct.qedr_srq*, align 8
  %3 = alloca %struct.qedr_srq_hwq_info*, align 8
  %4 = alloca %struct.qedr_dev*, align 8
  store %struct.qedr_srq* %0, %struct.qedr_srq** %2, align 8
  %5 = load %struct.qedr_srq*, %struct.qedr_srq** %2, align 8
  %6 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %5, i32 0, i32 1
  store %struct.qedr_srq_hwq_info* %6, %struct.qedr_srq_hwq_info** %3, align 8
  %7 = load %struct.qedr_srq*, %struct.qedr_srq** %2, align 8
  %8 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %7, i32 0, i32 0
  %9 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  store %struct.qedr_dev* %9, %struct.qedr_dev** %4, align 8
  %10 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %11 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32*)*, i32 (i32, i32*)** %15, align 8
  %17 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %18 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %3, align 8
  %21 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %20, i32 0, i32 2
  %22 = call i32 %16(i32 %19, i32* %21)
  %23 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %24 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %3, align 8
  %28 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %3, align 8
  %31 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dma_free_coherent(i32* %26, i32 4, i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
