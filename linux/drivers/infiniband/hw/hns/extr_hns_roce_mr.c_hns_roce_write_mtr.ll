; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_write_mtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_write_mtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64 }
%struct.hns_roce_mtr = type { i32 }
%struct.hns_roce_buf_region = type { i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@HNS_ROCE_HW_VER1 = common dso_local global i64 0, align 8
@PAGE_ADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_mtr*, i32*, %struct.hns_roce_buf_region*)* @hns_roce_write_mtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_write_mtr(%struct.hns_roce_dev* %0, %struct.hns_roce_mtr* %1, i32* %2, %struct.hns_roce_buf_region* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_mtr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hns_roce_buf_region*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store %struct.hns_roce_mtr* %1, %struct.hns_roce_mtr** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.hns_roce_buf_region* %3, %struct.hns_roce_buf_region** %9, align 8
  %16 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %9, align 8
  %17 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %9, align 8
  %21 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %78, %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %24
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %30 = load %struct.hns_roce_mtr*, %struct.hns_roce_mtr** %7, align 8
  %31 = getelementptr inbounds %struct.hns_roce_mtr, %struct.hns_roce_mtr* %30, i32 0, i32 0
  %32 = load i32, i32* %10, align 4
  %33 = call i32* @hns_roce_hem_list_find_mtt(%struct.hns_roce_dev* %29, i32* %31, i32 %32, i32* %11, i32* null)
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOBUFS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %83

39:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %75, %39
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  %45 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %46 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HNS_ROCE_HW_VER1, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %72

62:                                               ; preds = %44
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %62, %50
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %40

78:                                               ; preds = %40
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %24

82:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %36
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32* @hns_roce_hem_list_find_mtt(%struct.hns_roce_dev*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
