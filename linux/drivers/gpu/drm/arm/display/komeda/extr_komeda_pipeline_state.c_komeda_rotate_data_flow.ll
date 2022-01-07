; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_rotate_data_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_rotate_data_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_data_flow_cfg = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_data_flow_cfg*, i32)* @komeda_rotate_data_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_rotate_data_flow(%struct.komeda_data_flow_cfg* %0, i32 %1) #0 {
  %3 = alloca %struct.komeda_data_flow_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.komeda_data_flow_cfg* %0, %struct.komeda_data_flow_cfg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @drm_rotation_90_or_270(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %3, align 8
  %10 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %3, align 8
  %13 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @swap(i32 %11, i32 %14)
  %16 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %3, align 8
  %17 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %3, align 8
  %20 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @swap(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
