; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i32, i32, i64, i32 }

@S3C2410_IICSTAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"STOP\0A\00", align 1
@QUIRK_HDMIPHY = common dso_local global i32 0, align 4
@S3C2410_IICSTAT_TXRXEN = common dso_local global i64 0, align 8
@S3C2410_IICSTAT_START = common dso_local global i64 0, align 8
@STATE_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_i2c*, i32)* @s3c24xx_i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_i2c_stop(%struct.s3c24xx_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c24xx_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @S3C2410_IICSTAT, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @readl(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @QUIRK_HDMIPHY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i64, i64* @S3C2410_IICSTAT_TXRXEN, align 8
  %24 = xor i64 %23, -1
  %25 = load i64, i64* %5, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %5, align 8
  br label %32

27:                                               ; preds = %2
  %28 = load i64, i64* @S3C2410_IICSTAT_START, align 8
  %29 = xor i64 %28, -1
  %30 = load i64, i64* %5, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %35 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @S3C2410_IICSTAT, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i64 %33, i64 %38)
  %40 = load i32, i32* @STATE_STOP, align 4
  %41 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %42 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @s3c24xx_i2c_master_complete(%struct.s3c24xx_i2c* %43, i32 %44)
  %46 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %47 = call i32 @s3c24xx_i2c_disable_irq(%struct.s3c24xx_i2c* %46)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @s3c24xx_i2c_master_complete(%struct.s3c24xx_i2c*, i32) #1

declare dso_local i32 @s3c24xx_i2c_disable_irq(%struct.s3c24xx_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
