; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_free_object_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_free_object_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxt_data*)* @mxt_free_object_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxt_free_object_table(%struct.mxt_data* %0) #0 {
  %2 = alloca %struct.mxt_data*, align 8
  store %struct.mxt_data* %0, %struct.mxt_data** %2, align 8
  %3 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %4 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %3, i32 0, i32 15
  store i32* null, i32** %4, align 8
  %5 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %6 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %5, i32 0, i32 14
  store i32* null, i32** %6, align 8
  %7 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %8 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %7, i32 0, i32 13
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @kfree(i32* %9)
  %11 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %12 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %11, i32 0, i32 13
  store i32* null, i32** %12, align 8
  %13 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %14 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %13, i32 0, i32 12
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kfree(i32* %15)
  %17 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %18 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %17, i32 0, i32 12
  store i32* null, i32** %18, align 8
  %19 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %20 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %19, i32 0, i32 11
  store i64 0, i64* %20, align 8
  %21 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %22 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %21, i32 0, i32 10
  store i64 0, i64* %22, align 8
  %23 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %24 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %23, i32 0, i32 9
  store i64 0, i64* %24, align 8
  %25 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %26 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %25, i32 0, i32 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %28 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %27, i32 0, i32 7
  store i64 0, i64* %28, align 8
  %29 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %30 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %32 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %34 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %36 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %38 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %40 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %42 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
