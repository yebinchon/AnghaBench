; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpi2c_imx_struct = type { i32, i32 }

@STARDARD_MAX_BITRATE = common dso_local global i32 0, align 4
@STANDARD = common dso_local global i32 0, align 4
@FAST_MAX_BITRATE = common dso_local global i32 0, align 4
@FAST = common dso_local global i32 0, align 4
@FAST_PLUS_MAX_BITRATE = common dso_local global i32 0, align 4
@FAST_PLUS = common dso_local global i32 0, align 4
@HIGHSPEED_MAX_BITRATE = common dso_local global i32 0, align 4
@HS = common dso_local global i32 0, align 4
@ULTRA_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpi2c_imx_struct*)* @lpi2c_imx_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpi2c_imx_set_mode(%struct.lpi2c_imx_struct* %0) #0 {
  %2 = alloca %struct.lpi2c_imx_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lpi2c_imx_struct* %0, %struct.lpi2c_imx_struct** %2, align 8
  %5 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %6 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @STARDARD_MAX_BITRATE, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @STANDARD, align 4
  store i32 %12, i32* %4, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @FAST_MAX_BITRATE, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @FAST, align 4
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @FAST_PLUS_MAX_BITRATE, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @FAST_PLUS, align 4
  store i32 %24, i32* %4, align 4
  br label %34

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @HIGHSPEED_MAX_BITRATE, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @HS, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ULTRA_FAST, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34, %17
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %39 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
