; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_shrink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resize = type { i64, i64, i32, i32, i32, i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resize*)* @shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink(%struct.resize* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resize*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_block*, align 8
  %8 = alloca %struct.array_block*, align 8
  store %struct.resize* %0, %struct.resize** %3, align 8
  %9 = load %struct.resize*, %struct.resize** %3, align 8
  %10 = getelementptr inbounds %struct.resize, %struct.resize* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.resize*, %struct.resize** %3, align 8
  %13 = getelementptr inbounds %struct.resize, %struct.resize* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %1
  %17 = load %struct.resize*, %struct.resize** %3, align 8
  %18 = getelementptr inbounds %struct.resize, %struct.resize* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.resize*, %struct.resize** %3, align 8
  %21 = getelementptr inbounds %struct.resize, %struct.resize* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @total_nr_blocks_needed(i64 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.resize*, %struct.resize** %3, align 8
  %25 = getelementptr inbounds %struct.resize, %struct.resize* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.resize*, %struct.resize** %3, align 8
  %28 = getelementptr inbounds %struct.resize, %struct.resize* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @total_nr_blocks_needed(i64 %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.resize*, %struct.resize** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @drop_blocks(%struct.resize* %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %16
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %74

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.resize*, %struct.resize** %3, align 8
  %42 = getelementptr inbounds %struct.resize, %struct.resize* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  %46 = load %struct.resize*, %struct.resize** %3, align 8
  %47 = getelementptr inbounds %struct.resize, %struct.resize* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.resize*, %struct.resize** %3, align 8
  %50 = getelementptr inbounds %struct.resize, %struct.resize* %49, i32 0, i32 4
  %51 = load %struct.resize*, %struct.resize** %3, align 8
  %52 = getelementptr inbounds %struct.resize, %struct.resize* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @shadow_ablock(i32 %48, i32* %50, i64 %53, %struct.dm_block** %7, %struct.array_block** %8)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %74

59:                                               ; preds = %45
  %60 = load %struct.resize*, %struct.resize** %3, align 8
  %61 = getelementptr inbounds %struct.resize, %struct.resize* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.array_block*, %struct.array_block** %8, align 8
  %64 = load %struct.resize*, %struct.resize** %3, align 8
  %65 = getelementptr inbounds %struct.resize, %struct.resize* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @trim_ablock(i32 %62, %struct.array_block* %63, i32 %66)
  %68 = load %struct.resize*, %struct.resize** %3, align 8
  %69 = getelementptr inbounds %struct.resize, %struct.resize* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dm_block*, %struct.dm_block** %7, align 8
  %72 = call i32 @unlock_ablock(i32 %70, %struct.dm_block* %71)
  br label %73

73:                                               ; preds = %59, %40
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %57, %37
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @total_nr_blocks_needed(i64, i32) #1

declare dso_local i32 @drop_blocks(%struct.resize*, i32, i32) #1

declare dso_local i32 @shadow_ablock(i32, i32*, i64, %struct.dm_block**, %struct.array_block**) #1

declare dso_local i32 @trim_ablock(i32, %struct.array_block*, i32) #1

declare dso_local i32 @unlock_ablock(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
