; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema.c_vema_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_vema_port = type { i32 }
%struct.opa_vnic_vema_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@OPA_VNIC_UNSUP_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*)* @vema_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vema_get(%struct.opa_vnic_vema_port* %0, %struct.opa_vnic_vema_mad* %1, %struct.opa_vnic_vema_mad* %2) #0 {
  %4 = alloca %struct.opa_vnic_vema_port*, align 8
  %5 = alloca %struct.opa_vnic_vema_mad*, align 8
  %6 = alloca %struct.opa_vnic_vema_mad*, align 8
  %7 = alloca i32, align 4
  store %struct.opa_vnic_vema_port* %0, %struct.opa_vnic_vema_port** %4, align 8
  store %struct.opa_vnic_vema_mad* %1, %struct.opa_vnic_vema_mad** %5, align 8
  store %struct.opa_vnic_vema_mad* %2, %struct.opa_vnic_vema_mad** %6, align 8
  %8 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %9 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @be16_to_cpu(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %45 [
    i32 134, label %14
    i32 130, label %19
    i32 129, label %24
    i32 132, label %29
    i32 133, label %29
    i32 128, label %35
    i32 131, label %40
  ]

14:                                               ; preds = %3
  %15 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %16 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %17 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %18 = call i32 @vema_get_class_port_info(%struct.opa_vnic_vema_port* %15, %struct.opa_vnic_vema_mad* %16, %struct.opa_vnic_vema_mad* %17)
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %21 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %22 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %23 = call i32 @vema_get_veswport_info(%struct.opa_vnic_vema_port* %20, %struct.opa_vnic_vema_mad* %21, %struct.opa_vnic_vema_mad* %22)
  br label %50

24:                                               ; preds = %3
  %25 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %26 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %27 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %28 = call i32 @vema_get_mac_entries(%struct.opa_vnic_vema_port* %25, %struct.opa_vnic_vema_mad* %26, %struct.opa_vnic_vema_mad* %27)
  br label %50

29:                                               ; preds = %3, %3
  %30 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %31 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %32 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @vema_get_mac_list(%struct.opa_vnic_vema_port* %30, %struct.opa_vnic_vema_mad* %31, %struct.opa_vnic_vema_mad* %32, i32 %33)
  br label %50

35:                                               ; preds = %3
  %36 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %37 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %38 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %39 = call i32 @vema_get_summary_counters(%struct.opa_vnic_vema_port* %36, %struct.opa_vnic_vema_mad* %37, %struct.opa_vnic_vema_mad* %38)
  br label %50

40:                                               ; preds = %3
  %41 = load %struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_port** %4, align 8
  %42 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %5, align 8
  %43 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %44 = call i32 @vema_get_error_counters(%struct.opa_vnic_vema_port* %41, %struct.opa_vnic_vema_mad* %42, %struct.opa_vnic_vema_mad* %43)
  br label %50

45:                                               ; preds = %3
  %46 = load i32, i32* @OPA_VNIC_UNSUP_ATTR, align 4
  %47 = load %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad** %6, align 8
  %48 = getelementptr inbounds %struct.opa_vnic_vema_mad, %struct.opa_vnic_vema_mad* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %40, %35, %29, %24, %19, %14
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @vema_get_class_port_info(%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*) #1

declare dso_local i32 @vema_get_veswport_info(%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*) #1

declare dso_local i32 @vema_get_mac_entries(%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*) #1

declare dso_local i32 @vema_get_mac_list(%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*, i32) #1

declare dso_local i32 @vema_get_summary_counters(%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*) #1

declare dso_local i32 @vema_get_error_counters(%struct.opa_vnic_vema_port*, %struct.opa_vnic_vema_mad*, %struct.opa_vnic_vema_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
