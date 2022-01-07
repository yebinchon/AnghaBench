; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_get_od_percentage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_get_od_percentage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_dpm_context }
%struct.smu_dpm_context = type { %struct.vega20_dpm_table*, %struct.vega20_dpm_table* }
%struct.vega20_dpm_table = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @vega20_get_od_percentage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_get_od_percentage(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_dpm_context*, align 8
  %7 = alloca %struct.vega20_dpm_table*, align 8
  %8 = alloca %struct.vega20_dpm_table*, align 8
  %9 = alloca %struct.vega20_single_dpm_table*, align 8
  %10 = alloca %struct.vega20_single_dpm_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %14 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %13, i32 0, i32 0
  store %struct.smu_dpm_context* %14, %struct.smu_dpm_context** %6, align 8
  store %struct.vega20_dpm_table* null, %struct.vega20_dpm_table** %7, align 8
  store %struct.vega20_dpm_table* null, %struct.vega20_dpm_table** %8, align 8
  %15 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %6, align 8
  %16 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %15, i32 0, i32 1
  %17 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %16, align 8
  store %struct.vega20_dpm_table* %17, %struct.vega20_dpm_table** %7, align 8
  %18 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %6, align 8
  %19 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %18, i32 0, i32 0
  %20 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %19, align 8
  store %struct.vega20_dpm_table* %20, %struct.vega20_dpm_table** %8, align 8
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %32 [
    i32 128, label %22
    i32 129, label %27
  ]

22:                                               ; preds = %2
  %23 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %24 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %23, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %24, %struct.vega20_single_dpm_table** %9, align 8
  %25 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %26 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %25, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %26, %struct.vega20_single_dpm_table** %10, align 8
  br label %35

27:                                               ; preds = %2
  %28 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %29 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %28, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %29, %struct.vega20_single_dpm_table** %9, align 8
  %30 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %8, align 8
  %31 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %30, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %31, %struct.vega20_single_dpm_table** %10, align 8
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %66

35:                                               ; preds = %27, %22
  %36 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %37 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %9, align 8
  %40 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %10, align 8
  %48 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %10, align 8
  %51 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 %61, 100
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @DIV_ROUND_UP(i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %35, %32
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
