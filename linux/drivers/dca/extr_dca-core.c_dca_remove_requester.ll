; ModuleID = '/home/carl/AnghaBench/linux/drivers/dca/extr_dca-core.c_dca_remove_requester.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dca/extr_dca-core.c_dca_remove_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dca_provider = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dca_provider*, %struct.device*)* }

@EFAULT = common dso_local global i32 0, align 4
@dca_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dca_remove_requester(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dca_provider*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EFAULT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @raw_spin_lock_irqsave(i32* @dca_lock, i64 %13)
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.dca_provider* @dca_find_provider_by_dev(%struct.device* %15)
  store %struct.dca_provider* %16, %struct.dca_provider** %4, align 8
  %17 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %18 = icmp ne %struct.dca_provider* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @raw_spin_unlock_irqrestore(i32* @dca_lock, i64 %20)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %12
  %25 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %26 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dca_provider*, %struct.device*)*, i32 (%struct.dca_provider*, %struct.device*)** %28, align 8
  %30 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 %29(%struct.dca_provider* %30, %struct.device* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @raw_spin_unlock_irqrestore(i32* @dca_lock, i64 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %24
  %40 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dca_sysfs_remove_req(%struct.dca_provider* %40, i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %37, %19, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.dca_provider* @dca_find_provider_by_dev(%struct.device*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dca_sysfs_remove_req(%struct.dca_provider*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
