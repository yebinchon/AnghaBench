; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_vc_local_fabric.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_vc_local_fabric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@VAU_SHIFT = common dso_local global i32 0, align 4
@Z_SHIFT = common dso_local global i32 0, align 4
@VCU_SHIFT = common dso_local global i32 0, align 4
@VL15BUF_SHIFT = common dso_local global i32 0, align 4
@CRC_SIZES_SHIFT = common dso_local global i32 0, align 4
@VERIFY_CAP_LOCAL_FABRIC = common dso_local global i32 0, align 4
@GENERAL_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i64, i64, i64, i64, i64)* @write_vc_local_fabric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vc_local_fabric(%struct.hfi1_devdata* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %8, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @VAU_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i64, i64* %9, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @Z_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %17, %21
  %23 = load i64, i64* %10, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @VCU_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %22, %26
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @VL15BUF_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %27, %31
  %33 = load i64, i64* %12, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @CRC_SIZES_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %32, %36
  store i32 %37, i32* %13, align 4
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %39 = load i32, i32* @VERIFY_CAP_LOCAL_FABRIC, align 4
  %40 = load i32, i32* @GENERAL_CONFIG, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @load_8051_config(%struct.hfi1_devdata* %38, i32 %39, i32 %40, i32 %41)
  ret i32 %42
}

declare dso_local i32 @load_8051_config(%struct.hfi1_devdata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
