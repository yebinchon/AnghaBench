; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { i32, i32, i32, i32, %struct.net_device*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnxt_qplib_dev_attr = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_alloc_res(%struct.bnxt_qplib_res* %0, %struct.pci_dev* %1, %struct.net_device* %2, %struct.bnxt_qplib_dev_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_qplib_res*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.bnxt_qplib_dev_attr*, align 8
  %10 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.bnxt_qplib_dev_attr* %3, %struct.bnxt_qplib_dev_attr** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %12 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %13 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %12, i32 0, i32 5
  store %struct.pci_dev* %11, %struct.pci_dev** %13, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %16 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %15, i32 0, i32 4
  store %struct.net_device* %14, %struct.net_device** %16, align 8
  %17 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %18 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %18, i32 0, i32 3
  %20 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %9, align 8
  %21 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bnxt_qplib_alloc_sgid_tbl(%struct.bnxt_qplib_res* %17, i32* %19, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %61

27:                                               ; preds = %4
  %28 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %29 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %30 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %29, i32 0, i32 2
  %31 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %9, align 8
  %32 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bnxt_qplib_alloc_pkey_tbl(%struct.bnxt_qplib_res* %28, i32* %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %61

38:                                               ; preds = %27
  %39 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %40 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %41 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %40, i32 0, i32 1
  %42 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %9, align 8
  %43 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bnxt_qplib_alloc_pd_tbl(%struct.bnxt_qplib_res* %39, i32* %41, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %61

49:                                               ; preds = %38
  %50 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %51 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %52 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %51, i32 0, i32 0
  %53 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %9, align 8
  %54 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bnxt_qplib_alloc_dpi_tbl(%struct.bnxt_qplib_res* %50, i32* %52, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %61

60:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %65

61:                                               ; preds = %59, %48, %37, %26
  %62 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %63 = call i32 @bnxt_qplib_free_res(%struct.bnxt_qplib_res* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %60
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @bnxt_qplib_alloc_sgid_tbl(%struct.bnxt_qplib_res*, i32*, i32) #1

declare dso_local i32 @bnxt_qplib_alloc_pkey_tbl(%struct.bnxt_qplib_res*, i32*, i32) #1

declare dso_local i32 @bnxt_qplib_alloc_pd_tbl(%struct.bnxt_qplib_res*, i32*, i32) #1

declare dso_local i32 @bnxt_qplib_alloc_dpi_tbl(%struct.bnxt_qplib_res*, i32*, i32) #1

declare dso_local i32 @bnxt_qplib_free_res(%struct.bnxt_qplib_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
