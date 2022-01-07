; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_sink.c_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_sink.c_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_sink = type { i32, i32*, i32, i32, %struct.TYPE_2__*, %struct.dc_link*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dc_link = type { %struct.TYPE_2__* }
%struct.dc_sink_init_data = type { %struct.dc_link*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_sink*, %struct.dc_sink_init_data*)* @construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct(%struct.dc_sink* %0, %struct.dc_sink_init_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_sink*, align 8
  %5 = alloca %struct.dc_sink_init_data*, align 8
  %6 = alloca %struct.dc_link*, align 8
  store %struct.dc_sink* %0, %struct.dc_sink** %4, align 8
  store %struct.dc_sink_init_data* %1, %struct.dc_sink_init_data** %5, align 8
  %7 = load %struct.dc_sink_init_data*, %struct.dc_sink_init_data** %5, align 8
  %8 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %7, i32 0, i32 0
  %9 = load %struct.dc_link*, %struct.dc_link** %8, align 8
  store %struct.dc_link* %9, %struct.dc_link** %6, align 8
  %10 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %11 = icmp ne %struct.dc_link* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.dc_sink_init_data*, %struct.dc_sink_init_data** %5, align 8
  %15 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %18 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %20 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %21 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %20, i32 0, i32 5
  store %struct.dc_link* %19, %struct.dc_link** %21, align 8
  %22 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %23 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %26 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %25, i32 0, i32 4
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.dc_sink_init_data*, %struct.dc_sink_init_data** %5, align 8
  %28 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %31 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dc_sink_init_data*, %struct.dc_sink_init_data** %5, align 8
  %33 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %36 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %38 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.dc_sink_init_data*, %struct.dc_sink_init_data** %5, align 8
  %40 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %39, i32 0, i32 0
  %41 = load %struct.dc_link*, %struct.dc_link** %40, align 8
  %42 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dc_sink*, %struct.dc_sink** %4, align 8
  %47 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dc_sink_init_data*, %struct.dc_sink_init_data** %5, align 8
  %49 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %48, i32 0, i32 0
  %50 = load %struct.dc_link*, %struct.dc_link** %49, align 8
  %51 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %13, %12
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
