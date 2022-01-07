; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_alloc_buf_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_alloc_buf_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_buf_region = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_alloc_buf_list(%struct.hns_roce_buf_region* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_buf_region*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_roce_buf_region*, align 8
  %9 = alloca i32, align 4
  store %struct.hns_roce_buf_region* %0, %struct.hns_roce_buf_region** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %36, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %15, i64 %17
  store %struct.hns_roce_buf_region* %18, %struct.hns_roce_buf_region** %8, align 8
  %19 = load %struct.hns_roce_buf_region*, %struct.hns_roce_buf_region** %8, align 8
  %20 = getelementptr inbounds %struct.hns_roce_buf_region, %struct.hns_roce_buf_region* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kcalloc(i32 %21, i32 4, i32 %22)
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  store i32* %23, i32** %27, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %14
  br label %40

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %10

39:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %46

40:                                               ; preds = %34
  %41 = load i32**, i32*** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @hns_roce_free_buf_list(i32** %41, i32 %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %39
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @hns_roce_free_buf_list(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
