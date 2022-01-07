; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_check_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_check_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component_state = type { i32, %struct.komeda_component* }
%struct.komeda_component = type { i32, i32 }
%struct.komeda_component_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"%s required an invalid %s-input[%d].\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%s required %s-input[%d] has been occupied already.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_component_state*, %struct.komeda_component_output*, i32)* @komeda_component_check_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_component_check_input(%struct.komeda_component_state* %0, %struct.komeda_component_output* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.komeda_component_state*, align 8
  %6 = alloca %struct.komeda_component_output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.komeda_component*, align 8
  store %struct.komeda_component_state* %0, %struct.komeda_component_state** %5, align 8
  store %struct.komeda_component_output* %1, %struct.komeda_component_output** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.komeda_component_state*, %struct.komeda_component_state** %5, align 8
  %10 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %9, i32 0, i32 1
  %11 = load %struct.komeda_component*, %struct.komeda_component** %10, align 8
  store %struct.komeda_component* %11, %struct.komeda_component** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.komeda_component*, %struct.komeda_component** %8, align 8
  %17 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14, %3
  %21 = load %struct.komeda_component_output*, %struct.komeda_component_output** %6, align 8
  %22 = getelementptr inbounds %struct.komeda_component_output, %struct.komeda_component_output* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.komeda_component*, %struct.komeda_component** %8, align 8
  %27 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %54

33:                                               ; preds = %14
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.komeda_component_state*, %struct.komeda_component_state** %5, align 8
  %36 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @has_bit(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.komeda_component_output*, %struct.komeda_component_output** %6, align 8
  %42 = getelementptr inbounds %struct.komeda_component_output, %struct.komeda_component_output* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.komeda_component*, %struct.komeda_component** %8, align 8
  %47 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %40, %20
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, i32) #1

declare dso_local i64 @has_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
