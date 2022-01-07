; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_core.c_chcr_detach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_core.c_chcr_detach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uld_ctx = type { %struct.chcr_dev }
%struct.chcr_dev = type { i64, i32, i32, i32 }

@CHCR_DETACH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Detached Event received for already detach device\0A\00", align 1
@WQ_DETACH_TM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uld_ctx*)* @chcr_detach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chcr_detach_device(%struct.uld_ctx* %0) #0 {
  %2 = alloca %struct.uld_ctx*, align 8
  %3 = alloca %struct.chcr_dev*, align 8
  store %struct.uld_ctx* %0, %struct.uld_ctx** %2, align 8
  %4 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %4, i32 0, i32 0
  store %struct.chcr_dev* %5, %struct.chcr_dev** %3, align 8
  %6 = load %struct.chcr_dev*, %struct.chcr_dev** %3, align 8
  %7 = getelementptr inbounds %struct.chcr_dev, %struct.chcr_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CHCR_DETACH, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %32

13:                                               ; preds = %1
  %14 = load i64, i64* @CHCR_DETACH, align 8
  %15 = load %struct.chcr_dev*, %struct.chcr_dev** %3, align 8
  %16 = getelementptr inbounds %struct.chcr_dev, %struct.chcr_dev* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.chcr_dev*, %struct.chcr_dev** %3, align 8
  %18 = getelementptr inbounds %struct.chcr_dev, %struct.chcr_dev* %17, i32 0, i32 3
  %19 = call i64 @atomic_read(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load %struct.chcr_dev*, %struct.chcr_dev** %3, align 8
  %23 = getelementptr inbounds %struct.chcr_dev, %struct.chcr_dev* %22, i32 0, i32 2
  %24 = load i32, i32* @WQ_DETACH_TM, align 4
  %25 = call i32 @schedule_delayed_work(i32* %23, i32 %24)
  %26 = load %struct.chcr_dev*, %struct.chcr_dev** %3, align 8
  %27 = getelementptr inbounds %struct.chcr_dev, %struct.chcr_dev* %26, i32 0, i32 1
  %28 = call i32 @wait_for_completion(i32* %27)
  br label %29

29:                                               ; preds = %21, %13
  %30 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %31 = call i32 @chcr_dev_move(%struct.uld_ctx* %30)
  br label %32

32:                                               ; preds = %29, %11
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @chcr_dev_move(%struct.uld_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
