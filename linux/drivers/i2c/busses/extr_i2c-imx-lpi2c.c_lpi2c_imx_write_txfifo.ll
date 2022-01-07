; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_write_txfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_write_txfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpi2c_imx_struct = type { i32, i64, i64, i32*, i32, i64 }

@LPI2C_MFSR = common dso_local global i64 0, align 8
@LPI2C_MTDR = common dso_local global i64 0, align 8
@MIER_TDIE = common dso_local global i32 0, align 4
@MIER_NDIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpi2c_imx_struct*)* @lpi2c_imx_write_txfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpi2c_imx_write_txfifo(%struct.lpi2c_imx_struct* %0) #0 {
  %2 = alloca %struct.lpi2c_imx_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lpi2c_imx_struct* %0, %struct.lpi2c_imx_struct** %2, align 8
  %5 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %6 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @LPI2C_MFSR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  %11 = and i32 %10, 255
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %15 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %20 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %23 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %46

27:                                               ; preds = %18
  %28 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %29 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %32 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = getelementptr inbounds i32, i32* %30, i64 %33
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %39 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LPI2C_MTDR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %12

46:                                               ; preds = %26, %12
  %47 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %48 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %51 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %56 = load i32, i32* @MIER_TDIE, align 4
  %57 = load i32, i32* @MIER_NDIE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @lpi2c_imx_intctrl(%struct.lpi2c_imx_struct* %55, i32 %58)
  br label %64

60:                                               ; preds = %46
  %61 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %62 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %61, i32 0, i32 4
  %63 = call i32 @complete(i32* %62)
  br label %64

64:                                               ; preds = %60, %54
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @lpi2c_imx_intctrl(%struct.lpi2c_imx_struct*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
