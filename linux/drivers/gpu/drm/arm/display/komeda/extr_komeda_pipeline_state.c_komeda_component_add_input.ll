; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_add_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_add_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component_state = type { i32, i32, i32, i32*, %struct.komeda_component* }
%struct.komeda_component = type { i32 }
%struct.komeda_component_output = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_component_state*, %struct.komeda_component_output*, i32)* @komeda_component_add_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_component_add_input(%struct.komeda_component_state* %0, %struct.komeda_component_output* %1, i32 %2) #0 {
  %4 = alloca %struct.komeda_component_state*, align 8
  %5 = alloca %struct.komeda_component_output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.komeda_component*, align 8
  store %struct.komeda_component_state* %0, %struct.komeda_component_state** %4, align 8
  store %struct.komeda_component_output* %1, %struct.komeda_component_output** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.komeda_component_state*, %struct.komeda_component_state** %4, align 8
  %9 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %8, i32 0, i32 4
  %10 = load %struct.komeda_component*, %struct.komeda_component** %9, align 8
  store %struct.komeda_component* %10, %struct.komeda_component** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.komeda_component*, %struct.komeda_component** %7, align 8
  %16 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %14, %17
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i1 [ true, %3 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.komeda_component_state*, %struct.komeda_component_state** %4, align 8
  %25 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @has_bit(i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.komeda_component_state*, %struct.komeda_component_state** %4, align 8
  %31 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load %struct.komeda_component_output*, %struct.komeda_component_output** %5, align 8
  %37 = call i64 @memcmp(i32* %35, %struct.komeda_component_output* %36, i32 4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %29, %19
  %40 = load %struct.komeda_component_state*, %struct.komeda_component_state** %4, align 8
  %41 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load %struct.komeda_component_output*, %struct.komeda_component_output** %5, align 8
  %47 = call i32 @memcpy(i32* %45, %struct.komeda_component_output* %46, i32 4)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load %struct.komeda_component_state*, %struct.komeda_component_state** %4, align 8
  %51 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %39, %29
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = load %struct.komeda_component_state*, %struct.komeda_component_state** %4, align 8
  %58 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = load %struct.komeda_component_state*, %struct.komeda_component_state** %4, align 8
  %64 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @has_bit(i32, i32) #1

declare dso_local i64 @memcmp(i32*, %struct.komeda_component_output*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.komeda_component_output*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
