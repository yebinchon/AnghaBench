; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline.c_komeda_pipeline_get_component.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline.c_komeda_pipeline_get_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component = type { i32 }
%struct.komeda_pipeline = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.komeda_component* @komeda_pipeline_get_component(%struct.komeda_pipeline* %0, i32 %1) #0 {
  %3 = alloca %struct.komeda_pipeline*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.komeda_component**, align 8
  %6 = alloca %struct.komeda_component*, align 8
  store %struct.komeda_pipeline* %0, %struct.komeda_pipeline** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.komeda_component** null, %struct.komeda_component*** %5, align 8
  store %struct.komeda_component* null, %struct.komeda_component** %6, align 8
  %7 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.komeda_component** @komeda_pipeline_get_component_pos(%struct.komeda_pipeline* %7, i32 %8)
  store %struct.komeda_component** %9, %struct.komeda_component*** %5, align 8
  %10 = load %struct.komeda_component**, %struct.komeda_component*** %5, align 8
  %11 = icmp ne %struct.komeda_component** %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.komeda_component**, %struct.komeda_component*** %5, align 8
  %14 = load %struct.komeda_component*, %struct.komeda_component** %13, align 8
  store %struct.komeda_component* %14, %struct.komeda_component** %6, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.komeda_component*, %struct.komeda_component** %6, align 8
  ret %struct.komeda_component* %16
}

declare dso_local %struct.komeda_component** @komeda_pipeline_get_component_pos(%struct.komeda_pipeline*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
