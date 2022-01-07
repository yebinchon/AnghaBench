; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_util.c_bch_time_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_util.c_bch_time_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_stats = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_time_stats_update(%struct.time_stats* %0, i32 %1) #0 {
  %3 = alloca %struct.time_stats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.time_stats* %0, %struct.time_stats** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %9 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %8, i32 0, i32 3
  %10 = call i32 @spin_lock(i32* %9)
  %11 = call i32 (...) @local_clock()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @time_after64(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %17, %18
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 0, %20 ]
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %25 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @time_after64(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %32 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  br label %36

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi i32 [ %34, %29 ], [ 0, %35 ]
  store i32 %37, i32* %7, align 4
  %38 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %39 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @max(i32 %40, i32 %41)
  %43 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %44 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %46 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %36
  %50 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %51 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ewma_add(i32 %52, i32 %53, i32 8, i32 8)
  %55 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %56 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %61 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ewma_add(i32 %62, i32 %63, i32 8, i32 8)
  br label %70

65:                                               ; preds = %49
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 8
  %68 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %69 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %59
  br label %76

71:                                               ; preds = %36
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 %72, 8
  %74 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %75 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %70
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %81

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %79
  %82 = phi i32 [ %77, %79 ], [ 1, %80 ]
  %83 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %84 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.time_stats*, %struct.time_stats** %3, align 8
  %86 = getelementptr inbounds %struct.time_stats, %struct.time_stats* %85, i32 0, i32 3
  %87 = call i32 @spin_unlock(i32* %86)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @local_clock(...) #1

declare dso_local i64 @time_after64(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ewma_add(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
