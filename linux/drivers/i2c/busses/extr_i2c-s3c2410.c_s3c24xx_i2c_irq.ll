; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i64, i64, i32 }

@S3C2410_IICSTAT = common dso_local global i64 0, align 8
@S3C2410_IICSTAT_ARBITR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"deal with arbitration loss\0A\00", align 1
@STATE_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"IRQ: error i2c->state == IDLE\0A\00", align 1
@S3C2410_IICCON = common dso_local global i64 0, align 8
@S3C2410_IICCON_IRQPEND = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c24xx_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s3c24xx_i2c*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.s3c24xx_i2c*
  store %struct.s3c24xx_i2c* %9, %struct.s3c24xx_i2c** %5, align 8
  %10 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %11 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @S3C2410_IICSTAT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @readl(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @S3C2410_IICSTAT_ARBITR, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %27 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STATE_IDLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %37 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @S3C2410_IICCON, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i64 @readl(i64 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* @S3C2410_IICCON_IRQPEND, align 8
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %7, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %48 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @S3C2410_IICCON, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i64 %46, i64 %51)
  br label %57

53:                                               ; preds = %25
  %54 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @i2c_s3c_irq_nextbyte(%struct.s3c24xx_i2c* %54, i64 %55)
  br label %57

57:                                               ; preds = %53, %31
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %58
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @i2c_s3c_irq_nextbyte(%struct.s3c24xx_i2c*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
