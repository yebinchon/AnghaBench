; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ismt.c_ismt_do_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ismt.c_ismt_do_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ismt_priv = type { i64 }

@ISMT_MSTR_MSTS = common dso_local global i64 0, align 8
@ISMT_MSTS_MIS = common dso_local global i32 0, align 4
@ISMT_MSTS_MEIS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ismt_do_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ismt_do_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ismt_priv*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ismt_priv*
  store %struct.ismt_priv* %9, %struct.ismt_priv** %7, align 8
  %10 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %11 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ISMT_MSTR_MSTS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ISMT_MSTS_MIS, align 4
  %18 = load i32, i32* @ISMT_MSTS_MEIS, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ISMT_MSTS_MIS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ISMT_MSTS_MEIS, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %31 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ISMT_MSTR_MSTS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  br label %36

36:                                               ; preds = %24
  %37 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %38 = call i32 @ismt_handle_isr(%struct.ismt_priv* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %22
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ismt_handle_isr(%struct.ismt_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
