; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-seiko-43wvf1g.c_seiko_panel_get_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-seiko-43wvf1g.c_seiko_panel_get_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.display_timing = type { i32 }
%struct.seiko_panel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.display_timing* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*, i32, %struct.display_timing*)* @seiko_panel_get_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seiko_panel_get_timings(%struct.drm_panel* %0, i32 %1, %struct.display_timing* %2) #0 {
  %4 = alloca %struct.drm_panel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.display_timing*, align 8
  %7 = alloca %struct.seiko_panel*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.display_timing* %2, %struct.display_timing** %6, align 8
  %9 = load %struct.drm_panel*, %struct.drm_panel** %4, align 8
  %10 = call %struct.seiko_panel* @to_seiko_panel(%struct.drm_panel* %9)
  store %struct.seiko_panel* %10, %struct.seiko_panel** %7, align 8
  %11 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %12 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %20 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %26 = icmp ne %struct.display_timing* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.display_timing*, %struct.display_timing** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %33, i64 %35
  %37 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %38 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.display_timing*, %struct.display_timing** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %41, i64 %43
  %45 = bitcast %struct.display_timing* %36 to i8*
  %46 = bitcast %struct.display_timing* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %28

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50, %24
  %52 = load %struct.seiko_panel*, %struct.seiko_panel** %7, align 8
  %53 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  ret i32 %56
}

declare dso_local %struct.seiko_panel* @to_seiko_panel(%struct.drm_panel*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
