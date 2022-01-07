; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___load_mapping_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___load_mapping_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i64 }
%struct.dm_array_cursor = type { i32 }
%struct.dm_bitset_cursor = type { i32 }

@M_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"policy couldn't load cache block %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, i32, i32, %struct.dm_array_cursor*, %struct.dm_array_cursor*, %struct.dm_bitset_cursor*, i32 (i8*, i32, i32, i32, i32, i32)*, i8*)* @__load_mapping_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__load_mapping_v2(%struct.dm_cache_metadata* %0, i32 %1, i32 %2, %struct.dm_array_cursor* %3, %struct.dm_array_cursor* %4, %struct.dm_bitset_cursor* %5, i32 (i8*, i32, i32, i32, i32, i32)* %6, i8* %7) #0 {
  %9 = alloca %struct.dm_cache_metadata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_array_cursor*, align 8
  %13 = alloca %struct.dm_array_cursor*, align 8
  %14 = alloca %struct.dm_bitset_cursor*, align 8
  %15 = alloca i32 (i8*, i32, i32, i32, i32, i32)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.dm_array_cursor* %3, %struct.dm_array_cursor** %12, align 8
  store %struct.dm_array_cursor* %4, %struct.dm_array_cursor** %13, align 8
  store %struct.dm_bitset_cursor* %5, %struct.dm_bitset_cursor** %14, align 8
  store i32 (i8*, i32, i32, i32, i32, i32)* %6, i32 (i8*, i32, i32, i32, i32, i32)** %15, align 8
  store i8* %7, i8** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 1, i32* %24, align 4
  %25 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %12, align 8
  %26 = bitcast i32** %20 to i8**
  %27 = call i32 @dm_array_cursor_get_value(%struct.dm_array_cursor* %25, i8** %26)
  %28 = load i32*, i32** %20, align 8
  %29 = call i32 @memcpy(i32* %18, i32* %28, i32 4)
  %30 = load i32, i32* %18, align 4
  %31 = call i32 @unpack_value(i32 %30, i32* %22, i32* %23)
  %32 = load i32, i32* %23, align 4
  %33 = load i32, i32* @M_VALID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %8
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %13, align 8
  %41 = bitcast i32** %21 to i8**
  %42 = call i32 @dm_array_cursor_get_value(%struct.dm_array_cursor* %40, i8** %41)
  %43 = load i32*, i32** %21, align 8
  %44 = call i32 @memcpy(i32* %19, i32* %43, i32 4)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %9, align 8
  %47 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %14, align 8
  %52 = call i32 @dm_bitset_cursor_get_value(%struct.dm_bitset_cursor* %51)
  store i32 %52, i32* %24, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32 (i8*, i32, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32)** %15, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @to_cblock(i32 %57)
  %59 = load i32, i32* %24, align 4
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = call i32 %54(i8* %55, i32 %56, i32 %58, i32 %59, i32 %61, i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %53
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @to_cblock(i32 %67)
  %69 = call i64 @from_cblock(i32 %68)
  %70 = call i32 @DMERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %66, %53
  br label %72

72:                                               ; preds = %71, %8
  %73 = load i32, i32* %17, align 4
  ret i32 %73
}

declare dso_local i32 @dm_array_cursor_get_value(%struct.dm_array_cursor*, i8**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @unpack_value(i32, i32*, i32*) #1

declare dso_local i32 @dm_bitset_cursor_get_value(%struct.dm_bitset_cursor*) #1

declare dso_local i32 @to_cblock(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DMERR(i8*, i64) #1

declare dso_local i64 @from_cblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
