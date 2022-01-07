; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_hem_list_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_hem_list_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_hem_list = type { i64, i32, i32, i32** }

@HNS_ROCE_MAX_BT_REGION = common dso_local global i32 0, align 4
@HNS_ROCE_MAX_BT_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_hem_list_release(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_list* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_hem_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_hem_list* %1, %struct.hns_roce_hem_list** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @HNS_ROCE_MAX_BT_REGION, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @HNS_ROCE_MAX_BT_LEVEL, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %18 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %4, align 8
  %19 = getelementptr inbounds %struct.hns_roce_hem_list, %struct.hns_roce_hem_list* %18, i32 0, i32 3
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @hem_list_free_all(%struct.hns_roce_dev* %17, i32* %27, i32 %30)
  br label %32

32:                                               ; preds = %16
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %12

35:                                               ; preds = %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %7
  %40 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %41 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %4, align 8
  %42 = getelementptr inbounds %struct.hns_roce_hem_list, %struct.hns_roce_hem_list* %41, i32 0, i32 2
  %43 = call i32 @hem_list_free_all(%struct.hns_roce_dev* %40, i32* %42, i32 1)
  %44 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %4, align 8
  %45 = getelementptr inbounds %struct.hns_roce_hem_list, %struct.hns_roce_hem_list* %44, i32 0, i32 1
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %4, align 8
  %48 = getelementptr inbounds %struct.hns_roce_hem_list, %struct.hns_roce_hem_list* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  ret void
}

declare dso_local i32 @hem_list_free_all(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
