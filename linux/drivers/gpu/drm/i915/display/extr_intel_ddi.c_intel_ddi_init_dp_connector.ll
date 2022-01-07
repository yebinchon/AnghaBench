; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_init_dp_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_init_dp_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@intel_ddi_prepare_link_retrain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_connector* (%struct.intel_digital_port*)* @intel_ddi_init_dp_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_connector* @intel_ddi_init_dp_connector(%struct.intel_digital_port* %0) #0 {
  %2 = alloca %struct.intel_connector*, align 8
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %6 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %7 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = call %struct.intel_connector* (...) @intel_connector_alloc()
  store %struct.intel_connector* %10, %struct.intel_connector** %4, align 8
  %11 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %12 = icmp ne %struct.intel_connector* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.intel_connector* null, %struct.intel_connector** %2, align 8
  br label %33

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @DDI_BUF_CTL(i32 %15)
  %17 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %18 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @intel_ddi_prepare_link_retrain, align 4
  %21 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %22 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %25 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %26 = call i32 @intel_dp_init_connector(%struct.intel_digital_port* %24, %struct.intel_connector* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %14
  %29 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %30 = call i32 @kfree(%struct.intel_connector* %29)
  store %struct.intel_connector* null, %struct.intel_connector** %2, align 8
  br label %33

31:                                               ; preds = %14
  %32 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  store %struct.intel_connector* %32, %struct.intel_connector** %2, align 8
  br label %33

33:                                               ; preds = %31, %28, %13
  %34 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  ret %struct.intel_connector* %34
}

declare dso_local %struct.intel_connector* @intel_connector_alloc(...) #1

declare dso_local i32 @DDI_BUF_CTL(i32) #1

declare dso_local i32 @intel_dp_init_connector(%struct.intel_digital_port*, %struct.intel_connector*) #1

declare dso_local i32 @kfree(%struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
