; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_qp_grp_and_vf_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_qp_grp_and_vf_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_qp_grp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.usnic_ib_pd*, i32, i32 }
%struct.usnic_ib_pd = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usnic_ib_qp_grp*)* @qp_grp_and_vf_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qp_grp_and_vf_unbind(%struct.usnic_ib_qp_grp* %0) #0 {
  %2 = alloca %struct.usnic_ib_qp_grp*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.usnic_ib_pd*, align 8
  store %struct.usnic_ib_qp_grp* %0, %struct.usnic_ib_qp_grp** %2, align 8
  %5 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %6 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %11 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.usnic_ib_pd*, %struct.usnic_ib_pd** %13, align 8
  store %struct.usnic_ib_pd* %14, %struct.usnic_ib_pd** %4, align 8
  %15 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %16 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.pci_dev* @usnic_vnic_get_pdev(i32 %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %3, align 8
  %21 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %22 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %30 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store %struct.usnic_ib_pd* null, %struct.usnic_ib_pd** %32, align 8
  %33 = load %struct.usnic_ib_pd*, %struct.usnic_ib_pd** %4, align 8
  %34 = getelementptr inbounds %struct.usnic_ib_pd, %struct.usnic_ib_pd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i32 @usnic_uiom_detach_dev_from_pd(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %28, %1
  %40 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %41 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %40, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %41, align 8
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.pci_dev* @usnic_vnic_get_pdev(i32) #1

declare dso_local i32 @usnic_uiom_detach_dev_from_pd(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
