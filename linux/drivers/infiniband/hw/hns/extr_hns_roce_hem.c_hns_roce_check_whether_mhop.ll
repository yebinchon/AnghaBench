; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_check_whether_mhop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_check_whether_mhop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %63 [
    i32 132, label %8
    i32 134, label %13
    i32 138, label %18
    i32 129, label %23
    i32 130, label %28
    i32 131, label %33
    i32 137, label %38
    i32 136, label %43
    i32 133, label %48
    i32 128, label %53
    i32 135, label %58
  ]

8:                                                ; preds = %2
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %64

23:                                               ; preds = %2
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %25 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %30 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  br label %64

33:                                               ; preds = %2
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %35 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %64

38:                                               ; preds = %2
  %39 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %40 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  br label %64

43:                                               ; preds = %2
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %45 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  br label %64

48:                                               ; preds = %2
  %49 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %50 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %64

53:                                               ; preds = %2
  %54 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %55 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  br label %64

58:                                               ; preds = %2
  %59 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %60 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  br label %64

63:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

64:                                               ; preds = %58, %53, %48, %43, %38, %33, %28, %23, %18, %13, %8
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %63
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
