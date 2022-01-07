; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_smu_sat.c_wf_sat_sensor_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_smu_sat.c_wf_sat_sensor_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { i32 }
%struct.wf_sat_sensor = type { i32, i32, i32, %struct.wf_sat* }
%struct.wf_sat = type { i32*, i32, i64, i32* }

@ENODEV = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@MAX_AGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_sensor*, i32*)* @wf_sat_sensor_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_sat_sensor_get(%struct.wf_sensor* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wf_sensor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wf_sat_sensor*, align 8
  %7 = alloca %struct.wf_sat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wf_sensor* %0, %struct.wf_sensor** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %12 = call %struct.wf_sat_sensor* @wf_to_sat(%struct.wf_sensor* %11)
  store %struct.wf_sat_sensor* %12, %struct.wf_sat_sensor** %6, align 8
  %13 = load %struct.wf_sat_sensor*, %struct.wf_sat_sensor** %6, align 8
  %14 = getelementptr inbounds %struct.wf_sat_sensor, %struct.wf_sat_sensor* %13, i32 0, i32 3
  %15 = load %struct.wf_sat*, %struct.wf_sat** %14, align 8
  store %struct.wf_sat* %15, %struct.wf_sat** %7, align 8
  %16 = load %struct.wf_sat*, %struct.wf_sat** %7, align 8
  %17 = getelementptr inbounds %struct.wf_sat, %struct.wf_sat* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %105

23:                                               ; preds = %2
  %24 = load %struct.wf_sat*, %struct.wf_sat** %7, align 8
  %25 = getelementptr inbounds %struct.wf_sat, %struct.wf_sat* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* @jiffies, align 4
  %28 = load %struct.wf_sat*, %struct.wf_sat** %7, align 8
  %29 = getelementptr inbounds %struct.wf_sat, %struct.wf_sat* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAX_AGE, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i64 @time_after(i32 %27, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = load %struct.wf_sat*, %struct.wf_sat** %7, align 8
  %37 = call i32 @wf_sat_read_cache(%struct.wf_sat* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %100

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.wf_sat_sensor*, %struct.wf_sat_sensor** %6, align 8
  %44 = getelementptr inbounds %struct.wf_sat_sensor, %struct.wf_sat_sensor* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* %8, align 4
  %47 = load %struct.wf_sat*, %struct.wf_sat** %7, align 8
  %48 = getelementptr inbounds %struct.wf_sat, %struct.wf_sat* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = load %struct.wf_sat*, %struct.wf_sat** %7, align 8
  %56 = getelementptr inbounds %struct.wf_sat, %struct.wf_sat* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %54, %62
  %64 = load %struct.wf_sat_sensor*, %struct.wf_sat_sensor** %6, align 8
  %65 = getelementptr inbounds %struct.wf_sat_sensor, %struct.wf_sat_sensor* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %63, %66
  store i32 %67, i32* %10, align 4
  %68 = load %struct.wf_sat_sensor*, %struct.wf_sat_sensor** %6, align 8
  %69 = getelementptr inbounds %struct.wf_sat_sensor, %struct.wf_sat_sensor* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %42
  %73 = load %struct.wf_sat_sensor*, %struct.wf_sat_sensor** %6, align 8
  %74 = getelementptr inbounds %struct.wf_sat_sensor, %struct.wf_sat_sensor* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 2
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.wf_sat*, %struct.wf_sat** %7, align 8
  %79 = getelementptr inbounds %struct.wf_sat, %struct.wf_sat* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = load %struct.wf_sat*, %struct.wf_sat** %7, align 8
  %87 = getelementptr inbounds %struct.wf_sat, %struct.wf_sat* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %85, %93
  %95 = mul nsw i32 %77, %94
  %96 = ashr i32 %95, 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %72, %42
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %5, align 8
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %97, %40
  %101 = load %struct.wf_sat*, %struct.wf_sat** %7, align 8
  %102 = getelementptr inbounds %struct.wf_sat, %struct.wf_sat* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %20
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.wf_sat_sensor* @wf_to_sat(%struct.wf_sensor*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @wf_sat_read_cache(%struct.wf_sat*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
