; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_dpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_dpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_dpi_tbl = type { i64, i64, i64, i8**, i32 }
%struct.bnxt_qplib_dpi = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_alloc_dpi(%struct.bnxt_qplib_dpi_tbl* %0, %struct.bnxt_qplib_dpi* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_dpi_tbl*, align 8
  %6 = alloca %struct.bnxt_qplib_dpi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.bnxt_qplib_dpi_tbl* %0, %struct.bnxt_qplib_dpi_tbl** %5, align 8
  store %struct.bnxt_qplib_dpi* %1, %struct.bnxt_qplib_dpi** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %5, align 8
  %10 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %5, align 8
  %13 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @find_first_bit(i32 %11, i64 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %5, align 8
  %18 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %57

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %5, align 8
  %27 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clear_bit(i64 %25, i32 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %5, align 8
  %32 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %31, i32 0, i32 3
  %33 = load i8**, i8*** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  store i8* %30, i8** %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.bnxt_qplib_dpi*, %struct.bnxt_qplib_dpi** %6, align 8
  %38 = getelementptr inbounds %struct.bnxt_qplib_dpi, %struct.bnxt_qplib_dpi* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %5, align 8
  %40 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = mul i64 %42, %43
  %45 = add i64 %41, %44
  %46 = load %struct.bnxt_qplib_dpi*, %struct.bnxt_qplib_dpi** %6, align 8
  %47 = getelementptr inbounds %struct.bnxt_qplib_dpi, %struct.bnxt_qplib_dpi* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %5, align 8
  %49 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = mul i64 %51, %52
  %54 = add i64 %50, %53
  %55 = load %struct.bnxt_qplib_dpi*, %struct.bnxt_qplib_dpi** %6, align 8
  %56 = getelementptr inbounds %struct.bnxt_qplib_dpi, %struct.bnxt_qplib_dpi* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %24, %21
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
