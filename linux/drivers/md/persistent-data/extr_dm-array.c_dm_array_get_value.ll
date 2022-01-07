; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_dm_array_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_dm_array_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i32 }

@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_array_get_value(%struct.dm_array_info* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_array_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_block*, align 8
  %12 = alloca %struct.array_block*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dm_array_info* %0, %struct.dm_array_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load %struct.dm_array_info*, %struct.dm_array_info** %6, align 8
  %17 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dm_tm_get_bm(i32 %19)
  %21 = call i64 @dm_bm_block_size(i32 %20)
  store i64 %21, i64* %13, align 8
  %22 = load %struct.dm_array_info*, %struct.dm_array_info** %6, align 8
  %23 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @calc_max_entries(i32 %25, i64 %26)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.dm_array_info*, %struct.dm_array_info** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %15, align 4
  %32 = udiv i32 %30, %31
  %33 = call i32 @lookup_ablock(%struct.dm_array_info* %28, i32 %29, i32 %32, %struct.dm_block** %11, %struct.array_block** %12)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %67

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %15, align 4
  %41 = urem i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.array_block*, %struct.array_block** %12, align 8
  %44 = getelementptr inbounds %struct.array_block, %struct.array_block* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = icmp uge i32 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @ENODATA, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %62

51:                                               ; preds = %38
  %52 = load i8*, i8** %9, align 8
  %53 = load %struct.dm_array_info*, %struct.dm_array_info** %6, align 8
  %54 = load %struct.array_block*, %struct.array_block** %12, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @element_at(%struct.dm_array_info* %53, %struct.array_block* %54, i32 %55)
  %57 = load %struct.dm_array_info*, %struct.dm_array_info** %6, align 8
  %58 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i8* %52, i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %51, %48
  %63 = load %struct.dm_array_info*, %struct.dm_array_info** %6, align 8
  %64 = load %struct.dm_block*, %struct.dm_block** %11, align 8
  %65 = call i32 @unlock_ablock(%struct.dm_array_info* %63, %struct.dm_block* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %62, %36
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @dm_bm_block_size(i32) #1

declare dso_local i32 @dm_tm_get_bm(i32) #1

declare dso_local i32 @calc_max_entries(i32, i64) #1

declare dso_local i32 @lookup_ablock(%struct.dm_array_info*, i32, i32, %struct.dm_block**, %struct.array_block**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @element_at(%struct.dm_array_info*, %struct.array_block*, i32) #1

declare dso_local i32 @unlock_ablock(%struct.dm_array_info*, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
