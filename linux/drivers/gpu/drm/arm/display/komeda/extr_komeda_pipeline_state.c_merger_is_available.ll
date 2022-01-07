; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_merger_is_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_merger_is_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_pipeline = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.komeda_data_flow_cfg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_pipeline*, %struct.komeda_data_flow_cfg*)* @merger_is_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merger_is_available(%struct.komeda_pipeline* %0, %struct.komeda_data_flow_cfg* %1) #0 {
  %3 = alloca %struct.komeda_pipeline*, align 8
  %4 = alloca %struct.komeda_data_flow_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.komeda_pipeline* %0, %struct.komeda_pipeline** %3, align 8
  store %struct.komeda_data_flow_cfg* %1, %struct.komeda_data_flow_cfg** %4, align 8
  %6 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %3, align 8
  %7 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %3, align 8
  %12 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %10
  %19 = phi i32 [ %16, %10 ], [ 0, %17 ]
  store i32 %19, i32* %5, align 4
  %20 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @has_bit(i32 %25, i32 %26)
  ret i32 %27
}

declare dso_local i32 @has_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
