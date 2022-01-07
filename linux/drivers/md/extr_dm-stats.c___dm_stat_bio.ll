; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c___dm_stat_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c___dm_stat_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_stat = type { i64, i64, i64, i64, i32 }
%struct.dm_stats_aux = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Invalid area access in region id %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_stat*, i32, i64, i64, i32, i64, %struct.dm_stats_aux*)* @__dm_stat_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dm_stat_bio(%struct.dm_stat* %0, i32 %1, i64 %2, i64 %3, i32 %4, i64 %5, %struct.dm_stats_aux* %6) #0 {
  %8 = alloca %struct.dm_stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.dm_stats_aux*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.dm_stat* %0, %struct.dm_stat** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.dm_stats_aux* %6, %struct.dm_stats_aux** %14, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %22 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %7
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %28 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %7
  br label %129

32:                                               ; preds = %25
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %35 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  store i64 0, i64* %15, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %44 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  store i64 %46, i64* %17, align 8
  br label %56

47:                                               ; preds = %32
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %50 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = sub nsw i64 %53, %54
  store i64 %55, i64* %17, align 8
  br label %56

56:                                               ; preds = %47, %41
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %59 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %68 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load i64, i64* %17, align 8
  %72 = sub nsw i64 %71, %70
  store i64 %72, i64* %17, align 8
  br label %73

73:                                               ; preds = %65, %56
  %74 = load i64, i64* %15, align 8
  %75 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %76 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @dm_sector_div64(i64 %74, i64 %77)
  store i64 %78, i64* %16, align 8
  %79 = load i64, i64* %15, align 8
  store i64 %79, i64* %19, align 8
  br label %80

80:                                               ; preds = %123, %73
  %81 = load i64, i64* %19, align 8
  %82 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %83 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp uge i64 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @WARN_ON_ONCE(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %91 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @DMCRIT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %129

94:                                               ; preds = %80
  %95 = load i64, i64* %17, align 8
  store i64 %95, i64* %18, align 8
  %96 = load i64, i64* %18, align 8
  %97 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %98 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %16, align 8
  %101 = sub nsw i64 %99, %100
  %102 = icmp sgt i64 %96, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %105 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %16, align 8
  %108 = sub nsw i64 %106, %107
  store i64 %108, i64* %18, align 8
  br label %109

109:                                              ; preds = %103, %94
  %110 = load %struct.dm_stat*, %struct.dm_stat** %8, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i64, i64* %18, align 8
  %114 = load %struct.dm_stats_aux*, %struct.dm_stats_aux** %14, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @dm_stat_for_entry(%struct.dm_stat* %110, i64 %111, i32 %112, i64 %113, %struct.dm_stats_aux* %114, i32 %115, i64 %116)
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* %17, align 8
  %120 = sub nsw i64 %119, %118
  store i64 %120, i64* %17, align 8
  %121 = load i64, i64* %19, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %19, align 8
  store i64 0, i64* %16, align 8
  br label %123

123:                                              ; preds = %109
  %124 = load i64, i64* %17, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %80, label %129

129:                                              ; preds = %31, %89, %123
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dm_sector_div64(i64, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @DMCRIT(i8*, i32) #1

declare dso_local i32 @dm_stat_for_entry(%struct.dm_stat*, i64, i32, i64, %struct.dm_stats_aux*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
