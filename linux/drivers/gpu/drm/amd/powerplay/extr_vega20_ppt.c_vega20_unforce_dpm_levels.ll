; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_unforce_dpm_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_unforce_dpm_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.vega20_dpm_table = type { %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to upload DPM Bootup Levels!\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to upload DPM Max Levels!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @vega20_unforce_dpm_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_unforce_dpm_levels(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vega20_dpm_table*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %9 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.vega20_dpm_table*
  store %struct.vega20_dpm_table* %12, %struct.vega20_dpm_table** %7, align 8
  %13 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %14 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %13, i32 0, i32 1
  %15 = call i64 @vega20_find_lowest_dpm_level(%struct.TYPE_9__* %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %17 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %16, i32 0, i32 1
  %18 = call i64 @vega20_find_highest_dpm_level(%struct.TYPE_9__* %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %20 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %28 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %32 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %40 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %44 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %43, i32 0, i32 2
  %45 = call i64 @vega20_find_lowest_dpm_level(%struct.TYPE_9__* %44)
  store i64 %45, i64* %4, align 8
  %46 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %47 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %46, i32 0, i32 2
  %48 = call i64 @vega20_find_highest_dpm_level(%struct.TYPE_9__* %47)
  store i64 %48, i64* %5, align 8
  %49 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %50 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %58 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %62 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %70 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %74 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %73, i32 0, i32 0
  %75 = call i64 @vega20_find_lowest_dpm_level(%struct.TYPE_9__* %74)
  store i64 %75, i64* %4, align 8
  %76 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %77 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %76, i32 0, i32 0
  %78 = call i64 @vega20_find_highest_dpm_level(%struct.TYPE_9__* %77)
  store i64 %78, i64* %5, align 8
  %79 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %80 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %88 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  %91 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %92 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %7, align 8
  %100 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 8
  %103 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %104 = call i32 @vega20_upload_dpm_level(%struct.smu_context* %103, i32 0, i32 -1)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %1
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %120

110:                                              ; preds = %1
  %111 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %112 = call i32 @vega20_upload_dpm_level(%struct.smu_context* %111, i32 1, i32 -1)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  br label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %115, %107
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @vega20_find_lowest_dpm_level(%struct.TYPE_9__*) #1

declare dso_local i64 @vega20_find_highest_dpm_level(%struct.TYPE_9__*) #1

declare dso_local i32 @vega20_upload_dpm_level(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
