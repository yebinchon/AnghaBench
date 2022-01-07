; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cht-wc.c_cht_wc_i2c_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cht-wc.c_cht_wc_i2c_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.cht_wc_i2c_adap = type { i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CHT_WC_EXTCHGRIRQ_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error writing EXTCHGRIRQ_MSK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @cht_wc_i2c_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cht_wc_i2c_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.cht_wc_i2c_adap*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.cht_wc_i2c_adap* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.cht_wc_i2c_adap* %6, %struct.cht_wc_i2c_adap** %3, align 8
  %7 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %3, align 8
  %8 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %3, align 8
  %11 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  %15 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %3, align 8
  %16 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CHT_WC_EXTCHGRIRQ_MSK, align 4
  %19 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %3, align 8
  %20 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @regmap_write(i32 %17, i32 %18, i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %3, align 8
  %27 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %3, align 8
  %30 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %36

31:                                               ; preds = %14
  %32 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %3, align 8
  %33 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %25
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %3, align 8
  %39 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %38, i32 0, i32 2
  %40 = call i32 @mutex_unlock(i32* %39)
  ret void
}

declare dso_local %struct.cht_wc_i2c_adap* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
