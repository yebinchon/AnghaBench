; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_force_dpm_limit_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_force_dpm_limit_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.arcturus_dpm_table = type { %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to upload boot level to %s!\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"highest\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"lowest\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to upload dpm max level to %s!\0A!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @arcturus_force_dpm_limit_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcturus_force_dpm_limit_value(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arcturus_dpm_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %10 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.arcturus_dpm_table*
  store %struct.arcturus_dpm_table* %13, %struct.arcturus_dpm_table** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %18 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %17, i32 0, i32 2
  %19 = call i64 @arcturus_find_highest_dpm_level(%struct.TYPE_9__* %18)
  store i64 %19, i64* %7, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %22 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %21, i32 0, i32 2
  %23 = call i64 @arcturus_find_lowest_dpm_level(%struct.TYPE_9__* %22)
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %26 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %34 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %38 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %32, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %24
  %44 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %45 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %44, i32 0, i32 1
  %46 = call i64 @arcturus_find_highest_dpm_level(%struct.TYPE_9__* %45)
  store i64 %46, i64* %7, align 8
  br label %51

47:                                               ; preds = %24
  %48 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %49 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %48, i32 0, i32 1
  %50 = call i64 @arcturus_find_lowest_dpm_level(%struct.TYPE_9__* %49)
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %53 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %61 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %65 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32 %59, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %51
  %71 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %72 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %71, i32 0, i32 0
  %73 = call i64 @arcturus_find_highest_dpm_level(%struct.TYPE_9__* %72)
  store i64 %73, i64* %7, align 8
  br label %78

74:                                               ; preds = %51
  %75 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %76 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %75, i32 0, i32 0
  %77 = call i64 @arcturus_find_lowest_dpm_level(%struct.TYPE_9__* %76)
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %80 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %88 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %6, align 8
  %92 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i32 %86, i32* %94, align 4
  %95 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %96 = call i32 @arcturus_upload_dpm_level(%struct.smu_context* %95, i32 0, i32 -1)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %78
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %120

106:                                              ; preds = %78
  %107 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %108 = call i32 @arcturus_upload_dpm_level(%struct.smu_context* %107, i32 1, i32 -1)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %116 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %120

118:                                              ; preds = %106
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %111, %99
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @arcturus_find_highest_dpm_level(%struct.TYPE_9__*) #1

declare dso_local i64 @arcturus_find_lowest_dpm_level(%struct.TYPE_9__*) #1

declare dso_local i32 @arcturus_upload_dpm_level(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
