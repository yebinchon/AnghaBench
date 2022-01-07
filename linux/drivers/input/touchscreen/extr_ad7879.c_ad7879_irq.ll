; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7879.c_ad7879_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7879.c_ad7879_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7879 = type { i32, i32, i32, i32 }

@AD7879_REG_XPLUS = common dso_local global i32 0, align 4
@AD7879_NR_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to read %#02x: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@TS_PEN_UP_TIMEOUT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ad7879_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7879_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ad7879*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ad7879*
  store %struct.ad7879* %8, %struct.ad7879** %5, align 8
  %9 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %10 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AD7879_REG_XPLUS, align 4
  %13 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %14 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AD7879_NR_SENSE, align 4
  %17 = call i32 @regmap_bulk_read(i32 %11, i32 %12, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %22 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AD7879_REG_XPLUS, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_err_ratelimited(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %29 = call i32 @ad7879_report(%struct.ad7879* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %33 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %32, i32 0, i32 0
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* @TS_PEN_UP_TIMEOUT, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @mod_timer(i32* %33, i64 %36)
  br label %38

38:                                               ; preds = %31, %27
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, i32) #1

declare dso_local i32 @ad7879_report(%struct.ad7879*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
