; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_hem_list_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_hem_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_hem_list = type { i32, i32**, i32, i32 }

@HNS_ROCE_MAX_BT_REGION = common dso_local global i32 0, align 4
@HNS_ROCE_MAX_BT_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_hem_list_init(%struct.hns_roce_hem_list* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_hem_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hns_roce_hem_list* %0, %struct.hns_roce_hem_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_hem_list, %struct.hns_roce_hem_list* %7, i32 0, i32 3
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %3, align 8
  %11 = getelementptr inbounds %struct.hns_roce_hem_list, %struct.hns_roce_hem_list* %10, i32 0, i32 2
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @HNS_ROCE_MAX_BT_REGION, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @HNS_ROCE_MAX_BT_LEVEL, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %3, align 8
  %24 = getelementptr inbounds %struct.hns_roce_hem_list, %struct.hns_roce_hem_list* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %18

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.hns_roce_hem_list*, %struct.hns_roce_hem_list** %3, align 8
  %44 = getelementptr inbounds %struct.hns_roce_hem_list, %struct.hns_roce_hem_list* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
