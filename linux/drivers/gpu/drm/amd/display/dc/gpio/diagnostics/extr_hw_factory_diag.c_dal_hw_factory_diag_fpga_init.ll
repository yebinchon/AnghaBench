; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/diagnostics/extr_hw_factory_diag.c_dal_hw_factory_diag_fpga_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/diagnostics/extr_hw_factory_diag.c_dal_hw_factory_diag_fpga_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_factory = type { i32*, i32* }

@GPIO_ID_DDC_DATA = common dso_local global i64 0, align 8
@GPIO_ID_DDC_CLOCK = common dso_local global i64 0, align 8
@GPIO_ID_GENERIC = common dso_local global i64 0, align 8
@GPIO_ID_HPD = common dso_local global i64 0, align 8
@GPIO_ID_GPIO_PAD = common dso_local global i64 0, align 8
@GPIO_ID_VIP_PAD = common dso_local global i64 0, align 8
@GPIO_ID_SYNC = common dso_local global i64 0, align 8
@GPIO_ID_GSL = common dso_local global i64 0, align 8
@funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_hw_factory_diag_fpga_init(%struct.hw_factory* %0) #0 {
  %2 = alloca %struct.hw_factory*, align 8
  store %struct.hw_factory* %0, %struct.hw_factory** %2, align 8
  %3 = load %struct.hw_factory*, %struct.hw_factory** %2, align 8
  %4 = getelementptr inbounds %struct.hw_factory, %struct.hw_factory* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @GPIO_ID_DDC_DATA, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  store i32 8, i32* %7, align 4
  %8 = load %struct.hw_factory*, %struct.hw_factory** %2, align 8
  %9 = getelementptr inbounds %struct.hw_factory, %struct.hw_factory* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @GPIO_ID_DDC_CLOCK, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 8, i32* %12, align 4
  %13 = load %struct.hw_factory*, %struct.hw_factory** %2, align 8
  %14 = getelementptr inbounds %struct.hw_factory, %struct.hw_factory* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @GPIO_ID_GENERIC, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 7, i32* %17, align 4
  %18 = load %struct.hw_factory*, %struct.hw_factory** %2, align 8
  %19 = getelementptr inbounds %struct.hw_factory, %struct.hw_factory* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @GPIO_ID_HPD, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 6, i32* %22, align 4
  %23 = load %struct.hw_factory*, %struct.hw_factory** %2, align 8
  %24 = getelementptr inbounds %struct.hw_factory, %struct.hw_factory* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @GPIO_ID_GPIO_PAD, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 31, i32* %27, align 4
  %28 = load %struct.hw_factory*, %struct.hw_factory** %2, align 8
  %29 = getelementptr inbounds %struct.hw_factory, %struct.hw_factory* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @GPIO_ID_VIP_PAD, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 0, i32* %32, align 4
  %33 = load %struct.hw_factory*, %struct.hw_factory** %2, align 8
  %34 = getelementptr inbounds %struct.hw_factory, %struct.hw_factory* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @GPIO_ID_SYNC, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 2, i32* %37, align 4
  %38 = load %struct.hw_factory*, %struct.hw_factory** %2, align 8
  %39 = getelementptr inbounds %struct.hw_factory, %struct.hw_factory* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @GPIO_ID_GSL, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 4, i32* %42, align 4
  %43 = load %struct.hw_factory*, %struct.hw_factory** %2, align 8
  %44 = getelementptr inbounds %struct.hw_factory, %struct.hw_factory* %43, i32 0, i32 1
  store i32* @funcs, i32** %44, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
