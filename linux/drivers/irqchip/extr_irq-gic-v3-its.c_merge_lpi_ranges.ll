; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_merge_lpi_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_merge_lpi_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpi_range = type { i64, i64, i32 }

@lpi_range_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpi_range*, %struct.lpi_range*)* @merge_lpi_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_lpi_ranges(%struct.lpi_range* %0, %struct.lpi_range* %1) #0 {
  %3 = alloca %struct.lpi_range*, align 8
  %4 = alloca %struct.lpi_range*, align 8
  store %struct.lpi_range* %0, %struct.lpi_range** %3, align 8
  store %struct.lpi_range* %1, %struct.lpi_range** %4, align 8
  %5 = load %struct.lpi_range*, %struct.lpi_range** %3, align 8
  %6 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %5, i32 0, i32 2
  %7 = icmp eq i32* %6, @lpi_range_list
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.lpi_range*, %struct.lpi_range** %4, align 8
  %10 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %9, i32 0, i32 2
  %11 = icmp eq i32* %10, @lpi_range_list
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  br label %44

13:                                               ; preds = %8
  %14 = load %struct.lpi_range*, %struct.lpi_range** %3, align 8
  %15 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.lpi_range*, %struct.lpi_range** %3, align 8
  %18 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.lpi_range*, %struct.lpi_range** %4, align 8
  %22 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %44

26:                                               ; preds = %13
  %27 = load %struct.lpi_range*, %struct.lpi_range** %3, align 8
  %28 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.lpi_range*, %struct.lpi_range** %4, align 8
  %31 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.lpi_range*, %struct.lpi_range** %3, align 8
  %33 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.lpi_range*, %struct.lpi_range** %4, align 8
  %36 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.lpi_range*, %struct.lpi_range** %3, align 8
  %40 = getelementptr inbounds %struct.lpi_range, %struct.lpi_range* %39, i32 0, i32 2
  %41 = call i32 @list_del(i32* %40)
  %42 = load %struct.lpi_range*, %struct.lpi_range** %3, align 8
  %43 = call i32 @kfree(%struct.lpi_range* %42)
  br label %44

44:                                               ; preds = %26, %25, %12
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.lpi_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
