; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.smu_table_context }
%struct.smu_table_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i8*, i32*)* @arcturus_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcturus_read_sensor(%struct.smu_context* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.smu_table_context*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %14 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %13, i32 0, i32 1
  store %struct.smu_table_context* %14, %struct.smu_table_context** %10, align 8
  %15 = load %struct.smu_table_context*, %struct.smu_table_context** %10, align 8
  %16 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %69

26:                                               ; preds = %20
  %27 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %28 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %58 [
    i32 130, label %31
    i32 129, label %38
    i32 133, label %38
    i32 132, label %45
    i32 131, label %51
    i32 134, label %51
    i32 128, label %51
  ]

31:                                               ; preds = %26
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 4, i32* %37, align 4
  br label %64

38:                                               ; preds = %26, %26
  %39 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = call i32 @arcturus_get_current_activity_percent(%struct.smu_context* %39, i32 %40, i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 4, i32* %44, align 4
  br label %64

45:                                               ; preds = %26
  %46 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = call i32 @arcturus_get_gpu_power(%struct.smu_context* %46, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 4, i32* %50, align 4
  br label %64

51:                                               ; preds = %26, %26, %26
  %52 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = call i32 @arcturus_thermal_get_temperature(%struct.smu_context* %52, i32 %53, i32* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 4, i32* %57, align 4
  br label %64

58:                                               ; preds = %26
  %59 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @smu_smc_read_sensor(%struct.smu_context* %59, i32 %60, i8* %61, i32* %62)
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %58, %51, %45, %38, %31
  %65 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %66 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %23
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @arcturus_get_current_activity_percent(%struct.smu_context*, i32, i32*) #1

declare dso_local i32 @arcturus_get_gpu_power(%struct.smu_context*, i32*) #1

declare dso_local i32 @arcturus_thermal_get_temperature(%struct.smu_context*, i32, i32*) #1

declare dso_local i32 @smu_smc_read_sensor(%struct.smu_context*, i32, i8*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
