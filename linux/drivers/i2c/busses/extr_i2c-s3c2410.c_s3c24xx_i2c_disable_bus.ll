; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_disable_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_disable_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i64 }

@S3C2410_IICSTAT = common dso_local global i64 0, align 8
@S3C2410_IICSTAT_TXRXEN = common dso_local global i64 0, align 8
@S3C2410_IICCON = common dso_local global i64 0, align 8
@S3C2410_IICCON_IRQEN = common dso_local global i64 0, align 8
@S3C2410_IICCON_IRQPEND = common dso_local global i64 0, align 8
@S3C2410_IICCON_ACKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_i2c*)* @s3c24xx_i2c_disable_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_i2c_disable_bus(%struct.s3c24xx_i2c* %0) #0 {
  %2 = alloca %struct.s3c24xx_i2c*, align 8
  %3 = alloca i64, align 8
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %2, align 8
  %4 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %5 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @S3C2410_IICSTAT, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @readl(i64 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* @S3C2410_IICSTAT_TXRXEN, align 8
  %11 = xor i64 %10, -1
  %12 = load i64, i64* %3, align 8
  %13 = and i64 %12, %11
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %16 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @S3C2410_IICSTAT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i64 %14, i64 %19)
  %21 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @S3C2410_IICCON, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @readl(i64 %25)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* @S3C2410_IICCON_IRQEN, align 8
  %28 = load i64, i64* @S3C2410_IICCON_IRQPEND, align 8
  %29 = or i64 %27, %28
  %30 = load i64, i64* @S3C2410_IICCON_ACKEN, align 8
  %31 = or i64 %29, %30
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %3, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %37 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @S3C2410_IICCON, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i64 %35, i64 %40)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
