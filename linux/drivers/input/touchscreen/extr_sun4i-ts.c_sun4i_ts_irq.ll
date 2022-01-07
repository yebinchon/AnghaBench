; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sun4i-ts.c_sun4i_ts_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sun4i-ts.c_sun4i_ts_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_ts_data = type { i64, i64, i8* }

@TP_INT_FIFOS = common dso_local global i64 0, align 8
@TEMP_DATA_PENDING = common dso_local global i32 0, align 4
@TEMP_DATA = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sun4i_ts_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_ts_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sun4i_ts_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.sun4i_ts_data*
  store %struct.sun4i_ts_data* %8, %struct.sun4i_ts_data** %5, align 8
  %9 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %5, align 8
  %10 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TP_INT_FIFOS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i8* @readl(i64 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TEMP_DATA_PENDING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %5, align 8
  %22 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TEMP_DATA, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i8* @readl(i64 %25)
  %27 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %5, align 8
  %28 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %20, %2
  %30 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %5, align 8
  %31 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @sun4i_ts_irq_handle_input(%struct.sun4i_ts_data* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %5, align 8
  %41 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TP_INT_FIFOS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %46
}

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @sun4i_ts_irq_handle_input(%struct.sun4i_ts_data*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
