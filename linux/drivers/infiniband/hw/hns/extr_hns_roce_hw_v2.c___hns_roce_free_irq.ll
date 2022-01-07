; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32*, %struct.TYPE_4__, i32***, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.hns_roce_dev* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*)* @__hns_roce_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hns_roce_free_irq(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %9, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %17 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %38, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %24 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %29, i32 0, i32 2
  %31 = load i32***, i32**** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32**, i32*** %31, i64 %33
  %35 = load i32**, i32*** %34, align 8
  %36 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %37 = call i32 @free_irq(i32** %35, %struct.hns_roce_dev* %36)
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %21

41:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %65, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %48 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %50, i64 %52
  %54 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %53, i32 0, i32 2
  %55 = load i32***, i32**** %54, align 8
  %56 = bitcast i32*** %55 to i32**
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %58 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %60, i64 %62
  %64 = call i32 @free_irq(i32** %56, %struct.hns_roce_dev* %63)
  br label %65

65:                                               ; preds = %46
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %42

68:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %82, %68
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %75 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @kfree(i32 %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %69

85:                                               ; preds = %69
  ret void
}

declare dso_local i32 @free_irq(i32**, %struct.hns_roce_dev*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
