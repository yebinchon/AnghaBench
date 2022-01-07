; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_to_d71_input_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_to_d71_input_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component_state = type { i32, %struct.komeda_component_output* }
%struct.komeda_component_output = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.komeda_component_state*, i32)* @to_d71_input_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @to_d71_input_id(%struct.komeda_component_state* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.komeda_component_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.komeda_component_output*, align 8
  store %struct.komeda_component_state* %0, %struct.komeda_component_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.komeda_component_state*, %struct.komeda_component_state** %4, align 8
  %8 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %7, i32 0, i32 1
  %9 = load %struct.komeda_component_output*, %struct.komeda_component_output** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.komeda_component_output, %struct.komeda_component_output* %9, i64 %11
  store %struct.komeda_component_output* %12, %struct.komeda_component_output** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.komeda_component_state*, %struct.komeda_component_state** %4, align 8
  %15 = getelementptr inbounds %struct.komeda_component_state, %struct.komeda_component_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @has_bit(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.komeda_component_output*, %struct.komeda_component_output** %6, align 8
  %21 = getelementptr inbounds %struct.komeda_component_output, %struct.komeda_component_output* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.komeda_component_output*, %struct.komeda_component_output** %6, align 8
  %26 = getelementptr inbounds %struct.komeda_component_output, %struct.komeda_component_output* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %3, align 8
  br label %30

29:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local i64 @has_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
