; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_validate_private.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_validate_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.komeda_component_state = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s validate private failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_component*, %struct.komeda_component_state*)* @komeda_component_validate_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_component_validate_private(%struct.komeda_component* %0, %struct.komeda_component_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.komeda_component*, align 8
  %5 = alloca %struct.komeda_component_state*, align 8
  %6 = alloca i32, align 4
  store %struct.komeda_component* %0, %struct.komeda_component** %4, align 8
  store %struct.komeda_component_state* %1, %struct.komeda_component_state** %5, align 8
  %7 = load %struct.komeda_component*, %struct.komeda_component** %4, align 8
  %8 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.komeda_component*, %struct.komeda_component_state*)**
  %12 = load i32 (%struct.komeda_component*, %struct.komeda_component_state*)*, i32 (%struct.komeda_component*, %struct.komeda_component_state*)** %11, align 8
  %13 = icmp ne i32 (%struct.komeda_component*, %struct.komeda_component_state*)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.komeda_component*, %struct.komeda_component** %4, align 8
  %17 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.komeda_component*, %struct.komeda_component_state*)**
  %21 = load i32 (%struct.komeda_component*, %struct.komeda_component_state*)*, i32 (%struct.komeda_component*, %struct.komeda_component_state*)** %20, align 8
  %22 = load %struct.komeda_component*, %struct.komeda_component** %4, align 8
  %23 = load %struct.komeda_component_state*, %struct.komeda_component_state** %5, align 8
  %24 = call i32 %21(%struct.komeda_component* %22, %struct.komeda_component_state* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.komeda_component*, %struct.komeda_component** %4, align 8
  %29 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %15
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
