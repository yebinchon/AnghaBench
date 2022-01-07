; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_wait_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"waiting for bus idle\0A\00", align 1
@S3C2410_IICSTAT = common dso_local global i64 0, align 8
@S3C2410_IICSTAT_START = common dso_local global i64 0, align 8
@S3C2410_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"timeout waiting for bus idle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_i2c*)* @s3c24xx_i2c_wait_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_i2c_wait_idle(%struct.s3c24xx_i2c* %0) #0 {
  %2 = alloca %struct.s3c24xx_i2c*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %2, align 8
  %8 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %9 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @ktime_get()
  store i32 %12, i32* %5, align 4
  store i32 %12, i32* %4, align 4
  store i32 3, i32* %7, align 4
  %13 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %14 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @S3C2410_IICSTAT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @readl(i64 %17)
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %30, %1
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @S3C2410_IICSTAT_START, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %30, label %38

30:                                               ; preds = %28
  %31 = call i32 (...) @cpu_relax()
  %32 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @S3C2410_IICSTAT, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i64 @readl(i64 %36)
  store i64 %37, i64* %3, align 8
  br label %19

38:                                               ; preds = %28
  store i64 1, i64* %6, align 8
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @S3C2410_IICSTAT_START, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ktime_us_delta(i32 %45, i32 %46)
  %48 = load i32, i32* @S3C2410_IDLE_TIMEOUT, align 4
  %49 = icmp slt i32 %47, %48
  br label %50

50:                                               ; preds = %44, %39
  %51 = phi i1 [ false, %39 ], [ %49, %44 ]
  br i1 %51, label %52, label %74

52:                                               ; preds = %50
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = mul i64 2, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @usleep_range(i64 %53, i32 %56)
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @S3C2410_IDLE_TIMEOUT, align 4
  %60 = sdiv i32 %59, 10
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i64, i64* %6, align 8
  %65 = shl i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %63, %52
  %67 = call i32 (...) @ktime_get()
  store i32 %67, i32* %5, align 4
  %68 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %69 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @S3C2410_IICSTAT, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i64 @readl(i64 %72)
  store i64 %73, i64* %3, align 8
  br label %39

74:                                               ; preds = %50
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @S3C2410_IICSTAT_START, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %2, align 8
  %81 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_warn(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %74
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @usleep_range(i64, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
