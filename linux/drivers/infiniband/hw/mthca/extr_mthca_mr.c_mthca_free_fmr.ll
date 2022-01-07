; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_free_fmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_free_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_fmr = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_free_fmr(%struct.mthca_dev* %0, %struct.mthca_fmr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.mthca_fmr*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.mthca_fmr* %1, %struct.mthca_fmr** %5, align 8
  %6 = load %struct.mthca_fmr*, %struct.mthca_fmr** %5, align 8
  %7 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %15 = load %struct.mthca_fmr*, %struct.mthca_fmr** %5, align 8
  %16 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mthca_free_region(%struct.mthca_dev* %14, i32 %18)
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %21 = load %struct.mthca_fmr*, %struct.mthca_fmr** %5, align 8
  %22 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mthca_free_mtt(%struct.mthca_dev* %20, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %13, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @mthca_free_region(%struct.mthca_dev*, i32) #1

declare dso_local i32 @mthca_free_mtt(%struct.mthca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
