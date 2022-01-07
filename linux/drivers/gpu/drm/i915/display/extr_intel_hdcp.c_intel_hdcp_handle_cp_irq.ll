; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_handle_cp_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_handle_cp_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_hdcp }
%struct.intel_hdcp = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_hdcp_handle_cp_irq(%struct.intel_connector* %0) #0 {
  %2 = alloca %struct.intel_connector*, align 8
  %3 = alloca %struct.intel_hdcp*, align 8
  store %struct.intel_connector* %0, %struct.intel_connector** %2, align 8
  %4 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %5 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %4, i32 0, i32 0
  store %struct.intel_hdcp* %5, %struct.intel_hdcp** %3, align 8
  %6 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %7 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %13, i32 0, i32 2
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %17 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %17, i32 0, i32 1
  %19 = call i32 @wake_up_all(i32* %18)
  %20 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %21 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %20, i32 0, i32 0
  %22 = call i32 @schedule_delayed_work(i32* %21, i32 0)
  br label %23

23:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
