; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mtr_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mtr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_mtr = type { i32 }
%struct.hns_roce_buf_region = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"write mtr[%d/%d] err %d,offset=%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_mtr_attach(%struct.hns_roce_dev* %0, %struct.hns_roce_mtr* %1, i32** %2, %struct.hns_roce_buf_region* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_dev*, align 8
  %8 = alloca %struct.hns_roce_mtr*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.hns_roce_buf_region*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hns_roce_buf_region*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %7, align 8
  store %struct.hns_roce_mtr* %1, %struct.hns_roce_mtr** %8, align 8
  store i32** %2, i32*** %9, align 8
  store %struct.hns_roce_buf_region* %3, %struct.hns_roce_buf_region** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %16 = load %struct.hns_roce_mtr*, %struct.hns_roce_mtr** %8, align 8
  %17 = getelementptr inbounds %struct.hns_roce_mtr, %struct.hns_roce_mtr* %16, i32 0, i32 0
  %18 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @hns_roce_hem_list_request(%struct.hns_roce_dev* %15, i32* %17, %struct.hns_roce_buf_region* %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %6, align 4
  br label %68

25:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %58, %25
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %10, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %31, i64 %33
  store %struct.hns_roce_buf_region* %34, %struct.hns_roce_buf_region** %12, align 8
  %35 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %36 = load %struct.hns_roce_mtr*, %struct.hns_roce_mtr** %8, align 8
  %37 = load i32**, i32*** %9, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %12, align 8
  %43 = call i32 @hns_roce_write_mtr(%struct.hns_roce_dev* %35, %struct.hns_roce_mtr* %36, i32* %41, %struct.hns_roce_buf_region* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %30
  %47 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %48 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %12, align 8
  %54 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52, i32 %55)
  br label %62

57:                                               ; preds = %30
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %26

61:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %68

62:                                               ; preds = %46
  %63 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %64 = load %struct.hns_roce_mtr*, %struct.hns_roce_mtr** %8, align 8
  %65 = getelementptr inbounds %struct.hns_roce_mtr, %struct.hns_roce_mtr* %64, i32 0, i32 0
  %66 = call i32 @hns_roce_hem_list_release(%struct.hns_roce_dev* %63, i32* %65)
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %61, %23
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @hns_roce_hem_list_request(%struct.hns_roce_dev*, i32*, %struct.hns_roce_buf_region*, i32) #1

declare dso_local i32 @hns_roce_write_mtr(%struct.hns_roce_dev*, %struct.hns_roce_mtr*, i32*, %struct.hns_roce_buf_region*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hns_roce_hem_list_release(%struct.hns_roce_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
