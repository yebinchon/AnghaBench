; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_da9150-gpadc.c_da9150_gpadc_read_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_da9150-gpadc.c_da9150_gpadc_read_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_gpadc = type { i32, i32, i32, i32 }

@DA9150_GPADC_MAN = common dso_local global i32 0, align 4
@DA9150_GPADC_EN_MASK = common dso_local global i32 0, align 4
@DA9150_GPADC_MUX_SHIFT = common dso_local global i32 0, align 4
@DA9150_GPADC_RES_A = common dso_local global i32 0, align 4
@DA9150_GPADC_RUN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Timeout on channel %d of GPADC\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DA9150_GPADC_RES_L_MASK = common dso_local global i32 0, align 4
@DA9150_GPADC_RES_L_SHIFT = common dso_local global i32 0, align 4
@DA9150_GPADC_RES_L_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9150_gpadc*, i32)* @da9150_gpadc_read_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_gpadc_read_adc(%struct.da9150_gpadc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9150_gpadc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.da9150_gpadc* %0, %struct.da9150_gpadc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %4, align 8
  %9 = getelementptr inbounds %struct.da9150_gpadc, %struct.da9150_gpadc* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %4, align 8
  %12 = getelementptr inbounds %struct.da9150_gpadc, %struct.da9150_gpadc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DA9150_GPADC_MAN, align 4
  %15 = load i32, i32* @DA9150_GPADC_EN_MASK, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DA9150_GPADC_MUX_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  %20 = call i32 @da9150_reg_write(i32 %13, i32 %14, i32 %19)
  %21 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %4, align 8
  %22 = getelementptr inbounds %struct.da9150_gpadc, %struct.da9150_gpadc* %21, i32 0, i32 3
  %23 = call i32 @try_wait_for_completion(i32* %22)
  %24 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %4, align 8
  %25 = getelementptr inbounds %struct.da9150_gpadc, %struct.da9150_gpadc* %24, i32 0, i32 3
  %26 = call i32 @msecs_to_jiffies(i32 5)
  %27 = call i32 @wait_for_completion_timeout(i32* %25, i32 %26)
  %28 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %4, align 8
  %29 = getelementptr inbounds %struct.da9150_gpadc, %struct.da9150_gpadc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DA9150_GPADC_RES_A, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %33 = call i32 @da9150_bulk_read(i32 %30, i32 %31, i32 2, i32* %32)
  %34 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %4, align 8
  %35 = getelementptr inbounds %struct.da9150_gpadc, %struct.da9150_gpadc* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DA9150_GPADC_RUN_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %4, align 8
  %44 = getelementptr inbounds %struct.da9150_gpadc, %struct.da9150_gpadc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %64

50:                                               ; preds = %2
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DA9150_GPADC_RES_L_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @DA9150_GPADC_RES_L_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DA9150_GPADC_RES_L_BITS, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %50, %42
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @da9150_reg_write(i32, i32, i32) #1

declare dso_local i32 @try_wait_for_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @da9150_bulk_read(i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
