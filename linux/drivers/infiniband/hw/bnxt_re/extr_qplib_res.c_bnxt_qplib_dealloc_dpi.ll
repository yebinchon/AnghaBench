; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_dealloc_dpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_dealloc_dpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_qplib_dpi_tbl = type { i64, i32**, i32 }
%struct.bnxt_qplib_dpi = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid DPI? dpi = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Freeing an unused DPI? dpi = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_dealloc_dpi(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_dpi_tbl* %1, %struct.bnxt_qplib_dpi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_res*, align 8
  %6 = alloca %struct.bnxt_qplib_dpi_tbl*, align 8
  %7 = alloca %struct.bnxt_qplib_dpi*, align 8
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %5, align 8
  store %struct.bnxt_qplib_dpi_tbl* %1, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  store %struct.bnxt_qplib_dpi* %2, %struct.bnxt_qplib_dpi** %7, align 8
  %8 = load %struct.bnxt_qplib_dpi*, %struct.bnxt_qplib_dpi** %7, align 8
  %9 = getelementptr inbounds %struct.bnxt_qplib_dpi, %struct.bnxt_qplib_dpi* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %17 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.bnxt_qplib_dpi*, %struct.bnxt_qplib_dpi** %7, align 8
  %21 = getelementptr inbounds %struct.bnxt_qplib_dpi, %struct.bnxt_qplib_dpi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load %struct.bnxt_qplib_dpi*, %struct.bnxt_qplib_dpi** %7, align 8
  %28 = getelementptr inbounds %struct.bnxt_qplib_dpi, %struct.bnxt_qplib_dpi* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %31 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @test_and_set_bit(i64 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %37 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.bnxt_qplib_dpi*, %struct.bnxt_qplib_dpi** %7, align 8
  %41 = getelementptr inbounds %struct.bnxt_qplib_dpi, %struct.bnxt_qplib_dpi* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %62

46:                                               ; preds = %26
  %47 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %48 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = icmp ne i32** %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %53 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load %struct.bnxt_qplib_dpi*, %struct.bnxt_qplib_dpi** %7, align 8
  %56 = getelementptr inbounds %struct.bnxt_qplib_dpi, %struct.bnxt_qplib_dpi* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %51, %46
  %60 = load %struct.bnxt_qplib_dpi*, %struct.bnxt_qplib_dpi** %7, align 8
  %61 = call i32 @memset(%struct.bnxt_qplib_dpi* %60, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %35, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i64 @test_and_set_bit(i64, i32) #1

declare dso_local i32 @memset(%struct.bnxt_qplib_dpi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
