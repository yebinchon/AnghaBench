; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_get_clock_requirements_for_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_get_clock_requirements_for_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.AsicStateEx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_clock_requirements_for_state(%struct.dc_state* %0, %struct.AsicStateEx* %1) #0 {
  %3 = alloca %struct.dc_state*, align 8
  %4 = alloca %struct.AsicStateEx*, align 8
  store %struct.dc_state* %0, %struct.dc_state** %3, align 8
  store %struct.AsicStateEx* %1, %struct.AsicStateEx** %4, align 8
  %5 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %6 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load %struct.AsicStateEx*, %struct.AsicStateEx** %4, align 8
  %14 = getelementptr inbounds %struct.AsicStateEx, %struct.AsicStateEx* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %16 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.AsicStateEx*, %struct.AsicStateEx** %4, align 8
  %24 = getelementptr inbounds %struct.AsicStateEx, %struct.AsicStateEx* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %26 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.AsicStateEx*, %struct.AsicStateEx** %4, align 8
  %34 = getelementptr inbounds %struct.AsicStateEx, %struct.AsicStateEx* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %36 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.AsicStateEx*, %struct.AsicStateEx** %4, align 8
  %44 = getelementptr inbounds %struct.AsicStateEx, %struct.AsicStateEx* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %46 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.AsicStateEx*, %struct.AsicStateEx** %4, align 8
  %54 = getelementptr inbounds %struct.AsicStateEx, %struct.AsicStateEx* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %56 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.AsicStateEx*, %struct.AsicStateEx** %4, align 8
  %64 = getelementptr inbounds %struct.AsicStateEx, %struct.AsicStateEx* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %66 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.AsicStateEx*, %struct.AsicStateEx** %4, align 8
  %74 = getelementptr inbounds %struct.AsicStateEx, %struct.AsicStateEx* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  %75 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %76 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.AsicStateEx*, %struct.AsicStateEx** %4, align 8
  %84 = getelementptr inbounds %struct.AsicStateEx, %struct.AsicStateEx* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %86 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.AsicStateEx*, %struct.AsicStateEx** %4, align 8
  %94 = getelementptr inbounds %struct.AsicStateEx, %struct.AsicStateEx* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
