; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_is_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_is_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i32, i64 }

@S3C2410_IICCON = common dso_local global i64 0, align 8
@S3C2410_IICCON_IRQPEND = common dso_local global i32 0, align 4
@S3C2410_IICSTAT = common dso_local global i64 0, align 8
@S3C2410_IICSTAT_LASTBIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ack was not received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_i2c*)* @is_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ack(%struct.s3c24xx_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3c24xx_i2c*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %3, align 8
  store i32 50, i32* %4, align 4
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %5
  %9 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %10 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @S3C2410_IICCON, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  %15 = load i32, i32* @S3C2410_IICCON_IRQPEND, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %8
  %19 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %20 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @S3C2410_IICSTAT, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = load i32, i32* @S3C2410_IICSTAT_LASTBIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %40

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %8
  %31 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %5

35:                                               ; preds = %5
  %36 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %37 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %28
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
