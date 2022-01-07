; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_catas.c_poll_catas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_catas.c_poll_catas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mthca_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.timer_list = type { i32 }

@catas_err = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@jiffies = common dso_local global i64 0, align 8
@MTHCA_CATAS_POLL_INTERVAL = common dso_local global i64 0, align 8
@dev = common dso_local global %struct.mthca_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @poll_catas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_catas(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %6 = ptrtoint %struct.mthca_dev* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @catas_err, i32 0, i32 0), align 4
  %9 = call %struct.mthca_dev* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.mthca_dev* %9, %struct.mthca_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %10
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i64 @readl(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %29 = call i32 @handle_catas(%struct.mthca_dev* %28)
  br label %43

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* @MTHCA_CATAS_POLL_INTERVAL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @round_jiffies(i64 %40)
  %42 = call i32 @mod_timer(i32* %37, i32 %41)
  br label %43

43:                                               ; preds = %34, %27
  ret void
}

declare dso_local %struct.mthca_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @handle_catas(%struct.mthca_dev*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
