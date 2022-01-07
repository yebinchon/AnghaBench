; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_validate_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_validate_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.timing_generator** }
%struct.timing_generator = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.timing_generator*, i32*)* }
%struct.dc_stream_state = type { i32, %struct.dc_link* }
%struct.dc_link = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, %struct.dc_stream_state*)* }

@DC_OK = common dso_local global i32 0, align 4
@DC_FAIL_CONTROLLER_VALIDATE = common dso_local global i32 0, align 4
@DC_FAIL_ENC_VALIDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_validate_stream(%struct.dc* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_link*, align 8
  %7 = alloca %struct.timing_generator*, align 8
  %8 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %4, align 8
  %9 = load %struct.dc*, %struct.dc** %3, align 8
  store %struct.dc* %9, %struct.dc** %5, align 8
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %11 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %10, i32 0, i32 1
  %12 = load %struct.dc_link*, %struct.dc_link** %11, align 8
  store %struct.dc_link* %12, %struct.dc_link** %6, align 8
  %13 = load %struct.dc*, %struct.dc** %5, align 8
  %14 = getelementptr inbounds %struct.dc, %struct.dc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.timing_generator**, %struct.timing_generator*** %16, align 8
  %18 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %17, i64 0
  %19 = load %struct.timing_generator*, %struct.timing_generator** %18, align 8
  store %struct.timing_generator* %19, %struct.timing_generator** %7, align 8
  %20 = load i32, i32* @DC_OK, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %22 = call i32 @calculate_phy_pix_clks(%struct.dc_stream_state* %21)
  %23 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %24 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.timing_generator*, i32*)*, i32 (%struct.timing_generator*, i32*)** %26, align 8
  %28 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  %29 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %30 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %29, i32 0, i32 0
  %31 = call i32 %27(%struct.timing_generator* %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @DC_FAIL_CONTROLLER_VALIDATE, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DC_OK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %41 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_8__*, %struct.dc_stream_state*)*, i32 (%struct.TYPE_8__*, %struct.dc_stream_state*)** %45, align 8
  %47 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %48 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %51 = call i32 %46(%struct.TYPE_8__* %49, %struct.dc_stream_state* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %39
  %54 = load i32, i32* @DC_FAIL_ENC_VALIDATE, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %39
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @DC_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %62 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %63 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %64 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %63, i32 0, i32 0
  %65 = call i32 @dc_link_validate_mode_timing(%struct.dc_stream_state* %61, %struct.dc_link* %62, i32* %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %60, %56
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @calculate_phy_pix_clks(%struct.dc_stream_state*) #1

declare dso_local i32 @dc_link_validate_mode_timing(%struct.dc_stream_state*, %struct.dc_link*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
