; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_av.c_mthca_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_av.c_mthca_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_get_rate(%struct.mthca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @ib_rate_to_mult(i32 %12)
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %15 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %13, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %55

24:                                               ; preds = %11
  %25 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %26 = call i64 @mthca_is_memfree(%struct.mthca_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @ib_rate_to_mult(i32 %29)
  %31 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %32 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ib_rate_to_memfree(i64 %30, i64 %38)
  store i32 %39, i32* %8, align 4
  br label %43

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ib_rate_to_tavor(i32 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %28
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %45 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %23
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @ib_rate_to_mult(i32) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @ib_rate_to_memfree(i64, i64) #1

declare dso_local i32 @ib_rate_to_tavor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
