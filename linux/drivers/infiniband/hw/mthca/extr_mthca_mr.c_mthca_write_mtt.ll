; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_write_mtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_write_mtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.mthca_mtt = type { i32 }

@MTHCA_FLAG_FMR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_write_mtt(%struct.mthca_dev* %0, %struct.mthca_mtt* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_dev*, align 8
  %8 = alloca %struct.mthca_mtt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %7, align 8
  store %struct.mthca_mtt* %1, %struct.mthca_mtt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %15 = call i32 @mthca_write_mtt_size(%struct.mthca_dev* %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %17 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %21 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = icmp ne i32* %19, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %5
  %25 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %26 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MTHCA_FLAG_FMR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24, %5
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %33 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @__mthca_write_mtt(%struct.mthca_dev* %32, %struct.mthca_mtt* %33, i32 %34, i32* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %75

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @min(i32 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %47 = call i64 @mthca_is_memfree(%struct.mthca_dev* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %51 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @mthca_arbel_write_mtt_seg(%struct.mthca_dev* %50, %struct.mthca_mtt* %51, i32 %52, i32* %53, i32 %54)
  br label %63

56:                                               ; preds = %42
  %57 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %58 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @mthca_tavor_write_mtt_seg(%struct.mthca_dev* %57, %struct.mthca_mtt* %58, i32 %59, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %49
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %10, align 8
  br label %39

74:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %31
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @mthca_write_mtt_size(%struct.mthca_dev*) #1

declare dso_local i32 @__mthca_write_mtt(%struct.mthca_dev*, %struct.mthca_mtt*, i32, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_arbel_write_mtt_seg(%struct.mthca_dev*, %struct.mthca_mtt*, i32, i32*, i32) #1

declare dso_local i32 @mthca_tavor_write_mtt_seg(%struct.mthca_dev*, %struct.mthca_mtt*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
