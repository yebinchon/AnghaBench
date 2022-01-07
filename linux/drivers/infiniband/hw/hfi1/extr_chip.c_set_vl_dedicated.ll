; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_vl_dedicated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_vl_dedicated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@TXE_NUM_DATA_VL = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_VL = common dso_local global i64 0, align 8
@SEND_CM_CREDIT_VL15 = common dso_local global i64 0, align 8
@SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_SMASK = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, i64)* @set_vl_dedicated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vl_dedicated(%struct.hfi1_devdata* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TXE_NUM_DATA_VL, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i64, i64* @SEND_CM_CREDIT_VL, align 8
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 8, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  store i64 %17, i64* %8, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @SEND_CM_CREDIT_VL15, align 8
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %18, %12
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @read_csr(%struct.hfi1_devdata* %21, i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_SMASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @write_csr(%struct.hfi1_devdata* %34, i64 %35, i32 %36)
  ret void
}

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
