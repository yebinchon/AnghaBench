; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_read_mag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_read_mag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rm3100_data = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@RM3100_REG_POLL = common dso_local global i32 0, align 4
@RM3100_REG_MX2 = common dso_local global i64 0, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rm3100_data*, i32, i32*)* @rm3100_read_mag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm3100_read_mag(%struct.rm3100_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rm3100_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.rm3100_data* %0, %struct.rm3100_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.rm3100_data*, %struct.rm3100_data** %5, align 8
  %12 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %11, i32 0, i32 1
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %8, align 8
  %14 = load %struct.rm3100_data*, %struct.rm3100_data** %5, align 8
  %15 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.regmap*, %struct.regmap** %8, align 8
  %18 = load i32, i32* @RM3100_REG_POLL, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 4, %19
  %21 = call i32 @BIT(i32 %20)
  %22 = call i32 @regmap_write(%struct.regmap* %17, i32 %18, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %61

26:                                               ; preds = %3
  %27 = load %struct.rm3100_data*, %struct.rm3100_data** %5, align 8
  %28 = call i32 @rm3100_wait_measurement(%struct.rm3100_data* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %61

32:                                               ; preds = %26
  %33 = load %struct.regmap*, %struct.regmap** %8, align 8
  %34 = load i64, i64* @RM3100_REG_MX2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 3, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %40 = call i32 @regmap_bulk_read(%struct.regmap* %33, i64 %38, i32* %39, i32 3)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %61

44:                                               ; preds = %32
  %45 = load %struct.rm3100_data*, %struct.rm3100_data** %5, align 8
  %46 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 16
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %50, %53
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %54, %56
  %58 = call i32 @sign_extend32(i32 %57, i32 23)
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %43, %31, %25
  %62 = load %struct.rm3100_data*, %struct.rm3100_data** %5, align 8
  %63 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %44
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rm3100_wait_measurement(%struct.rm3100_data*) #1

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i64, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
