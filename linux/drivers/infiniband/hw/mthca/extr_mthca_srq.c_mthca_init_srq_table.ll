; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_init_srq_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_init_srq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@MTHCA_FLAG_SRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_init_srq_table(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MTHCA_FLAG_SRQ, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mthca_alloc_init(i32* %19, i64 %23, i64 %28, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %12
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %56

38:                                               ; preds = %12
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @mthca_array_init(i32* %41, i64 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @mthca_alloc_cleanup(i32* %52)
  br label %54

54:                                               ; preds = %49, %38
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %36, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mthca_alloc_init(i32*, i64, i64, i32) #1

declare dso_local i32 @mthca_array_init(i32*, i64) #1

declare dso_local i32 @mthca_alloc_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
