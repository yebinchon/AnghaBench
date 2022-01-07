; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qsfp.c___i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qsfp.c___i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hfi1_i2c_bus*, %struct.hfi1_i2c_bus* }
%struct.hfi1_i2c_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_pportdata*, i64, i32, i32, i8*, i32)* @__i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i2c_read(%struct.hfi1_pportdata* %0, i64 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.hfi1_pportdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hfi1_devdata*, align 8
  %14 = alloca %struct.hfi1_i2c_bus*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %18 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %17, i32 0, i32 0
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %18, align 8
  store %struct.hfi1_devdata* %19, %struct.hfi1_devdata** %13, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.hfi1_i2c_bus*, %struct.hfi1_i2c_bus** %26, align 8
  br label %34

28:                                               ; preds = %6
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %30 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.hfi1_i2c_bus*, %struct.hfi1_i2c_bus** %32, align 8
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi %struct.hfi1_i2c_bus* [ %27, %22 ], [ %33, %28 ]
  store %struct.hfi1_i2c_bus* %35, %struct.hfi1_i2c_bus** %14, align 8
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 255
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %9, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 3
  store i32 %41, i32* %16, align 4
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %43 = load %struct.hfi1_i2c_bus*, %struct.hfi1_i2c_bus** %14, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @i2c_bus_read(%struct.hfi1_devdata* %42, %struct.hfi1_i2c_bus* %43, i32 %44, i32 %45, i32 %46, i8* %47, i32 %48)
  ret i32 %49
}

declare dso_local i32 @i2c_bus_read(%struct.hfi1_devdata*, %struct.hfi1_i2c_bus*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
