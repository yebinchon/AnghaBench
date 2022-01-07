; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_cleanup_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_cleanup_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, i32*)* }
%struct.qedr_qp = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, %struct.qedr_qp*)* @qedr_cleanup_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_cleanup_kernel(%struct.qedr_dev* %0, %struct.qedr_qp* %1) #0 {
  %3 = alloca %struct.qedr_dev*, align 8
  %4 = alloca %struct.qedr_qp*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %3, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %4, align 8
  %5 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %6 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32 (i32, i32*)*, i32 (i32, i32*)** %10, align 8
  %12 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %13 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %16 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 %11(i32 %14, i32* %17)
  %19 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %20 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kfree(i32 %21)
  %23 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %24 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32 (i32, i32*)*, i32 (i32, i32*)** %28, align 8
  %30 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %31 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %34 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 %29(i32 %32, i32* %35)
  %37 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %38 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kfree(i32 %39)
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
