; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bnxt_qplib_ctx = type { i32, i32, i32*, i32, i32, i32, i32, i32 }

@MAX_TQM_ALLOC_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_qplib_free_ctx(%struct.pci_dev* %0, %struct.bnxt_qplib_ctx* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.bnxt_qplib_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.bnxt_qplib_ctx* %1, %struct.bnxt_qplib_ctx** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %7, i32 0, i32 7
  %9 = call i32 @bnxt_qplib_free_hwq(%struct.pci_dev* %6, i32* %8)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %11, i32 0, i32 6
  %13 = call i32 @bnxt_qplib_free_hwq(%struct.pci_dev* %10, i32* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %15, i32 0, i32 5
  %17 = call i32 @bnxt_qplib_free_hwq(%struct.pci_dev* %14, i32* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %19, i32 0, i32 4
  %21 = call i32 @bnxt_qplib_free_hwq(%struct.pci_dev* %18, i32* %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %23, i32 0, i32 3
  %25 = call i32 @bnxt_qplib_free_hwq(%struct.pci_dev* %22, i32* %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %39, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MAX_TQM_ALLOC_REQ, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @bnxt_qplib_free_hwq(%struct.pci_dev* %31, i32* %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %44, i32 0, i32 1
  %46 = call i32 @bnxt_qplib_free_hwq(%struct.pci_dev* %43, i32* %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %48, i32 0, i32 0
  %50 = call i32 @bnxt_qplib_free_stats_ctx(%struct.pci_dev* %47, i32* %49)
  ret void
}

declare dso_local i32 @bnxt_qplib_free_hwq(%struct.pci_dev*, i32*) #1

declare dso_local i32 @bnxt_qplib_free_stats_ctx(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
