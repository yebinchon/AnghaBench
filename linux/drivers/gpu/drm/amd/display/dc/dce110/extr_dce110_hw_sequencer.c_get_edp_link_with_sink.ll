; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_get_edp_link_with_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_get_edp_link_with_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dc = type { i32, %struct.dc_link** }
%struct.dc_state = type { i32 }

@SIGNAL_TYPE_EDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dc_link* (%struct.dc*, %struct.dc_state*)* @get_edp_link_with_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dc_link* @get_edp_link_with_sink(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_link*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  store %struct.dc_link* null, %struct.dc_link** %6, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %47, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.dc*, %struct.dc** %3, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %7
  %14 = load %struct.dc*, %struct.dc** %3, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 1
  %16 = load %struct.dc_link**, %struct.dc_link*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dc_link*, %struct.dc_link** %16, i64 %18
  %20 = load %struct.dc_link*, %struct.dc_link** %19, align 8
  %21 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %13
  %25 = load %struct.dc*, %struct.dc** %3, align 8
  %26 = getelementptr inbounds %struct.dc, %struct.dc* %25, i32 0, i32 1
  %27 = load %struct.dc_link**, %struct.dc_link*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.dc_link*, %struct.dc_link** %27, i64 %29
  %31 = load %struct.dc_link*, %struct.dc_link** %30, align 8
  %32 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SIGNAL_TYPE_EDP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %24
  %39 = load %struct.dc*, %struct.dc** %3, align 8
  %40 = getelementptr inbounds %struct.dc, %struct.dc* %39, i32 0, i32 1
  %41 = load %struct.dc_link**, %struct.dc_link*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dc_link*, %struct.dc_link** %41, i64 %43
  %45 = load %struct.dc_link*, %struct.dc_link** %44, align 8
  store %struct.dc_link* %45, %struct.dc_link** %6, align 8
  br label %50

46:                                               ; preds = %24, %13
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %7

50:                                               ; preds = %38, %7
  %51 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  ret %struct.dc_link* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
