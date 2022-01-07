; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_hwq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_hwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bnxt_qplib_hwq = type { i32, i32, i64, i64, i64, i64, i64, i32* }

@PBL_LVL_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_qplib_free_hwq(%struct.pci_dev* %0, %struct.bnxt_qplib_hwq* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.bnxt_qplib_hwq*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.bnxt_qplib_hwq* %1, %struct.bnxt_qplib_hwq** %4, align 8
  %6 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %7 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %71

11:                                               ; preds = %2
  %12 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PBL_LVL_MAX, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %71

18:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %29 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %35 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %41 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__free_pbl(%struct.pci_dev* %33, i32* %39, i32 %42)
  br label %53

44:                                               ; preds = %26
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %47 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @__free_pbl(%struct.pci_dev* %45, i32* %51, i32 0)
  br label %53

53:                                               ; preds = %44, %32
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load i32, i32* @PBL_LVL_MAX, align 4
  %59 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %60 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %62 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %61, i32 0, i32 6
  store i64 0, i64* %62, align 8
  %63 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %64 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %66 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %68 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %4, align 8
  %70 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %57, %17, %10
  ret void
}

declare dso_local i32 @__free_pbl(%struct.pci_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
