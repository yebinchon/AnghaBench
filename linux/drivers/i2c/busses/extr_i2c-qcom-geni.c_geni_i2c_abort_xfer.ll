; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_abort_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_abort_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_i2c_dev = type { %struct.TYPE_2__, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i64 }

@ABORT_TIMEOUT = common dso_local global i64 0, align 8
@GENI_TIMEOUT = common dso_local global i32 0, align 4
@SE_GENI_M_IRQ_STATUS = common dso_local global i64 0, align 8
@M_CMD_ABORT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Timeout abort_m_cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.geni_i2c_dev*)* @geni_i2c_abort_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geni_i2c_abort_xfer(%struct.geni_i2c_dev* %0) #0 {
  %2 = alloca %struct.geni_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.geni_i2c_dev* %0, %struct.geni_i2c_dev** %2, align 8
  %6 = load i64, i64* @ABORT_TIMEOUT, align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %8 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %7, i32 0, i32 2
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %12 = load i32, i32* @GENI_TIMEOUT, align 4
  %13 = call i32 @geni_i2c_err(%struct.geni_i2c_dev* %11, i32 %12)
  %14 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %15 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %17 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %16, i32 0, i32 0
  %18 = call i32 @geni_se_abort_m_cmd(%struct.TYPE_2__* %17)
  %19 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %20 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %19, i32 0, i32 2
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  br label %23

23:                                               ; preds = %43, %1
  %24 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %25 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @wait_for_completion_timeout(i32* %25, i64 %26)
  store i64 %27, i64* %4, align 8
  %28 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %29 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SE_GENI_M_IRQ_STATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl_relaxed(i64 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @M_CMD_ABORT_EN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i1 [ false, %35 ], [ %42, %40 ]
  br i1 %44, label %23, label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @M_CMD_ABORT_EN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %52 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %50, %45
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @geni_i2c_err(%struct.geni_i2c_dev*, i32) #1

declare dso_local i32 @geni_se_abort_m_cmd(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
