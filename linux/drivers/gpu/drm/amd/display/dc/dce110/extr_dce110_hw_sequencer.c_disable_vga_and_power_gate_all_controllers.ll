; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_disable_vga_and_power_gate_all_controllers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_disable_vga_and_power_gate_all_controllers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.dc_context* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.dc.0*, %struct.TYPE_12__*)* }
%struct.dc.0 = type opaque
%struct.TYPE_8__ = type { i32, i32, %struct.timing_generator** }
%struct.timing_generator = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.timing_generator*)* }
%struct.dc_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @disable_vga_and_power_gate_all_controllers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_vga_and_power_gate_all_controllers(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca %struct.dc_context*, align 8
  store %struct.dc* %0, %struct.dc** %2, align 8
  %6 = load %struct.dc*, %struct.dc** %2, align 8
  %7 = getelementptr inbounds %struct.dc, %struct.dc* %6, i32 0, i32 3
  %8 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  store %struct.dc_context* %8, %struct.dc_context** %5, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %42, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.dc*, %struct.dc** %2, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %9
  %18 = load %struct.dc*, %struct.dc** %2, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.timing_generator**, %struct.timing_generator*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %22, i64 %24
  %26 = load %struct.timing_generator*, %struct.timing_generator** %25, align 8
  store %struct.timing_generator* %26, %struct.timing_generator** %4, align 8
  %27 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %28 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %30, align 8
  %32 = icmp ne i32 (%struct.timing_generator*)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %17
  %34 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %35 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %37, align 8
  %39 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %40 = call i32 %38(%struct.timing_generator* %39)
  br label %41

41:                                               ; preds = %33, %17
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %9

45:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %84, %45
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.dc*, %struct.dc** %2, align 8
  %49 = getelementptr inbounds %struct.dc, %struct.dc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %46
  %55 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %56 = call i32 @enable_display_pipe_clock_gating(%struct.dc_context* %55, i32 1)
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.dc*, %struct.dc** %2, align 8
  %59 = getelementptr inbounds %struct.dc, %struct.dc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 %57, i32* %67, align 4
  %68 = load %struct.dc*, %struct.dc** %2, align 8
  %69 = getelementptr inbounds %struct.dc, %struct.dc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32 (%struct.dc.0*, %struct.TYPE_12__*)*, i32 (%struct.dc.0*, %struct.TYPE_12__*)** %70, align 8
  %72 = load %struct.dc*, %struct.dc** %2, align 8
  %73 = bitcast %struct.dc* %72 to %struct.dc.0*
  %74 = load %struct.dc*, %struct.dc** %2, align 8
  %75 = getelementptr inbounds %struct.dc, %struct.dc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 %81
  %83 = call i32 %71(%struct.dc.0* %73, %struct.TYPE_12__* %82)
  br label %84

84:                                               ; preds = %54
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %46

87:                                               ; preds = %46
  ret void
}

declare dso_local i32 @enable_display_pipe_clock_gating(%struct.dc_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
