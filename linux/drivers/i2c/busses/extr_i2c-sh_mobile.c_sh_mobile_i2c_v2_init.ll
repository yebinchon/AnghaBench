; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_v2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_v2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i64, i32, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_i2c_data*)* @sh_mobile_i2c_v2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_v2_init(%struct.sh_mobile_i2c_data* %0) #0 {
  %2 = alloca %struct.sh_mobile_i2c_data*, align 8
  %3 = alloca i64, align 8
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %2, align 8
  %4 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %5 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @clk_get_rate(i32 %6)
  %8 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %9 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = udiv i64 %7, %10
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = mul i64 %12, 5
  %14 = udiv i64 %13, 9
  %15 = sub i64 %14, 1
  %16 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %17 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @DIV_ROUND_UP(i64 %15, i32 %18)
  %20 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %21 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* %3, align 8
  %23 = mul i64 %22, 4
  %24 = udiv i64 %23, 9
  %25 = sub i64 %24, 5
  %26 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %27 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @DIV_ROUND_UP(i64 %25, i32 %28)
  %30 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %31 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %33 = call i32 @sh_mobile_i2c_check_timing(%struct.sh_mobile_i2c_data* %32)
  ret i32 %33
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i8* @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @sh_mobile_i2c_check_timing(%struct.sh_mobile_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
