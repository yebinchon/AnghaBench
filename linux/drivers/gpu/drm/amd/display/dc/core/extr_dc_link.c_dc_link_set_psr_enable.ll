; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_psr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_psr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.dmcu* }
%struct.dmcu = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.dmcu*, i32, i32)*, i64 (%struct.dmcu*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_set_psr_enable(%struct.dc_link* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.dmcu*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %10 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.dc*, %struct.dc** %12, align 8
  store %struct.dc* %13, %struct.dc** %7, align 8
  %14 = load %struct.dc*, %struct.dc** %7, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.dmcu*, %struct.dmcu** %17, align 8
  store %struct.dmcu* %18, %struct.dmcu** %8, align 8
  %19 = load %struct.dmcu*, %struct.dmcu** %8, align 8
  %20 = icmp ne %struct.dmcu* %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load %struct.dmcu*, %struct.dmcu** %8, align 8
  %23 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64 (%struct.dmcu*)*, i64 (%struct.dmcu*)** %25, align 8
  %27 = load %struct.dmcu*, %struct.dmcu** %8, align 8
  %28 = call i64 %26(%struct.dmcu* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %21
  %31 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %32 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.dmcu*, %struct.dmcu** %8, align 8
  %37 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32 (%struct.dmcu*, i32, i32)*, i32 (%struct.dmcu*, i32, i32)** %39, align 8
  %41 = load %struct.dmcu*, %struct.dmcu** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 %40(%struct.dmcu* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %30, %21, %3
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
