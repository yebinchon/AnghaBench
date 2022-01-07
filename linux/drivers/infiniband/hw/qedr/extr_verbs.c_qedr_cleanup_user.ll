; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_cleanup_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_cleanup_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, %struct.qedr_qp*)* @qedr_cleanup_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_cleanup_user(%struct.qedr_dev* %0, %struct.qedr_qp* %1) #0 {
  %3 = alloca %struct.qedr_dev*, align 8
  %4 = alloca %struct.qedr_qp*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %3, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %4, align 8
  %5 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %6 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @ib_umem_release(i32* %8)
  %10 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %11 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %14 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ib_umem_release(i32* %16)
  %18 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %19 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local i32 @ib_umem_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
