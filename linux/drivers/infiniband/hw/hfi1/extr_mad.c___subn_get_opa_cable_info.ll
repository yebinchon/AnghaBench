; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_cable_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_cable_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ib_mad_hdr = type { i32 }

@PORT_TYPE_QSFP = common dso_local global i64 0, align 8
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_get_opa_cable_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_cable_info(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hfi1_devdata*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %21 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %20)
  store %struct.hfi1_devdata* %21, %struct.hfi1_devdata** %16, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @OPA_AM_CI_ADDR(i32 %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @OPA_AM_CI_LEN(i32 %24)
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %18, align 4
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PORT_TYPE_QSFP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %7
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i64 @smp_length_check(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34, %7
  %40 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %41 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %42 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %46 = bitcast %struct.opa_smp* %45 to %struct.ib_mad_hdr*
  %47 = call i32 @reply(%struct.ib_mad_hdr* %46)
  store i32 %47, i32* %8, align 4
  br label %124

48:                                               ; preds = %34
  %49 = load i32, i32* %17, align 4
  %50 = icmp sge i32 %49, 4096
  br i1 %50, label %66, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %17, align 4
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 7)
  %54 = sub nsw i32 %53, 1
  %55 = xor i32 %54, -1
  %56 = and i32 %52, %55
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 7)
  %62 = sub nsw i32 %61, 1
  %63 = xor i32 %62, -1
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %56, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %51, %48
  %67 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %68 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %69 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %73 = bitcast %struct.opa_smp* %72 to %struct.ib_mad_hdr*
  %74 = call i32 @reply(%struct.ib_mad_hdr* %73)
  store i32 %74, i32* %8, align 4
  br label %124

75:                                               ; preds = %51
  %76 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @get_cable_info(%struct.hfi1_devdata* %76, i32 %77, i32 %78, i32 %79, i32* %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %75
  %87 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %88 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %89 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %93 = bitcast %struct.opa_smp* %92 to %struct.ib_mad_hdr*
  %94 = call i32 @reply(%struct.ib_mad_hdr* %93)
  store i32 %94, i32* %8, align 4
  br label %124

95:                                               ; preds = %75
  %96 = load i32, i32* %19, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* @ERANGE, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %105 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %106 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %110 = bitcast %struct.opa_smp* %109 to %struct.ib_mad_hdr*
  %111 = call i32 @reply(%struct.ib_mad_hdr* %110)
  store i32 %111, i32* %8, align 4
  br label %124

112:                                              ; preds = %98, %95
  %113 = load i32*, i32** %14, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* %18, align 4
  %117 = load i32*, i32** %14, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %116
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %115, %112
  %121 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %122 = bitcast %struct.opa_smp* %121 to %struct.ib_mad_hdr*
  %123 = call i32 @reply(%struct.ib_mad_hdr* %122)
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %120, %103, %86, %66, %39
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @OPA_AM_CI_ADDR(i32) #1

declare dso_local i32 @OPA_AM_CI_LEN(i32) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @BIT(...) #1

declare dso_local i32 @get_cable_info(%struct.hfi1_devdata*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
