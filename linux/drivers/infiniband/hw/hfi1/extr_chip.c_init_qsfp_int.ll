; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_qsfp_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_qsfp_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, %struct.hfi1_pportdata* }
%struct.hfi1_pportdata = type { i32 }

@QSFP_HFI0_INT_N = common dso_local global i32 0, align 4
@QSFP_HFI0_MODPRST_N = common dso_local global i32 0, align 4
@ASIC_QSFP2_CLEAR = common dso_local global i32 0, align 4
@ASIC_QSFP1_CLEAR = common dso_local global i32 0, align 4
@ASIC_QSFP2_MASK = common dso_local global i32 0, align 4
@ASIC_QSFP1_MASK = common dso_local global i32 0, align 4
@ASIC_QSFP2_INVERT = common dso_local global i32 0, align 4
@ASIC_QSFP1_INVERT = common dso_local global i32 0, align 4
@QSFP1_INT = common dso_local global i32 0, align 4
@QSFP2_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_qsfp_int(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 1
  %7 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  store %struct.hfi1_pportdata* %7, %struct.hfi1_pportdata** %3, align 8
  %8 = load i32, i32* @QSFP_HFI0_INT_N, align 4
  %9 = load i32, i32* @QSFP_HFI0_MODPRST_N, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ASIC_QSFP2_CLEAR, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ASIC_QSFP1_CLEAR, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @write_csr(%struct.hfi1_devdata* %11, i32 %21, i32 %22)
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @ASIC_QSFP2_MASK, align 4
  br label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @ASIC_QSFP1_MASK, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @write_csr(%struct.hfi1_devdata* %24, i32 %34, i32 %35)
  %37 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %38 = call i32 @set_qsfp_int_n(%struct.hfi1_pportdata* %37, i32 0)
  %39 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %40 = call i64 @qsfp_mod_present(%struct.hfi1_pportdata* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load i32, i32* @QSFP_HFI0_MODPRST_N, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %33
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @ASIC_QSFP2_INVERT, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @ASIC_QSFP1_INVERT, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @write_csr(%struct.hfi1_devdata* %48, i32 %58, i32 %59)
  %61 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %62 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %67 = load i32, i32* @QSFP1_INT, align 4
  %68 = load i32, i32* @QSFP1_INT, align 4
  %69 = call i32 @set_intr_bits(%struct.hfi1_devdata* %66, i32 %67, i32 %68, i32 1)
  br label %75

70:                                               ; preds = %57
  %71 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %72 = load i32, i32* @QSFP2_INT, align 4
  %73 = load i32, i32* @QSFP2_INT, align 4
  %74 = call i32 @set_intr_bits(%struct.hfi1_devdata* %71, i32 %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %70, %65
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @set_qsfp_int_n(%struct.hfi1_pportdata*, i32) #1

declare dso_local i64 @qsfp_mod_present(%struct.hfi1_pportdata*) #1

declare dso_local i32 @set_intr_bits(%struct.hfi1_devdata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
