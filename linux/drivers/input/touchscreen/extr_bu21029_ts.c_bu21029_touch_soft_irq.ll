; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21029_ts.c_bu21029_touch_soft_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21029_ts.c_bu21029_touch_soft_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bu21029_ts_data = type { i32, i32 }

@BUF_LEN = common dso_local global i32 0, align 4
@BU21029_AUTOSCAN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PEN_UP_TIMEOUT_MS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bu21029_touch_soft_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bu21029_touch_soft_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bu21029_ts_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bu21029_ts_data*
  store %struct.bu21029_ts_data* %10, %struct.bu21029_ts_data** %5, align 8
  %11 = load i32, i32* @BUF_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %5, align 8
  %16 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BU21029_AUTOSCAN, align 4
  %19 = mul nuw i64 4, %12
  %20 = trunc i64 %19 to i32
  %21 = call i32 @i2c_smbus_read_i2c_block_data(i32 %17, i32 %18, i32 %20, i32* %14)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %5, align 8
  %27 = call i32 @bu21029_touch_report(%struct.bu21029_ts_data* %26, i32* %14)
  %28 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %5, align 8
  %29 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %28, i32 0, i32 0
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i32, i32* @PEN_UP_TIMEOUT_MS, align 4
  %32 = call i64 @msecs_to_jiffies(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @mod_timer(i32* %29, i64 %33)
  br label %35

35:                                               ; preds = %25, %24
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  %37 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %37)
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i32*) #2

declare dso_local i32 @bu21029_touch_report(%struct.bu21029_ts_data*, i32*) #2

declare dso_local i32 @mod_timer(i32*, i64) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
