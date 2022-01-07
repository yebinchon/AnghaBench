; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_ts73xx-fpga.c_ts73xx_fpga_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_ts73xx-fpga.c_ts73xx_fpga_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.ts73xx_fpga_priv* }
%struct.ts73xx_fpga_priv = type { i64 }

@TS73XX_FPGA_CONFIG_REG = common dso_local global i64 0, align 8
@TS73XX_FPGA_WRITE_DONE = common dso_local global i32 0, align 4
@TS73XX_FPGA_WRITE_DONE_TIMEOUT = common dso_local global i32 0, align 4
@TS73XX_FPGA_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, i8*, i64)* @ts73xx_fpga_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts73xx_fpga_write(%struct.fpga_manager* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpga_manager*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ts73xx_fpga_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %13 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %12, i32 0, i32 0
  %14 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %13, align 8
  store %struct.ts73xx_fpga_priv* %14, %struct.ts73xx_fpga_priv** %8, align 8
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %38, %3
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %7, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %8, align 8
  %21 = getelementptr inbounds %struct.ts73xx_fpga_priv, %struct.ts73xx_fpga_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TS73XX_FPGA_CONFIG_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @TS73XX_FPGA_WRITE_DONE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @TS73XX_FPGA_WRITE_DONE_TIMEOUT, align 4
  %33 = call i32 @readb_poll_timeout(i64 %24, i32 %25, i32 %31, i32 1, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %52

38:                                               ; preds = %19
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %8, align 8
  %44 = getelementptr inbounds %struct.ts73xx_fpga_priv, %struct.ts73xx_fpga_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TS73XX_FPGA_DATA_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writeb(i8 signext %42, i64 %47)
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %15

51:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @readb_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @writeb(i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
