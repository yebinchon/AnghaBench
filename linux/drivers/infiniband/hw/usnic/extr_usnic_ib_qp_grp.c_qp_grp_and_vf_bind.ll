; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_qp_grp_and_vf_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_qp_grp_and_vf_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_vf = type { i64, %struct.usnic_ib_pd*, i32, i32 }
%struct.usnic_ib_pd = type { i32 }
%struct.usnic_ib_qp_grp = type { %struct.usnic_ib_vf* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to attach %s to domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usnic_ib_vf*, %struct.usnic_ib_pd*, %struct.usnic_ib_qp_grp*)* @qp_grp_and_vf_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_grp_and_vf_bind(%struct.usnic_ib_vf* %0, %struct.usnic_ib_pd* %1, %struct.usnic_ib_qp_grp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usnic_ib_vf*, align 8
  %6 = alloca %struct.usnic_ib_pd*, align 8
  %7 = alloca %struct.usnic_ib_qp_grp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.usnic_ib_vf* %0, %struct.usnic_ib_vf** %5, align 8
  store %struct.usnic_ib_pd* %1, %struct.usnic_ib_pd** %6, align 8
  store %struct.usnic_ib_qp_grp* %2, %struct.usnic_ib_qp_grp** %7, align 8
  %10 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %5, align 8
  %11 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %10, i32 0, i32 3
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %5, align 8
  %14 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.pci_dev* @usnic_vnic_get_pdev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %9, align 8
  %17 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %5, align 8
  %18 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = load %struct.usnic_ib_pd*, %struct.usnic_ib_pd** %6, align 8
  %23 = getelementptr inbounds %struct.usnic_ib_pd, %struct.usnic_ib_pd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = call i32 @usnic_uiom_attach_dev_to_pd(i32 %24, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %32 = call i32 @pci_name(%struct.pci_dev* %31)
  %33 = call i32 @usnic_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %54

35:                                               ; preds = %21
  %36 = load %struct.usnic_ib_pd*, %struct.usnic_ib_pd** %6, align 8
  %37 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %5, align 8
  %38 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %37, i32 0, i32 1
  store %struct.usnic_ib_pd* %36, %struct.usnic_ib_pd** %38, align 8
  br label %39

39:                                               ; preds = %35, %3
  %40 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %5, align 8
  %41 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %5, align 8
  %45 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %44, i32 0, i32 1
  %46 = load %struct.usnic_ib_pd*, %struct.usnic_ib_pd** %45, align 8
  %47 = load %struct.usnic_ib_pd*, %struct.usnic_ib_pd** %6, align 8
  %48 = icmp ne %struct.usnic_ib_pd* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %5, align 8
  %52 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %7, align 8
  %53 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %52, i32 0, i32 0
  store %struct.usnic_ib_vf* %51, %struct.usnic_ib_vf** %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %39, %30
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.pci_dev* @usnic_vnic_get_pdev(i32) #1

declare dso_local i32 @usnic_uiom_attach_dev_to_pd(i32, i32*) #1

declare dso_local i32 @usnic_err(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
