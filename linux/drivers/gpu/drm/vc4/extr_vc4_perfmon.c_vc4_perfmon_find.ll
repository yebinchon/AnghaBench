; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_perfmon.c_vc4_perfmon_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_perfmon.c_vc4_perfmon_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_perfmon = type { i32 }
%struct.vc4_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vc4_perfmon* @vc4_perfmon_find(%struct.vc4_file* %0, i32 %1) #0 {
  %3 = alloca %struct.vc4_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc4_perfmon*, align 8
  store %struct.vc4_file* %0, %struct.vc4_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vc4_file*, %struct.vc4_file** %3, align 8
  %7 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.vc4_file*, %struct.vc4_file** %3, align 8
  %11 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.vc4_perfmon* @idr_find(i32* %12, i32 %13)
  store %struct.vc4_perfmon* %14, %struct.vc4_perfmon** %5, align 8
  %15 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %5, align 8
  %16 = call i32 @vc4_perfmon_get(%struct.vc4_perfmon* %15)
  %17 = load %struct.vc4_file*, %struct.vc4_file** %3, align 8
  %18 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %5, align 8
  ret %struct.vc4_perfmon* %21
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vc4_perfmon* @idr_find(i32*, i32) #1

declare dso_local i32 @vc4_perfmon_get(%struct.vc4_perfmon*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
