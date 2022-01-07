; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_dma-crossbar.c_ti_dra7_xbar_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_dma-crossbar.c_ti_dra7_xbar_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_dra7_xbar_data = type { i32, i32, i32, i32 }
%struct.ti_dra7_xbar_map = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unmapping XBAR%u (was routed to %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @ti_dra7_xbar_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_dra7_xbar_free(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ti_dra7_xbar_data*, align 8
  %6 = alloca %struct.ti_dra7_xbar_map*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ti_dra7_xbar_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.ti_dra7_xbar_data* %8, %struct.ti_dra7_xbar_data** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ti_dra7_xbar_map*
  store %struct.ti_dra7_xbar_map* %10, %struct.ti_dra7_xbar_map** %6, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = load %struct.ti_dra7_xbar_map*, %struct.ti_dra7_xbar_map** %6, align 8
  %13 = getelementptr inbounds %struct.ti_dra7_xbar_map, %struct.ti_dra7_xbar_map* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ti_dra7_xbar_map*, %struct.ti_dra7_xbar_map** %6, align 8
  %16 = getelementptr inbounds %struct.ti_dra7_xbar_map, %struct.ti_dra7_xbar_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.ti_dra7_xbar_data*, %struct.ti_dra7_xbar_data** %5, align 8
  %20 = getelementptr inbounds %struct.ti_dra7_xbar_data, %struct.ti_dra7_xbar_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ti_dra7_xbar_map*, %struct.ti_dra7_xbar_map** %6, align 8
  %23 = getelementptr inbounds %struct.ti_dra7_xbar_map, %struct.ti_dra7_xbar_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ti_dra7_xbar_data*, %struct.ti_dra7_xbar_data** %5, align 8
  %26 = getelementptr inbounds %struct.ti_dra7_xbar_data, %struct.ti_dra7_xbar_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ti_dra7_xbar_write(i32 %21, i32 %24, i32 %27)
  %29 = load %struct.ti_dra7_xbar_data*, %struct.ti_dra7_xbar_data** %5, align 8
  %30 = getelementptr inbounds %struct.ti_dra7_xbar_data, %struct.ti_dra7_xbar_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.ti_dra7_xbar_map*, %struct.ti_dra7_xbar_map** %6, align 8
  %33 = getelementptr inbounds %struct.ti_dra7_xbar_map, %struct.ti_dra7_xbar_map* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ti_dra7_xbar_data*, %struct.ti_dra7_xbar_data** %5, align 8
  %36 = getelementptr inbounds %struct.ti_dra7_xbar_data, %struct.ti_dra7_xbar_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clear_bit(i32 %34, i32 %37)
  %39 = load %struct.ti_dra7_xbar_data*, %struct.ti_dra7_xbar_data** %5, align 8
  %40 = getelementptr inbounds %struct.ti_dra7_xbar_data, %struct.ti_dra7_xbar_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.ti_dra7_xbar_map*, %struct.ti_dra7_xbar_map** %6, align 8
  %43 = call i32 @kfree(%struct.ti_dra7_xbar_map* %42)
  ret void
}

declare dso_local %struct.ti_dra7_xbar_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @ti_dra7_xbar_write(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ti_dra7_xbar_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
