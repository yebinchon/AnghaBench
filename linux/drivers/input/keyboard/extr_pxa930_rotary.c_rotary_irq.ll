; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa930_rotary.c_rotary_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa930_rotary.c_rotary_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa930_rotary = type { i32, i32, i64, %struct.pxa930_rotary_platform_data* }
%struct.pxa930_rotary_platform_data = type { i32, i32, i32 }

@ERCR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rotary_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rotary_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pxa930_rotary*, align 8
  %7 = alloca %struct.pxa930_rotary_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pxa930_rotary*
  store %struct.pxa930_rotary* %12, %struct.pxa930_rotary** %6, align 8
  %13 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %6, align 8
  %14 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %13, i32 0, i32 3
  %15 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %14, align 8
  store %struct.pxa930_rotary_platform_data* %15, %struct.pxa930_rotary_platform_data** %7, align 8
  %16 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %6, align 8
  %17 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ERCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @__raw_readl(i64 %20)
  %22 = and i32 %21, 15
  store i32 %22, i32* %8, align 4
  %23 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %6, align 8
  %24 = call i32 @clear_sbcr(%struct.pxa930_rotary* %23)
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %6, align 8
  %27 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %89

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %6, align 8
  %37 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %7, align 8
  %39 = getelementptr inbounds %struct.pxa930_rotary_platform_data, %struct.pxa930_rotary_platform_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %34
  %43 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %7, align 8
  %44 = getelementptr inbounds %struct.pxa930_rotary_platform_data, %struct.pxa930_rotary_platform_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %7, align 8
  %52 = getelementptr inbounds %struct.pxa930_rotary_platform_data, %struct.pxa930_rotary_platform_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %58

54:                                               ; preds = %47
  %55 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %7, align 8
  %56 = getelementptr inbounds %struct.pxa930_rotary_platform_data, %struct.pxa930_rotary_platform_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  store i32 %59, i32* %10, align 4
  %60 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %6, align 8
  %61 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @input_report_key(i32 %62, i32 %63, i32 1)
  %65 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %6, align 8
  %66 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @input_sync(i32 %67)
  %69 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %6, align 8
  %70 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @input_report_key(i32 %71, i32 %72, i32 0)
  br label %83

74:                                               ; preds = %42, %34
  %75 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %6, align 8
  %76 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pxa930_rotary_platform_data*, %struct.pxa930_rotary_platform_data** %7, align 8
  %79 = getelementptr inbounds %struct.pxa930_rotary_platform_data, %struct.pxa930_rotary_platform_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @input_report_rel(i32 %77, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %58
  %84 = load %struct.pxa930_rotary*, %struct.pxa930_rotary** %6, align 8
  %85 = getelementptr inbounds %struct.pxa930_rotary, %struct.pxa930_rotary* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @input_sync(i32 %86)
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %32
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @clear_sbcr(%struct.pxa930_rotary*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
