; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_dm_array_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_dm_array_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_array_new(%struct.dm_array_info* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_array_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dm_block*, align 8
  %14 = alloca %struct.array_block*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dm_array_info* %0, %struct.dm_array_info** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %19 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @dm_array_empty(%struct.dm_array_info* %19, i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %93

26:                                               ; preds = %5
  %27 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %28 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dm_tm_get_bm(i32 %30)
  %32 = call i32 @dm_bm_block_size(i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %34 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @calc_max_entries(i32 %36, i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @dm_div_up(i32 %39, i32 %40)
  store i32 %41, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %88, %26
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %42
  %47 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @alloc_ablock(%struct.dm_array_info* %47, i32 %48, i32 %49, %struct.dm_block** %13, %struct.array_block** %14)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %91

54:                                               ; preds = %46
  %55 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %56 = load %struct.array_block*, %struct.array_block** %14, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %18, align 4
  %61 = mul i32 %59, %60
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @min(i32 %62, i32 %63)
  %65 = call i32 @populate_ablock_with_values(%struct.dm_array_info* %55, %struct.array_block* %56, i32 %57, i8* %58, i32 %61, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %70 = load %struct.dm_block*, %struct.dm_block** %13, align 8
  %71 = call i32 @unlock_ablock(%struct.dm_array_info* %69, %struct.dm_block* %70)
  br label %91

72:                                               ; preds = %54
  %73 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.dm_block*, %struct.dm_block** %13, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @insert_ablock(%struct.dm_array_info* %73, i32 %74, %struct.dm_block* %75, i32* %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %79 = load %struct.dm_block*, %struct.dm_block** %13, align 8
  %80 = call i32 @unlock_ablock(%struct.dm_array_info* %78, %struct.dm_block* %79)
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %91

84:                                               ; preds = %72
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sub i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %15, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %42

91:                                               ; preds = %83, %68, %53, %42
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %24
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @dm_array_empty(%struct.dm_array_info*, i32*) #1

declare dso_local i32 @dm_bm_block_size(i32) #1

declare dso_local i32 @dm_tm_get_bm(i32) #1

declare dso_local i32 @calc_max_entries(i32, i32) #1

declare dso_local i32 @dm_div_up(i32, i32) #1

declare dso_local i32 @alloc_ablock(%struct.dm_array_info*, i32, i32, %struct.dm_block**, %struct.array_block**) #1

declare dso_local i32 @populate_ablock_with_values(%struct.dm_array_info*, %struct.array_block*, i32, i8*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @unlock_ablock(%struct.dm_array_info*, %struct.dm_block*) #1

declare dso_local i32 @insert_ablock(%struct.dm_array_info*, i32, %struct.dm_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
