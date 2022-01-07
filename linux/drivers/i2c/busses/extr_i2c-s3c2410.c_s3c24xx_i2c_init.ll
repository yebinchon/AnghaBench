; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i64, i32, %struct.s3c2410_platform_i2c* }
%struct.s3c2410_platform_i2c = type { i32 }

@S3C2410_IICADD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"slave address 0x%02x\0A\00", align 1
@S3C2410_IICCON = common dso_local global i64 0, align 8
@S3C2410_IICSTAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot meet bus frequency required\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"bus frequency set to %d KHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"S3C2410_IICCON=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_i2c*)* @s3c24xx_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_init(%struct.s3c24xx_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3c24xx_i2c*, align 8
  %4 = alloca %struct.s3c2410_platform_i2c*, align 8
  %5 = alloca i32, align 4
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %3, align 8
  %6 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %6, i32 0, i32 2
  %8 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %7, align 8
  store %struct.s3c2410_platform_i2c* %8, %struct.s3c2410_platform_i2c** %4, align 8
  %9 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %4, align 8
  %10 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @S3C2410_IICADD, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writeb(i32 %11, i64 %16)
  %18 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %4, align 8
  %22 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_info(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %26 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @S3C2410_IICCON, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 0, i64 %29)
  %31 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %32 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @S3C2410_IICSTAT, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 0, i64 %35)
  %37 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %38 = call i64 @s3c24xx_i2c_clockrate(%struct.s3c24xx_i2c* %37, i32* %5)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %1
  %41 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %42 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %63

47:                                               ; preds = %1
  %48 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %49 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dev_info(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %54 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %57 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @S3C2410_IICCON, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl(i64 %60)
  %62 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %47, %40
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @s3c24xx_i2c_clockrate(%struct.s3c24xx_i2c*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
