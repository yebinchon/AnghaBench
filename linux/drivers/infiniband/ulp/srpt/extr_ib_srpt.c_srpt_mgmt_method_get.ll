; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_mgmt_method_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_mgmt_method_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_port = type { i32 }
%struct.ib_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ib_dm_mad = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@srpt_service_guid = common dso_local global i32 0, align 4
@DM_MAD_STATUS_UNSUP_METHOD_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srpt_port*, %struct.ib_mad*, %struct.ib_dm_mad*)* @srpt_mgmt_method_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_mgmt_method_get(%struct.srpt_port* %0, %struct.ib_mad* %1, %struct.ib_dm_mad* %2) #0 {
  %4 = alloca %struct.srpt_port*, align 8
  %5 = alloca %struct.ib_mad*, align 8
  %6 = alloca %struct.ib_dm_mad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.srpt_port* %0, %struct.srpt_port** %4, align 8
  store %struct.ib_mad* %1, %struct.ib_mad** %5, align 8
  store %struct.ib_dm_mad* %2, %struct.ib_dm_mad** %6, align 8
  %11 = load %struct.ib_mad*, %struct.ib_mad** %5, align 8
  %12 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be16_to_cpu(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %53 [
    i32 131, label %17
    i32 129, label %20
    i32 130, label %23
    i32 128, label %33
  ]

17:                                               ; preds = %3
  %18 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %6, align 8
  %19 = call i32 @srpt_get_class_port_info(%struct.ib_dm_mad* %18)
  br label %59

20:                                               ; preds = %3
  %21 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %6, align 8
  %22 = call i32 @srpt_get_iou(%struct.ib_dm_mad* %21)
  br label %59

23:                                               ; preds = %3
  %24 = load %struct.ib_mad*, %struct.ib_mad** %5, align 8
  %25 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.srpt_port*, %struct.srpt_port** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %6, align 8
  %32 = call i32 @srpt_get_ioc(%struct.srpt_port* %29, i32 %30, %struct.ib_dm_mad* %31)
  br label %59

33:                                               ; preds = %3
  %34 = load %struct.ib_mad*, %struct.ib_mad** %5, align 8
  %35 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 255
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 65535
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @srpt_service_guid, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %6, align 8
  %52 = call i32 @srpt_get_svc_entries(i32 %47, i32 %48, i32 %49, i32 %50, %struct.ib_dm_mad* %51)
  br label %59

53:                                               ; preds = %3
  %54 = load i32, i32* @DM_MAD_STATUS_UNSUP_METHOD_ATTR, align 4
  %55 = call i32 @cpu_to_be16(i32 %54)
  %56 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %6, align 8
  %57 = getelementptr inbounds %struct.ib_dm_mad, %struct.ib_dm_mad* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %33, %23, %20, %17
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @srpt_get_class_port_info(%struct.ib_dm_mad*) #1

declare dso_local i32 @srpt_get_iou(%struct.ib_dm_mad*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @srpt_get_ioc(%struct.srpt_port*, i32, %struct.ib_dm_mad*) #1

declare dso_local i32 @srpt_get_svc_entries(i32, i32, i32, i32, %struct.ib_dm_mad*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
