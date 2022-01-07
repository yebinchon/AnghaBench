; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_write_mtt_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_write_mtt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@MTHCA_FLAG_FMR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_write_mtt_size(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %4 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %5 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = icmp ne i32* %7, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MTHCA_FLAG_FMR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12, %1
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = sub i64 %22, 2
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %12
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %27 = call i64 @mthca_is_memfree(%struct.mthca_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 4
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i64 [ %32, %29 ], [ 134217727, %33 ]
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %19
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
