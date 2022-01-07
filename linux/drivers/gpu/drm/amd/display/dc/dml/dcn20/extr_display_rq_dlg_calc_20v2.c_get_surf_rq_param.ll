; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_rq_dlg_calc_20v2.c_get_surf_rq_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_rq_dlg_calc_20v2.c_get_surf_rq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display_mode_lib*, %struct.TYPE_7__*, i32*, i32*, %struct.TYPE_6__*, i32)* @get_surf_rq_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_surf_rq_param(%struct.display_mode_lib* %0, %struct.TYPE_7__* %1, i32* %2, i32* %3, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %4, i32 %5) #0 {
  %7 = alloca %struct.display_mode_lib*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %5, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 2, i32 1
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %17, align 4
  %28 = udiv i32 %26, %27
  store i32 %28, i32* %13, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %15, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  br label %46

35:                                               ; preds = %6
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %17, align 4
  %39 = udiv i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %15, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %35, %24
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 8192, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 65536
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %59

56:                                               ; preds = %46
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 1024, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i32 2048, i32* %61, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  store i32 256, i32* %63, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  store i32 2048, i32* %65, align 4
  %66 = load %struct.display_mode_lib*, %struct.display_mode_lib** %7, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @get_meta_and_pte_attr(%struct.display_mode_lib* %66, i32* %67, i32* %68, %struct.TYPE_7__* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %75, i32 %77, i32 %79, i32 %81, i32 %82)
  ret void
}

declare dso_local i32 @get_meta_and_pte_attr(%struct.display_mode_lib*, i32*, i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
