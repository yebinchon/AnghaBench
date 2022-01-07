; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_get_backlight_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_get_backlight_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.abm* }
%struct.abm = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (%struct.abm*)* }

@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_get_backlight_level(%struct.dc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca %struct.abm*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  %5 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %6 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.abm*, %struct.abm** %12, align 8
  store %struct.abm* %13, %struct.abm** %4, align 8
  %14 = load %struct.abm*, %struct.abm** %4, align 8
  %15 = icmp eq %struct.abm* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.abm*, %struct.abm** %4, align 8
  %18 = getelementptr inbounds %struct.abm, %struct.abm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64 (%struct.abm*)*, i64 (%struct.abm*)** %20, align 8
  %22 = icmp eq i64 (%struct.abm*)* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16, %1
  %24 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %16
  %26 = load %struct.abm*, %struct.abm** %4, align 8
  %27 = getelementptr inbounds %struct.abm, %struct.abm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64 (%struct.abm*)*, i64 (%struct.abm*)** %29, align 8
  %31 = load %struct.abm*, %struct.abm** %4, align 8
  %32 = call i64 %30(%struct.abm* %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %23
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
