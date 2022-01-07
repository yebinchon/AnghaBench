; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_enable_mcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_enable_mcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"current shutdown = %d, old = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssp_data*, i32)* @ssp_enable_mcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssp_enable_mcu(%struct.ssp_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ssp_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ssp_data* %0, %struct.ssp_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %6 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %11 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_info(i32* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %18 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %23 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %25 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @enable_irq(i32 %28)
  %30 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %31 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @enable_irq_wake(i32 %34)
  br label %70

36:                                               ; preds = %16, %2
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %41 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  %45 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %46 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %48 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @disable_irq(i32 %51)
  %53 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %54 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @disable_irq_wake(i32 %57)
  br label %69

59:                                               ; preds = %39, %36
  %60 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %61 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %66 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_warn(i32* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %59, %44
  br label %70

70:                                               ; preds = %69, %21
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
