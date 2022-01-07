; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_opa_classportinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_opa_classportinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_pma_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.opa_class_port_info = type { i32, i32, i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@OPA_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@OPA_SM_CLASS_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_pma_mad*, %struct.ib_device*, i32*)* @pma_get_opa_classportinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_opa_classportinfo(%struct.opa_pma_mad* %0, %struct.ib_device* %1, i32* %2) #0 {
  %4 = alloca %struct.opa_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.opa_class_port_info*, align 8
  store %struct.opa_pma_mad* %0, %struct.opa_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %4, align 8
  %9 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.opa_class_port_info*
  store %struct.opa_class_port_info* %11, %struct.opa_class_port_info** %7, align 8
  %12 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %4, align 8
  %13 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @memset(i64 %14, i32 0, i32 8)
  %16 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %4, align 8
  %17 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %23 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %4, align 8
  %24 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %21, %3
  %29 = load i32, i32* @OPA_MGMT_BASE_VERSION, align 4
  %30 = load %struct.opa_class_port_info*, %struct.opa_class_port_info** %7, align 8
  %31 = getelementptr inbounds %struct.opa_class_port_info, %struct.opa_class_port_info* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @OPA_SM_CLASS_VERSION, align 4
  %33 = load %struct.opa_class_port_info*, %struct.opa_class_port_info** %7, align 8
  %34 = getelementptr inbounds %struct.opa_class_port_info, %struct.opa_class_port_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i32 @cpu_to_be32(i32 18)
  %36 = load %struct.opa_class_port_info*, %struct.opa_class_port_info** %7, align 8
  %37 = getelementptr inbounds %struct.opa_class_port_info, %struct.opa_class_port_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 12
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  br label %46

46:                                               ; preds = %40, %28
  %47 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %4, align 8
  %48 = bitcast %struct.opa_pma_mad* %47 to %struct.ib_mad_hdr*
  %49 = call i32 @reply(%struct.ib_mad_hdr* %48)
  ret i32 %49
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
