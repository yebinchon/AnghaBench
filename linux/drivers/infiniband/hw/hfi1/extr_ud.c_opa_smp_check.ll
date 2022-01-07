; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_opa_smp_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_opa_smp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rvt_qp = type { i32 }
%struct.opa_smp = type { i64, i32, i32 }
%struct.hfi1_pportdata = type { i32 }

@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@FULL_MGMT_P_KEY = common dso_local global i32 0, align 4
@IB_PORT_SM = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_TRAP = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ibport*, i32, i32, %struct.rvt_qp*, i32, %struct.opa_smp*)* @opa_smp_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa_smp_check(%struct.hfi1_ibport* %0, i32 %1, i32 %2, %struct.rvt_qp* %3, i32 %4, %struct.opa_smp* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi1_ibport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rvt_qp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.opa_smp*, align 8
  %14 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.rvt_qp* %3, %struct.rvt_qp** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.opa_smp* %5, %struct.opa_smp** %13, align 8
  %15 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %16 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %15)
  store %struct.hfi1_pportdata* %16, %struct.hfi1_pportdata** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 15
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %92

20:                                               ; preds = %6
  %21 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %14, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @rcv_pkey_check(%struct.hfi1_pportdata* %21, i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %92

28:                                               ; preds = %20
  %29 = load %struct.opa_smp*, %struct.opa_smp** %13, align 8
  %30 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.opa_smp*, %struct.opa_smp** %13, align 8
  %36 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %14, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @ingress_pkey_table_fail(%struct.hfi1_pportdata* %41, i32 %42, i32 %43)
  store i32 1, i32* %7, align 4
  br label %92

45:                                               ; preds = %34, %28
  %46 = load %struct.opa_smp*, %struct.opa_smp** %13, align 8
  %47 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %60 [
    i32 132, label %49
    i32 130, label %49
    i32 133, label %50
    i32 129, label %50
    i32 131, label %50
    i32 128, label %50
  ]

49:                                               ; preds = %45, %45
  br label %91

50:                                               ; preds = %45, %45, %45, %45
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @FULL_MGMT_P_KEY, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %14, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @ingress_pkey_table_fail(%struct.hfi1_pportdata* %55, i32 %56, i32 %57)
  store i32 1, i32* %7, align 4
  br label %92

59:                                               ; preds = %50
  br label %91

60:                                               ; preds = %45
  %61 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %62 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IB_PORT_SM, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %92

69:                                               ; preds = %60
  %70 = load %struct.opa_smp*, %struct.opa_smp** %13, align 8
  %71 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IB_MGMT_METHOD_TRAP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* %7, align 4
  br label %92

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @FULL_MGMT_P_KEY, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %82 = load %struct.opa_smp*, %struct.opa_smp** %13, align 8
  %83 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  store i32 0, i32* %7, align 4
  br label %92

86:                                               ; preds = %76
  %87 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %14, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @ingress_pkey_table_fail(%struct.hfi1_pportdata* %87, i32 %88, i32 %89)
  store i32 1, i32* %7, align 4
  br label %92

91:                                               ; preds = %59, %49
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %86, %80, %75, %68, %54, %40, %27, %19
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @rcv_pkey_check(%struct.hfi1_pportdata*, i32, i32, i32) #1

declare dso_local i32 @ingress_pkey_table_fail(%struct.hfi1_pportdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
