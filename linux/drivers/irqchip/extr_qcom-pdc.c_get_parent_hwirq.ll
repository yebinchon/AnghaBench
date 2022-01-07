; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-pdc.c_get_parent_hwirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-pdc.c_get_parent_hwirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_pin_region = type { i32, i32, i64 }

@pdc_region_cnt = common dso_local global i32 0, align 4
@pdc_region = common dso_local global %struct.pdc_pin_region* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @get_parent_hwirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_parent_hwirq(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pdc_pin_region*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @pdc_region_cnt, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %46

10:                                               ; preds = %6
  %11 = load %struct.pdc_pin_region*, %struct.pdc_pin_region** @pdc_region, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.pdc_pin_region, %struct.pdc_pin_region* %11, i64 %13
  store %struct.pdc_pin_region* %14, %struct.pdc_pin_region** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.pdc_pin_region*, %struct.pdc_pin_region** %5, align 8
  %17 = getelementptr inbounds %struct.pdc_pin_region, %struct.pdc_pin_region* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.pdc_pin_region*, %struct.pdc_pin_region** %5, align 8
  %23 = getelementptr inbounds %struct.pdc_pin_region, %struct.pdc_pin_region* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.pdc_pin_region*, %struct.pdc_pin_region** %5, align 8
  %26 = getelementptr inbounds %struct.pdc_pin_region, %struct.pdc_pin_region* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = icmp slt i32 %21, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.pdc_pin_region*, %struct.pdc_pin_region** %5, align 8
  %32 = getelementptr inbounds %struct.pdc_pin_region, %struct.pdc_pin_region* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %33, %35
  %37 = load %struct.pdc_pin_region*, %struct.pdc_pin_region** %5, align 8
  %38 = getelementptr inbounds %struct.pdc_pin_region, %struct.pdc_pin_region* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub i64 %36, %40
  store i64 %41, i64* %2, align 8
  br label %48

42:                                               ; preds = %20, %10
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %6

46:                                               ; preds = %6
  %47 = call i32 @WARN_ON(i32 1)
  store i64 -1, i64* %2, align 8
  br label %48

48:                                               ; preds = %46, %30
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
