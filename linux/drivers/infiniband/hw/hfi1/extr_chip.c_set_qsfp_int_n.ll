; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_qsfp_int_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_qsfp_int_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i64 }

@ASIC_QSFP2_MASK = common dso_local global i32 0, align 4
@ASIC_QSFP1_MASK = common dso_local global i32 0, align 4
@ASIC_QSFP2_CLEAR = common dso_local global i32 0, align 4
@ASIC_QSFP1_CLEAR = common dso_local global i32 0, align 4
@QSFP_HFI0_INT_N = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*, i64)* @set_qsfp_int_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_qsfp_int_n(%struct.hfi1_pportdata* %0, i64 %1) #0 {
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %7, i32 0, i32 0
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  store %struct.hfi1_devdata* %9, %struct.hfi1_devdata** %5, align 8
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %12 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ASIC_QSFP2_MASK, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ASIC_QSFP1_MASK, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call i64 @read_csr(%struct.hfi1_devdata* %10, i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %27 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @ASIC_QSFP2_CLEAR, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @ASIC_QSFP1_CLEAR, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load i64, i64* @QSFP_HFI0_INT_N, align 8
  %37 = call i32 @write_csr(%struct.hfi1_devdata* %25, i32 %35, i64 %36)
  %38 = load i64, i64* @QSFP_HFI0_INT_N, align 8
  %39 = load i64, i64* %6, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %6, align 8
  br label %46

41:                                               ; preds = %19
  %42 = load i64, i64* @QSFP_HFI0_INT_N, align 8
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %6, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %49 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @ASIC_QSFP2_MASK, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @ASIC_QSFP1_MASK, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @write_csr(%struct.hfi1_devdata* %47, i32 %57, i64 %58)
  ret void
}

declare dso_local i64 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
