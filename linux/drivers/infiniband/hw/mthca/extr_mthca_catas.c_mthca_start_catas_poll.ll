; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_catas.c_mthca_start_catas_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_catas.c_mthca_start_catas_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_5__ = type { i64 }

@poll_catas = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"couldn't map catastrophic error region at 0x%llx/0x%x\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@MTHCA_CATAS_POLL_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_start_catas_poll(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %4 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = load i32, i32* @poll_catas, align 4
  %8 = call i32 @timer_setup(%struct.TYPE_5__* %6, i32 %7, i32 0)
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  store i32* null, i32** %11, align 8
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @pci_resource_start(i32 %14, i32 0)
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %17 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pci_resource_len(i32 %18, i32 0)
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %22 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %20, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %15, %26
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %30 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 4
  %34 = call i32* @ioremap(i64 %28, i32 %33)
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %36 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i32* %34, i32** %37, align 8
  %38 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %39 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %1
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %47 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 4
  %51 = call i32 @mthca_warn(%struct.mthca_dev* %44, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %50)
  br label %68

52:                                               ; preds = %1
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i64, i64* @MTHCA_CATAS_POLL_INTERVAL, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %57 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i64 %55, i64* %59, align 8
  %60 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %61 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %65 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = call i32 @add_timer(%struct.TYPE_5__* %66)
  br label %68

68:                                               ; preds = %52, %43
  ret void
}

declare dso_local i32 @timer_setup(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
