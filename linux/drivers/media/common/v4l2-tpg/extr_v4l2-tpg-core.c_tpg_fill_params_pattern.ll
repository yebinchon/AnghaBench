; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_fill_params_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_fill_params_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i32, i32, i32, i32, i32 }
%struct.tpg_draw_params = type { i32, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpg_data*, i32, %struct.tpg_draw_params*)* @tpg_fill_params_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpg_fill_params_pattern(%struct.tpg_data* %0, i32 %1, %struct.tpg_draw_params* %2) #0 {
  %4 = alloca %struct.tpg_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpg_draw_params*, align 8
  store %struct.tpg_data* %0, %struct.tpg_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tpg_draw_params* %2, %struct.tpg_draw_params** %6, align 8
  %7 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %10 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %13 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = srem i32 %11, %14
  %16 = call i8* @tpg_hscale_div(%struct.tpg_data* %7, i32 %8, i32 %15)
  %17 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %18 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %22 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %25 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %29 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = srem i32 %27, %30
  %32 = call i8* @tpg_hscale_div(%struct.tpg_data* %19, i32 %20, i32 %31)
  %33 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %34 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %36 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %39 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = srem i32 %37, %40
  %42 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %43 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %45 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %48 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %52 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %50, %53
  %55 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %56 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local i8* @tpg_hscale_div(%struct.tpg_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
