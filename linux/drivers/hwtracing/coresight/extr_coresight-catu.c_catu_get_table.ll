; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_get_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_get_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_sg_table = type { %struct.tmc_pages }
%struct.tmc_pages = type { i32*, i64* }

@CATU_PAGES_PER_SYSPAGE = common dso_local global i32 0, align 4
@CATU_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.tmc_sg_table*, i64, i64*)* @catu_get_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @catu_get_table(%struct.tmc_sg_table* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.tmc_sg_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tmc_pages*, align 8
  %12 = alloca i8*, align 8
  store %struct.tmc_sg_table* %0, %struct.tmc_sg_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %4, align 8
  %14 = call i64 @tmc_sg_table_buf_size(%struct.tmc_sg_table* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %4, align 8
  %16 = getelementptr inbounds %struct.tmc_sg_table, %struct.tmc_sg_table* %15, i32 0, i32 0
  store %struct.tmc_pages* %16, %struct.tmc_pages** %11, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = urem i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = lshr i64 %20, 20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @CATU_PAGES_PER_SYSPAGE, align 4
  %25 = udiv i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CATU_PAGES_PER_SYSPAGE, align 4
  %28 = urem i32 %26, %27
  %29 = load i32, i32* @CATU_PAGE_SIZE, align 4
  %30 = mul i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i64*, i64** %6, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %3
  %34 = load %struct.tmc_pages*, %struct.tmc_pages** %11, align 8
  %35 = getelementptr inbounds %struct.tmc_pages, %struct.tmc_pages* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %33, %3
  %46 = load %struct.tmc_pages*, %struct.tmc_pages** %11, align 8
  %47 = getelementptr inbounds %struct.tmc_pages, %struct.tmc_pages* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @page_address(i32 %52)
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = add i64 %55, %57
  %59 = inttoptr i64 %58 to i32*
  ret i32* %59
}

declare dso_local i64 @tmc_sg_table_buf_size(%struct.tmc_sg_table*) #1

declare dso_local i8* @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
