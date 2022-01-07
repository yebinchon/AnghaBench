; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___load_mapping_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___load_mapping_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i64 }
%struct.dm_array_cursor = type { i32 }

@M_VALID = common dso_local global i32 0, align 4
@M_DIRTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"policy couldn't load cache block %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, i32, i32, %struct.dm_array_cursor*, %struct.dm_array_cursor*, i32 (i8*, i32, i32, i32, i32, i32)*, i8*)* @__load_mapping_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__load_mapping_v1(%struct.dm_cache_metadata* %0, i32 %1, i32 %2, %struct.dm_array_cursor* %3, %struct.dm_array_cursor* %4, i32 (i8*, i32, i32, i32, i32, i32)* %5, i8* %6) #0 {
  %8 = alloca %struct.dm_cache_metadata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_array_cursor*, align 8
  %12 = alloca %struct.dm_array_cursor*, align 8
  %13 = alloca i32 (i8*, i32, i32, i32, i32, i32)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.dm_array_cursor* %3, %struct.dm_array_cursor** %11, align 8
  store %struct.dm_array_cursor* %4, %struct.dm_array_cursor** %12, align 8
  store i32 (i8*, i32, i32, i32, i32, i32)* %5, i32 (i8*, i32, i32, i32, i32, i32)** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %22, align 4
  %23 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %11, align 8
  %24 = bitcast i32** %18 to i8**
  %25 = call i32 @dm_array_cursor_get_value(%struct.dm_array_cursor* %23, i8** %24)
  %26 = load i32*, i32** %18, align 8
  %27 = call i32 @memcpy(i32* %16, i32* %26, i32 4)
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @unpack_value(i32 %28, i32* %20, i32* %21)
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* @M_VALID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %7
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.dm_array_cursor*, %struct.dm_array_cursor** %12, align 8
  %39 = bitcast i32** %19 to i8**
  %40 = call i32 @dm_array_cursor_get_value(%struct.dm_array_cursor* %38, i8** %39)
  %41 = load i32*, i32** %19, align 8
  %42 = call i32 @memcpy(i32* %17, i32* %41, i32 4)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %8, align 8
  %45 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* @M_DIRTY, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %22, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32 (i8*, i32, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32)** %13, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @to_cblock(i32 %56)
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i32 %53(i8* %54, i32 %55, i32 %57, i32 %58, i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @to_cblock(i32 %66)
  %68 = call i64 @from_cblock(i32 %67)
  %69 = call i32 @DMERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %65, %52
  br label %71

71:                                               ; preds = %70, %7
  %72 = load i32, i32* %15, align 4
  ret i32 %72
}

declare dso_local i32 @dm_array_cursor_get_value(%struct.dm_array_cursor*, i8**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @unpack_value(i32, i32*, i32*) #1

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
