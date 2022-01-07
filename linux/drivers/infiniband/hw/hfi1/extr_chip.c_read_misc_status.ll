; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_misc_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_misc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@MISC_STATUS = common dso_local global i32 0, align 4
@GENERAL_CONFIG = common dso_local global i32 0, align 4
@STS_FM_VERSION_MAJOR_SHIFT = common dso_local global i32 0, align 4
@STS_FM_VERSION_MAJOR_MASK = common dso_local global i32 0, align 4
@STS_FM_VERSION_MINOR_SHIFT = common dso_local global i32 0, align 4
@STS_FM_VERSION_MINOR_MASK = common dso_local global i32 0, align 4
@VERSION_PATCH = common dso_local global i32 0, align 4
@STS_FM_VERSION_PATCH_SHIFT = common dso_local global i32 0, align 4
@STS_FM_VERSION_PATCH_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_misc_status(%struct.hfi1_devdata* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %11 = load i32, i32* @MISC_STATUS, align 4
  %12 = load i32, i32* @GENERAL_CONFIG, align 4
  %13 = call i32 @read_8051_config(%struct.hfi1_devdata* %10, i32 %11, i32 %12, i32* %9)
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @STS_FM_VERSION_MAJOR_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = load i32, i32* @STS_FM_VERSION_MAJOR_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @STS_FM_VERSION_MINOR_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @STS_FM_VERSION_MINOR_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %27 = load i32, i32* @VERSION_PATCH, align 4
  %28 = load i32, i32* @GENERAL_CONFIG, align 4
  %29 = call i32 @read_8051_config(%struct.hfi1_devdata* %26, i32 %27, i32 %28, i32* %9)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @STS_FM_VERSION_PATCH_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* @STS_FM_VERSION_PATCH_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  ret void
}

declare dso_local i32 @read_8051_config(%struct.hfi1_devdata*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
