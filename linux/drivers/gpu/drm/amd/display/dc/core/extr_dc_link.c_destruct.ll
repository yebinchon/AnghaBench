; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32, i64*, i64, %struct.TYPE_4__*, i64, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__**)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_link*)* @destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destruct(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %4 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %5 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %4, i32 0, i32 5
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %10 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @dal_gpio_close(i32* %11)
  %13 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %14 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %13, i32 0, i32 5
  %15 = call i32 @dal_gpio_destroy_irq(i32** %14)
  %16 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %17 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %20 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %25 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %24, i32 0, i32 4
  %26 = call i32 @dal_ddc_service_destroy(i64* %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %29 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %34 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_4__**)*, i32 (%struct.TYPE_4__**)** %38, align 8
  %40 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %41 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %40, i32 0, i32 3
  %42 = call i32 %39(%struct.TYPE_4__** %41)
  br label %43

43:                                               ; preds = %32, %27
  %44 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %45 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %50 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @dc_sink_release(i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %57 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %62 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @dc_sink_release(i64 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %54

72:                                               ; preds = %54
  ret void
}

declare dso_local i32 @dal_gpio_close(i32*) #1

declare dso_local i32 @dal_gpio_destroy_irq(i32**) #1

declare dso_local i32 @dal_ddc_service_destroy(i64*) #1

declare dso_local i32 @dc_sink_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
