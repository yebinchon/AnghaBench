; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_wait_for_reset_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_wait_for_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32 }

@EFA_REGS_DEV_STS_OFF = common dso_local global i32 0, align 4
@EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Reset indication val %d\0A\00", align 1
@EFA_POLL_INTERVAL_MS = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_com_dev*, i64, i64)* @wait_for_reset_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_reset_state(%struct.efa_com_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efa_com_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %16 = load i32, i32* @EFA_REGS_DEV_STS_OFF, align 4
  %17 = call i64 @efa_com_reg_read32(%struct.efa_com_dev* %15, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %38

24:                                               ; preds = %14
  %25 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %26 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @ibdev_dbg(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EFA_POLL_INTERVAL_MS, align 4
  %31 = call i32 @msleep(i32 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %10

35:                                               ; preds = %10
  %36 = load i32, i32* @ETIME, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %23
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @efa_com_reg_read32(%struct.efa_com_dev*, i32) #1

declare dso_local i32 @ibdev_dbg(i32, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
