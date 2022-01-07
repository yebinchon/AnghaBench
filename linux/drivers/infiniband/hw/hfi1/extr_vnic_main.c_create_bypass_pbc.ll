; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_create_bypass_pbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_create_bypass_pbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PBC_IHCRC_NONE = common dso_local global i64 0, align 8
@PBC_INSERT_HCRC_SHIFT = common dso_local global i32 0, align 4
@PBC_INSERT_BYPASS_ICRC = common dso_local global i32 0, align 4
@PBC_CREDIT_RETURN = common dso_local global i32 0, align 4
@PBC_PACKET_BYPASS = common dso_local global i32 0, align 4
@PBC_VL_MASK = common dso_local global i32 0, align 4
@PBC_VL_SHIFT = common dso_local global i32 0, align 4
@PBC_LENGTH_DWS_MASK = common dso_local global i32 0, align 4
@PBC_LENGTH_DWS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @create_bypass_pbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_bypass_pbc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @PBC_IHCRC_NONE, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @PBC_INSERT_HCRC_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = load i32, i32* @PBC_INSERT_BYPASS_ICRC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PBC_CREDIT_RETURN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PBC_PACKET_BYPASS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PBC_VL_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @PBC_VL_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %15, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PBC_LENGTH_DWS_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @PBC_LENGTH_DWS_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %21, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
