; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_hem_list_calc_root_ba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_hem_list_calc_root_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_buf_region = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_hem_list_calc_root_ba(%struct.hns_roce_buf_region* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_buf_region*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_buf_region*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hns_roce_buf_region* %0, %struct.hns_roce_buf_region** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %51, %3
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %4, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %16, i64 %18
  store %struct.hns_roce_buf_region* %19, %struct.hns_roce_buf_region** %7, align 8
  %20 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %7, align 8
  %21 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %44

24:                                               ; preds = %15
  %25 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %7, align 8
  %26 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @hem_list_calc_ba_range(i32 %27, i32 1, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %7, align 8
  %34 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %9, align 4
  %40 = sdiv i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %32, %24
  br label %50

44:                                               ; preds = %15
  %45 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %7, align 8
  %46 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %43
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %11

54:                                               ; preds = %11
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @hem_list_calc_ba_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
