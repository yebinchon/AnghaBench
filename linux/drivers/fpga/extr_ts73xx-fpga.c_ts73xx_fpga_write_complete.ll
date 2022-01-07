; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_ts73xx-fpga.c_ts73xx_fpga_write_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_ts73xx-fpga.c_ts73xx_fpga_write_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.ts73xx_fpga_priv* }
%struct.ts73xx_fpga_priv = type { i64 }
%struct.fpga_image_info = type { i32 }

@TS73XX_FPGA_CONFIG_REG = common dso_local global i64 0, align 8
@TS73XX_FPGA_CONFIG_LOAD = common dso_local global i32 0, align 4
@TS73XX_FPGA_LOAD_OK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*)* @ts73xx_fpga_write_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts73xx_fpga_write_complete(%struct.fpga_manager* %0, %struct.fpga_image_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpga_manager*, align 8
  %5 = alloca %struct.fpga_image_info*, align 8
  %6 = alloca %struct.ts73xx_fpga_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %4, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %5, align 8
  %8 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %9 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %8, i32 0, i32 0
  %10 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %9, align 8
  store %struct.ts73xx_fpga_priv* %10, %struct.ts73xx_fpga_priv** %6, align 8
  %11 = call i32 @usleep_range(i32 1000, i32 2000)
  %12 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %6, align 8
  %13 = getelementptr inbounds %struct.ts73xx_fpga_priv, %struct.ts73xx_fpga_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TS73XX_FPGA_CONFIG_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readb(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @TS73XX_FPGA_CONFIG_LOAD, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ts73xx_fpga_priv, %struct.ts73xx_fpga_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TS73XX_FPGA_CONFIG_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writeb(i32 %21, i64 %26)
  %28 = call i32 @usleep_range(i32 1000, i32 2000)
  %29 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ts73xx_fpga_priv, %struct.ts73xx_fpga_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TS73XX_FPGA_CONFIG_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readb(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @TS73XX_FPGA_CONFIG_LOAD, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %6, align 8
  %41 = getelementptr inbounds %struct.ts73xx_fpga_priv, %struct.ts73xx_fpga_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TS73XX_FPGA_CONFIG_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writeb(i32 %39, i64 %44)
  %46 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %6, align 8
  %47 = getelementptr inbounds %struct.ts73xx_fpga_priv, %struct.ts73xx_fpga_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TS73XX_FPGA_CONFIG_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readb(i64 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @TS73XX_FPGA_LOAD_OK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @TS73XX_FPGA_LOAD_OK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %2
  %58 = load i32, i32* @ETIMEDOUT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
