; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_update_hcrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_update_hcrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_OPCODE_TID_RDMA = common dso_local global i32 0, align 4
@PBC_INSERT_HCRC_SMASK = common dso_local global i32 0, align 4
@PBC_IHCRC_LKDETH = common dso_local global i64 0, align 8
@PBC_INSERT_HCRC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @update_hcrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_hcrc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IB_OPCODE_TID_RDMA, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @IB_OPCODE_TID_RDMA, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i32, i32* @PBC_INSERT_HCRC_SMASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* @PBC_IHCRC_LKDETH, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @PBC_INSERT_HCRC_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %10, %2
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
