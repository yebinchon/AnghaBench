; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_array_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_array_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.dm_btree_value_type, %struct.TYPE_2__ }
%struct.dm_btree_value_type = type { i32, i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i32 (i32, i8*, i8*)* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_array_info*, i32, i32, i8*, i32*)* @array_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_set_value(%struct.dm_array_info* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_array_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dm_block*, align 8
  %14 = alloca %struct.array_block*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.dm_btree_value_type*, align 8
  store %struct.dm_array_info* %0, %struct.dm_array_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %21 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %20, i32 0, i32 0
  store %struct.dm_btree_value_type* %21, %struct.dm_btree_value_type** %19, align 8
  %22 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %23 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dm_tm_get_bm(i32 %25)
  %27 = call i64 @dm_bm_block_size(i32 %26)
  store i64 %27, i64* %15, align 8
  %28 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %29 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call i32 @calc_max_entries(i32 %31, i64 %32)
  store i32 %33, i32* %16, align 4
  %34 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %16, align 4
  %37 = udiv i32 %35, %36
  %38 = call i32 @shadow_ablock(%struct.dm_array_info* %34, i32* %8, i32 %37, %struct.dm_block** %13, %struct.array_block** %14)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %119

43:                                               ; preds = %5
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %16, align 4
  %48 = urem i32 %46, %47
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load %struct.array_block*, %struct.array_block** %14, align 8
  %51 = getelementptr inbounds %struct.array_block, %struct.array_block* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = icmp uge i32 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @ENODATA, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %114

58:                                               ; preds = %43
  %59 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %60 = load %struct.array_block*, %struct.array_block** %14, align 8
  %61 = load i32, i32* %17, align 4
  %62 = call i8* @element_at(%struct.dm_array_info* %59, %struct.array_block* %60, i32 %61)
  store i8* %62, i8** %18, align 8
  %63 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %19, align 8
  %64 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %63, i32 0, i32 3
  %65 = load i32 (i32, i8*)*, i32 (i32, i8*)** %64, align 8
  %66 = icmp ne i32 (i32, i8*)* %65, null
  br i1 %66, label %67, label %106

67:                                               ; preds = %58
  %68 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %19, align 8
  %69 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %68, i32 0, i32 4
  %70 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %69, align 8
  %71 = icmp ne i32 (i32, i8*, i8*)* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %19, align 8
  %74 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %73, i32 0, i32 4
  %75 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %74, align 8
  %76 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %19, align 8
  %77 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %18, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 %75(i32 %78, i8* %79, i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %106, label %83

83:                                               ; preds = %72, %67
  %84 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %19, align 8
  %85 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %84, i32 0, i32 3
  %86 = load i32 (i32, i8*)*, i32 (i32, i8*)** %85, align 8
  %87 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %19, align 8
  %88 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %18, align 8
  %91 = call i32 %86(i32 %89, i8* %90)
  %92 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %19, align 8
  %93 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %92, i32 0, i32 2
  %94 = load i32 (i32, i8*)*, i32 (i32, i8*)** %93, align 8
  %95 = icmp ne i32 (i32, i8*)* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %83
  %97 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %19, align 8
  %98 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %97, i32 0, i32 2
  %99 = load i32 (i32, i8*)*, i32 (i32, i8*)** %98, align 8
  %100 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %19, align 8
  %101 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 %99(i32 %102, i8* %103)
  br label %105

105:                                              ; preds = %96, %83
  br label %106

106:                                              ; preds = %105, %72, %58
  %107 = load i8*, i8** %18, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %110 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @memcpy(i8* %107, i8* %108, i32 %112)
  br label %114

114:                                              ; preds = %106, %55
  %115 = load %struct.dm_array_info*, %struct.dm_array_info** %7, align 8
  %116 = load %struct.dm_block*, %struct.dm_block** %13, align 8
  %117 = call i32 @unlock_ablock(%struct.dm_array_info* %115, %struct.dm_block* %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %114, %41
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i64 @dm_bm_block_size(i32) #1

declare dso_local i32 @dm_tm_get_bm(i32) #1

declare dso_local i32 @calc_max_entries(i32, i64) #1

declare dso_local i32 @shadow_ablock(%struct.dm_array_info*, i32*, i32, %struct.dm_block**, %struct.array_block**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @element_at(%struct.dm_array_info*, %struct.array_block*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @unlock_ablock(%struct.dm_array_info*, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
