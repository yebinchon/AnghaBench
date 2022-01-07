; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_dpi_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_dpi_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { i32 }
%struct.bnxt_qplib_dpi_tbl = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_qplib_res*, %struct.bnxt_qplib_dpi_tbl*)* @bnxt_qplib_free_dpi_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_qplib_free_dpi_tbl(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_dpi_tbl* %1) #0 {
  %3 = alloca %struct.bnxt_qplib_res*, align 8
  %4 = alloca %struct.bnxt_qplib_dpi_tbl*, align 8
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %3, align 8
  store %struct.bnxt_qplib_dpi_tbl* %1, %struct.bnxt_qplib_dpi_tbl** %4, align 8
  %5 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %4, align 8
  %6 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @kfree(i32 %7)
  %9 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @kfree(i32 %11)
  %13 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %4, align 8
  %14 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @pci_iounmap(i32 %20, i64 %23)
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %4, align 8
  %27 = call i32 @memset(%struct.bnxt_qplib_dpi_tbl* %26, i32 0, i32 16)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_iounmap(i32, i64) #1

declare dso_local i32 @memset(%struct.bnxt_qplib_dpi_tbl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
