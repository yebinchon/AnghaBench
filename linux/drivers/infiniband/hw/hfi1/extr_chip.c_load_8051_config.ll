; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_load_8051_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_load_8051_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@LOAD_DATA_FIELD_ID_SHIFT = common dso_local global i32 0, align 4
@LOAD_DATA_LANE_ID_SHIFT = common dso_local global i32 0, align 4
@LOAD_DATA_DATA_SHIFT = common dso_local global i32 0, align 4
@HCMD_LOAD_CONFIG_DATA = common dso_local global i32 0, align 4
@HCMD_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"load 8051 config: field id %d, lane %d, err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_8051_config(%struct.hfi1_devdata* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @LOAD_DATA_FIELD_ID_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @LOAD_DATA_LANE_ID_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %14, %18
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @LOAD_DATA_DATA_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %19, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %26 = load i32, i32* @HCMD_LOAD_CONFIG_DATA, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @do_8051_command(%struct.hfi1_devdata* %25, i32 %26, i32 %27, i32* null)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @HCMD_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %4
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @dd_dev_err(%struct.hfi1_devdata* %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %32, %4
  %41 = load i32, i32* %10, align 4
  ret i32 %41
}

declare dso_local i32 @do_8051_command(%struct.hfi1_devdata*, i32, i32, i32*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
