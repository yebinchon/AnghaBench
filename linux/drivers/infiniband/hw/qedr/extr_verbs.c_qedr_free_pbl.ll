; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_free_pbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_free_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.qedr_pbl_info = type { i32, i32 }
%struct.qedr_pbl = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, %struct.qedr_pbl_info*, %struct.qedr_pbl*)* @qedr_free_pbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_free_pbl(%struct.qedr_dev* %0, %struct.qedr_pbl_info* %1, %struct.qedr_pbl* %2) #0 {
  %4 = alloca %struct.qedr_dev*, align 8
  %5 = alloca %struct.qedr_pbl_info*, align 8
  %6 = alloca %struct.qedr_pbl*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %4, align 8
  store %struct.qedr_pbl_info* %1, %struct.qedr_pbl_info** %5, align 8
  store %struct.qedr_pbl* %2, %struct.qedr_pbl** %6, align 8
  %9 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %10 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %46, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.qedr_pbl_info*, %struct.qedr_pbl_info** %5, align 8
  %15 = getelementptr inbounds %struct.qedr_pbl_info, %struct.qedr_pbl_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = load %struct.qedr_pbl*, %struct.qedr_pbl** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %19, i64 %21
  %23 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %46

27:                                               ; preds = %18
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load %struct.qedr_pbl_info*, %struct.qedr_pbl_info** %5, align 8
  %31 = getelementptr inbounds %struct.qedr_pbl_info, %struct.qedr_pbl_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qedr_pbl*, %struct.qedr_pbl** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %33, i64 %35
  %37 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qedr_pbl*, %struct.qedr_pbl** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %39, i64 %41
  %43 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dma_free_coherent(i32* %29, i32 %32, i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %27, %26
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %12

49:                                               ; preds = %12
  %50 = load %struct.qedr_pbl*, %struct.qedr_pbl** %6, align 8
  %51 = call i32 @kfree(%struct.qedr_pbl* %50)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.qedr_pbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
