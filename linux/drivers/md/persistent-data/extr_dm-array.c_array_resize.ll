; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_array_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_array_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.resize = type { i64, i32, i8*, i64, i64, i64, i64, i32, %struct.dm_array_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_array_info*, i32, i64, i64, i8*, i32*)* @array_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_resize(%struct.dm_array_info* %0, i32 %1, i64 %2, i64 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_array_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.resize, align 8
  store %struct.dm_array_info* %0, %struct.dm_array_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %13, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %7, align 4
  br label %78

22:                                               ; preds = %6
  %23 = load %struct.dm_array_info*, %struct.dm_array_info** %8, align 8
  %24 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 8
  store %struct.dm_array_info* %23, %struct.dm_array_info** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load %struct.dm_array_info*, %struct.dm_array_info** %8, align 8
  %28 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dm_tm_get_bm(i32 %30)
  %32 = call i32 @dm_bm_block_size(i32 %31)
  %33 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 7
  store i32 %32, i32* %33, align 8
  %34 = load %struct.dm_array_info*, %struct.dm_array_info** %8, align 8
  %35 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @calc_max_entries(i32 %37, i32 %39)
  %41 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sdiv i64 %42, %44
  %46 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 6
  store i64 %45, i64* %46, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = srem i64 %47, %49
  %51 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 5
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sdiv i64 %52, %54
  %56 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 4
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = srem i64 %57, %59
  %61 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 3
  store i64 %60, i64* %61, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 2
  store i8* %62, i8** %63, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp sgt i64 %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 (%struct.resize*)* @grow, i32 (%struct.resize*)* @shrink
  %69 = call i32 %68(%struct.resize* %15)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %22
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %7, align 4
  br label %78

74:                                               ; preds = %22
  %75 = getelementptr inbounds %struct.resize, %struct.resize* %15, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %72, %19
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @dm_bm_block_size(i32) #1

declare dso_local i32 @dm_tm_get_bm(i32) #1

declare dso_local i64 @calc_max_entries(i32, i32) #1

declare dso_local i32 @grow(%struct.resize*) #1

declare dso_local i32 @shrink(%struct.resize*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
