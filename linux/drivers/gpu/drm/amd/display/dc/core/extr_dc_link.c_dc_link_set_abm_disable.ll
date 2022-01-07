; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_abm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_abm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.abm* }
%struct.abm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.abm*)*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_set_abm_disable(%struct.dc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.abm*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  %6 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %7 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.dc*, %struct.dc** %9, align 8
  store %struct.dc* %10, %struct.dc** %4, align 8
  %11 = load %struct.dc*, %struct.dc** %4, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.abm*, %struct.abm** %14, align 8
  store %struct.abm* %15, %struct.abm** %5, align 8
  %16 = load %struct.abm*, %struct.abm** %5, align 8
  %17 = icmp eq %struct.abm* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.abm*, %struct.abm** %5, align 8
  %20 = getelementptr inbounds %struct.abm, %struct.abm* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %34

26:                                               ; preds = %18
  %27 = load %struct.abm*, %struct.abm** %5, align 8
  %28 = getelementptr inbounds %struct.abm, %struct.abm* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (%struct.abm*)*, i32 (%struct.abm*)** %30, align 8
  %32 = load %struct.abm*, %struct.abm** %5, align 8
  %33 = call i32 %31(%struct.abm* %32)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
