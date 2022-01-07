; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_assign_cm_au_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_assign_cm_au_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@SEND_CM_LOCAL_AU_TABLE0_TO3_LOCAL_AU_TABLE0_SHIFT = common dso_local global i64 0, align 8
@SEND_CM_LOCAL_AU_TABLE0_TO3_LOCAL_AU_TABLE1_SHIFT = common dso_local global i64 0, align 8
@SEND_CM_LOCAL_AU_TABLE0_TO3_LOCAL_AU_TABLE2_SHIFT = common dso_local global i64 0, align 8
@SEND_CM_LOCAL_AU_TABLE0_TO3_LOCAL_AU_TABLE3_SHIFT = common dso_local global i64 0, align 8
@SEND_CM_LOCAL_AU_TABLE4_TO7_LOCAL_AU_TABLE4_SHIFT = common dso_local global i64 0, align 8
@SEND_CM_LOCAL_AU_TABLE4_TO7_LOCAL_AU_TABLE5_SHIFT = common dso_local global i64 0, align 8
@SEND_CM_LOCAL_AU_TABLE4_TO7_LOCAL_AU_TABLE6_SHIFT = common dso_local global i64 0, align 8
@SEND_CM_LOCAL_AU_TABLE4_TO7_LOCAL_AU_TABLE7_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i64, i64, i64)* @assign_cm_au_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_cm_au_table(%struct.hfi1_devdata* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @SEND_CM_LOCAL_AU_TABLE0_TO3_LOCAL_AU_TABLE0_SHIFT, align 8
  %12 = shl i64 0, %11
  %13 = load i64, i64* @SEND_CM_LOCAL_AU_TABLE0_TO3_LOCAL_AU_TABLE1_SHIFT, align 8
  %14 = shl i64 1, %13
  %15 = or i64 %12, %14
  %16 = load i64, i64* %6, align 8
  %17 = mul i64 2, %16
  %18 = load i64, i64* @SEND_CM_LOCAL_AU_TABLE0_TO3_LOCAL_AU_TABLE2_SHIFT, align 8
  %19 = shl i64 %17, %18
  %20 = or i64 %15, %19
  %21 = load i64, i64* %6, align 8
  %22 = mul i64 4, %21
  %23 = load i64, i64* @SEND_CM_LOCAL_AU_TABLE0_TO3_LOCAL_AU_TABLE3_SHIFT, align 8
  %24 = shl i64 %22, %23
  %25 = or i64 %20, %24
  %26 = call i32 @write_csr(%struct.hfi1_devdata* %9, i64 %10, i64 %25)
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = mul i64 8, %29
  %31 = load i64, i64* @SEND_CM_LOCAL_AU_TABLE4_TO7_LOCAL_AU_TABLE4_SHIFT, align 8
  %32 = shl i64 %30, %31
  %33 = load i64, i64* %6, align 8
  %34 = mul i64 16, %33
  %35 = load i64, i64* @SEND_CM_LOCAL_AU_TABLE4_TO7_LOCAL_AU_TABLE5_SHIFT, align 8
  %36 = shl i64 %34, %35
  %37 = or i64 %32, %36
  %38 = load i64, i64* %6, align 8
  %39 = mul i64 32, %38
  %40 = load i64, i64* @SEND_CM_LOCAL_AU_TABLE4_TO7_LOCAL_AU_TABLE6_SHIFT, align 8
  %41 = shl i64 %39, %40
  %42 = or i64 %37, %41
  %43 = load i64, i64* %6, align 8
  %44 = mul i64 64, %43
  %45 = load i64, i64* @SEND_CM_LOCAL_AU_TABLE4_TO7_LOCAL_AU_TABLE7_SHIFT, align 8
  %46 = shl i64 %44, %45
  %47 = or i64 %42, %46
  %48 = call i32 @write_csr(%struct.hfi1_devdata* %27, i64 %28, i64 %47)
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
