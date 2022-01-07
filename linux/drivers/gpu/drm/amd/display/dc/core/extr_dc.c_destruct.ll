; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destruct(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  store %struct.dc* %0, %struct.dc** %2, align 8
  %3 = load %struct.dc*, %struct.dc** %2, align 8
  %4 = getelementptr inbounds %struct.dc, %struct.dc* %3, i32 0, i32 7
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.dc*, %struct.dc** %2, align 8
  %9 = getelementptr inbounds %struct.dc, %struct.dc* %8, i32 0, i32 7
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @dc_release_state(i32* %10)
  %12 = load %struct.dc*, %struct.dc** %2, align 8
  %13 = getelementptr inbounds %struct.dc, %struct.dc* %12, i32 0, i32 7
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.dc*, %struct.dc** %2, align 8
  %16 = call i32 @destroy_links(%struct.dc* %15)
  %17 = load %struct.dc*, %struct.dc** %2, align 8
  %18 = getelementptr inbounds %struct.dc, %struct.dc* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.dc*, %struct.dc** %2, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @dc_destroy_clk_mgr(i32* %24)
  %26 = load %struct.dc*, %struct.dc** %2, align 8
  %27 = getelementptr inbounds %struct.dc, %struct.dc* %26, i32 0, i32 6
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.dc*, %struct.dc** %2, align 8
  %30 = call i32 @dc_destroy_resource_pool(%struct.dc* %29)
  %31 = load %struct.dc*, %struct.dc** %2, align 8
  %32 = getelementptr inbounds %struct.dc, %struct.dc* %31, i32 0, i32 5
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.dc*, %struct.dc** %2, align 8
  %39 = getelementptr inbounds %struct.dc, %struct.dc* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = call i32 @dal_gpio_service_destroy(i64* %41)
  br label %43

43:                                               ; preds = %37, %28
  %44 = load %struct.dc*, %struct.dc** %2, align 8
  %45 = getelementptr inbounds %struct.dc, %struct.dc* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.dc*, %struct.dc** %2, align 8
  %52 = getelementptr inbounds %struct.dc, %struct.dc* %51, i32 0, i32 5
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @dal_bios_parser_destroy(i32* %54)
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.dc*, %struct.dc** %2, align 8
  %58 = getelementptr inbounds %struct.dc, %struct.dc* %57, i32 0, i32 5
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @dc_perf_trace_destroy(i32* %60)
  %62 = load %struct.dc*, %struct.dc** %2, align 8
  %63 = getelementptr inbounds %struct.dc, %struct.dc* %62, i32 0, i32 5
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = call i32 @kfree(%struct.TYPE_2__* %64)
  %66 = load %struct.dc*, %struct.dc** %2, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 5
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %67, align 8
  %68 = load %struct.dc*, %struct.dc** %2, align 8
  %69 = getelementptr inbounds %struct.dc, %struct.dc* %68, i32 0, i32 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = call i32 @kfree(%struct.TYPE_2__* %70)
  %72 = load %struct.dc*, %struct.dc** %2, align 8
  %73 = getelementptr inbounds %struct.dc, %struct.dc* %72, i32 0, i32 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %73, align 8
  %74 = load %struct.dc*, %struct.dc** %2, align 8
  %75 = getelementptr inbounds %struct.dc, %struct.dc* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = call i32 @kfree(%struct.TYPE_2__* %76)
  %78 = load %struct.dc*, %struct.dc** %2, align 8
  %79 = getelementptr inbounds %struct.dc, %struct.dc* %78, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %79, align 8
  ret void
}

declare dso_local i32 @dc_release_state(i32*) #1

declare dso_local i32 @destroy_links(%struct.dc*) #1

declare dso_local i32 @dc_destroy_clk_mgr(i32*) #1

declare dso_local i32 @dc_destroy_resource_pool(%struct.dc*) #1

declare dso_local i32 @dal_gpio_service_destroy(i64*) #1

declare dso_local i32 @dal_bios_parser_destroy(i32*) #1

declare dso_local i32 @dc_perf_trace_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
