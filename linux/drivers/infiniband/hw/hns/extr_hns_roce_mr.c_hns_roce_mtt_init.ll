; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mtt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mtt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_mtt = type { i32, i32, i32, i32 }

@HNS_ROCE_HEM_PAGE_SHIFT = common dso_local global i32 0, align 4
@HNS_ROCE_MTT_ENTRY_PER_SEG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_mtt_init(%struct.hns_roce_dev* %0, i32 %1, i32 %2, %struct.hns_roce_mtt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hns_roce_mtt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.hns_roce_mtt* %3, %struct.hns_roce_mtt** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %9, align 8
  %16 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* @HNS_ROCE_HEM_PAGE_SHIFT, align 4
  %18 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %9, align 8
  %19 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %5, align 4
  br label %56

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %9, align 8
  %23 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %9, align 8
  %25 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @HNS_ROCE_MTT_ENTRY_PER_SEG, align 4
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %36, %20
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %9, align 8
  %33 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %41 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %9, align 8
  %42 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %9, align 8
  %45 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %44, i32 0, i32 3
  %46 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %9, align 8
  %47 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @hns_roce_alloc_mtt_range(%struct.hns_roce_dev* %40, i32 %43, i32* %45, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %52, %14
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @hns_roce_alloc_mtt_range(%struct.hns_roce_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
