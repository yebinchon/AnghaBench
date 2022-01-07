; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sun4i-lradc-keys.c_sun4i_lradc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sun4i-lradc-keys.c_sun4i_lradc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_lradc_data = type { i64, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@LRADC_INTS = common dso_local global i64 0, align 8
@CHAN0_KEYUP_IRQ = common dso_local global i32 0, align 4
@CHAN0_KEYDOWN_IRQ = common dso_local global i32 0, align 4
@LRADC_DATA0 = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sun4i_lradc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_lradc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sun4i_lradc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.sun4i_lradc_data*
  store %struct.sun4i_lradc_data* %14, %struct.sun4i_lradc_data** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %15 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %16 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LRADC_INTS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CHAN0_KEYUP_IRQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %27 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %30 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @input_report_key(i32 %28, i64 %31, i32 0)
  %33 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %34 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %25, %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @CHAN0_KEYDOWN_IRQ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %107

40:                                               ; preds = %35
  %41 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %42 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %107

45:                                               ; preds = %40
  %46 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %47 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LRADC_DATA0, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  %52 = and i32 %51, 63
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %55 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  %58 = sdiv i32 %57, 63
  store i32 %58, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %92, %45
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %62 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %59
  %66 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %67 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %66, i32 0, i32 5
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %73, %75
  %77 = call i32 @abs(i64 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %65
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %12, align 4
  %83 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %84 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %83, i32 0, i32 5
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %81, %65
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %59

95:                                               ; preds = %59
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %99 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %101 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %104 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @input_report_key(i32 %102, i64 %105, i32 1)
  br label %107

107:                                              ; preds = %95, %40, %35
  %108 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %109 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @input_sync(i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %5, align 8
  %114 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @LRADC_INTS, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %119
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @input_report_key(i32, i64, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
