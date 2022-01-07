; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_choose_master_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_choose_master_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pl08x_lli_build_data = type { %struct.pl08x_bus_data, %struct.pl08x_bus_data }
%struct.pl08x_bus_data = type { i64 }

@PL080_CONTROL_DST_INCR = common dso_local global i32 0, align 4
@PL080_CONTROL_SRC_INCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_driver_data*, %struct.pl08x_lli_build_data*, %struct.pl08x_bus_data**, %struct.pl08x_bus_data**, i32)* @pl08x_choose_master_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_choose_master_bus(%struct.pl08x_driver_data* %0, %struct.pl08x_lli_build_data* %1, %struct.pl08x_bus_data** %2, %struct.pl08x_bus_data** %3, i32 %4) #0 {
  %6 = alloca %struct.pl08x_driver_data*, align 8
  %7 = alloca %struct.pl08x_lli_build_data*, align 8
  %8 = alloca %struct.pl08x_bus_data**, align 8
  %9 = alloca %struct.pl08x_bus_data**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %6, align 8
  store %struct.pl08x_lli_build_data* %1, %struct.pl08x_lli_build_data** %7, align 8
  store %struct.pl08x_bus_data** %2, %struct.pl08x_bus_data*** %8, align 8
  store %struct.pl08x_bus_data** %3, %struct.pl08x_bus_data*** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %6, align 8
  %14 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %35

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PL080_CONTROL_DST_INCR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PL080_CONTROL_SRC_INCR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %20, %19
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %7, align 8
  %40 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %39, i32 0, i32 0
  %41 = load %struct.pl08x_bus_data**, %struct.pl08x_bus_data*** %8, align 8
  store %struct.pl08x_bus_data* %40, %struct.pl08x_bus_data** %41, align 8
  %42 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %7, align 8
  %43 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %42, i32 0, i32 1
  %44 = load %struct.pl08x_bus_data**, %struct.pl08x_bus_data*** %9, align 8
  store %struct.pl08x_bus_data* %43, %struct.pl08x_bus_data** %44, align 8
  br label %81

45:                                               ; preds = %35
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %7, align 8
  %50 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %49, i32 0, i32 1
  %51 = load %struct.pl08x_bus_data**, %struct.pl08x_bus_data*** %8, align 8
  store %struct.pl08x_bus_data* %50, %struct.pl08x_bus_data** %51, align 8
  %52 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %7, align 8
  %53 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %52, i32 0, i32 0
  %54 = load %struct.pl08x_bus_data**, %struct.pl08x_bus_data*** %9, align 8
  store %struct.pl08x_bus_data* %53, %struct.pl08x_bus_data** %54, align 8
  br label %80

55:                                               ; preds = %45
  %56 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %7, align 8
  %57 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.pl08x_bus_data, %struct.pl08x_bus_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %7, align 8
  %61 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.pl08x_bus_data, %struct.pl08x_bus_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %59, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %7, align 8
  %67 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %66, i32 0, i32 0
  %68 = load %struct.pl08x_bus_data**, %struct.pl08x_bus_data*** %8, align 8
  store %struct.pl08x_bus_data* %67, %struct.pl08x_bus_data** %68, align 8
  %69 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %7, align 8
  %70 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %69, i32 0, i32 1
  %71 = load %struct.pl08x_bus_data**, %struct.pl08x_bus_data*** %9, align 8
  store %struct.pl08x_bus_data* %70, %struct.pl08x_bus_data** %71, align 8
  br label %79

72:                                               ; preds = %55
  %73 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %7, align 8
  %74 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %73, i32 0, i32 1
  %75 = load %struct.pl08x_bus_data**, %struct.pl08x_bus_data*** %8, align 8
  store %struct.pl08x_bus_data* %74, %struct.pl08x_bus_data** %75, align 8
  %76 = load %struct.pl08x_lli_build_data*, %struct.pl08x_lli_build_data** %7, align 8
  %77 = getelementptr inbounds %struct.pl08x_lli_build_data, %struct.pl08x_lli_build_data* %76, i32 0, i32 0
  %78 = load %struct.pl08x_bus_data**, %struct.pl08x_bus_data*** %9, align 8
  store %struct.pl08x_bus_data* %77, %struct.pl08x_bus_data** %78, align 8
  br label %79

79:                                               ; preds = %72, %65
  br label %80

80:                                               ; preds = %79, %48
  br label %81

81:                                               ; preds = %80, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
