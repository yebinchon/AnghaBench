; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_reset_qsfp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_reset_qsfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i64 }

@QSFP_HFI0_RESET_N = common dso_local global i64 0, align 8
@ASIC_QSFP2_OUT = common dso_local global i32 0, align 4
@ASIC_QSFP1_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_qsfp(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %6 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %7 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %6, i32 0, i32 0
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  store %struct.hfi1_devdata* %8, %struct.hfi1_devdata** %3, align 8
  %9 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %10 = call i32 @set_qsfp_int_n(%struct.hfi1_pportdata* %9, i32 0)
  %11 = load i64, i64* @QSFP_HFI0_RESET_N, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ASIC_QSFP2_OUT, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ASIC_QSFP1_OUT, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call i32 @read_csr(%struct.hfi1_devdata* %13, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @ASIC_QSFP2_OUT, align 4
  br label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @ASIC_QSFP1_OUT, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @write_csr(%struct.hfi1_devdata* %29, i32 %39, i32 %40)
  %42 = call i32 @udelay(i32 10)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %48 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @ASIC_QSFP2_OUT, align 4
  br label %55

53:                                               ; preds = %38
  %54 = load i32, i32* @ASIC_QSFP1_OUT, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @write_csr(%struct.hfi1_devdata* %46, i32 %56, i32 %57)
  %59 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %60 = call i32 @wait_for_qsfp_init(%struct.hfi1_pportdata* %59)
  %61 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %62 = call i32 @set_qsfp_int_n(%struct.hfi1_pportdata* %61, i32 1)
  %63 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %64 = call i32 @set_qsfp_tx(%struct.hfi1_pportdata* %63, i32 0)
  ret i32 %64
}

declare dso_local i32 @set_qsfp_int_n(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_for_qsfp_init(%struct.hfi1_pportdata*) #1

declare dso_local i32 @set_qsfp_tx(%struct.hfi1_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
