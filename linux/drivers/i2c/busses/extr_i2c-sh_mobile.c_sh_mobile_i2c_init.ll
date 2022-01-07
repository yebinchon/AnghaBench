; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i32, i64, i32, i32, i32, i32 }

@STANDARD_MODE = common dso_local global i64 0, align 8
@FAST_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"unrecognized bus speed %lu Hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_i2c_data*)* @sh_mobile_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_init(%struct.sh_mobile_i2c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mobile_i2c_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %3, align 8
  %8 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %9 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_get_rate(i32 %10)
  %12 = sdiv i32 %11, 1000
  %13 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %14 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %12, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  %18 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STANDARD_MODE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 47, i32* %6, align 4
  store i32 40, i32* %5, align 4
  store i32 3, i32* %7, align 4
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %26 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FAST_MODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 13, i32* %6, align 4
  store i32 6, i32* %5, align 4
  store i32 3, i32* %7, align 4
  br label %41

31:                                               ; preds = %24
  %32 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %33 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %36 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %57

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @sh_mobile_i2c_iccl(i64 %43, i32 %44, i32 %45)
  %47 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %48 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @sh_mobile_i2c_icch(i64 %49, i32 %50, i32 %51)
  %53 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %54 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %56 = call i32 @sh_mobile_i2c_check_timing(%struct.sh_mobile_i2c_data* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %42, %31
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @sh_mobile_i2c_iccl(i64, i32, i32) #1

declare dso_local i32 @sh_mobile_i2c_icch(i64, i32, i32) #1

declare dso_local i32 @sh_mobile_i2c_check_timing(%struct.sh_mobile_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
