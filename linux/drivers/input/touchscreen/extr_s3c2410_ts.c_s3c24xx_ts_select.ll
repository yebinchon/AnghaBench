; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s3c2410_ts.c_s3c24xx_ts_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s3c2410_ts.c_s3c24xx_ts_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.s3c_adc_client = type { i32 }

@S3C2410_ADCTSC_PULL_UP_DISABLE = common dso_local global i32 0, align 4
@AUTOPST = common dso_local global i32 0, align 4
@ts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S3C2410_ADCTSC = common dso_local global i64 0, align 8
@touch_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@WAIT4INT = common dso_local global i32 0, align 4
@INT_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_adc_client*, i32)* @s3c24xx_ts_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_ts_select(%struct.s3c_adc_client* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c_adc_client*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c_adc_client* %0, %struct.s3c_adc_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* @S3C2410_ADCTSC_PULL_UP_DISABLE, align 4
  %9 = load i32, i32* @AUTOPST, align 4
  %10 = or i32 %8, %9
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 0), align 8
  %12 = load i64, i64* @S3C2410_ADCTSC, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %10, i64 %13)
  br label %26

15:                                               ; preds = %2
  %16 = load i64, i64* @jiffies, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i32 @mod_timer(i32* @touch_timer, i64 %17)
  %19 = load i32, i32* @WAIT4INT, align 4
  %20 = load i32, i32* @INT_UP, align 4
  %21 = or i32 %19, %20
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 0), align 8
  %23 = load i64, i64* @S3C2410_ADCTSC, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %21, i64 %24)
  br label %26

26:                                               ; preds = %15, %7
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
