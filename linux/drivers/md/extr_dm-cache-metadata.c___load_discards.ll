; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___load_discards.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___load_discards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i32, i32, i32, i64 }
%struct.dm_bitset_cursor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, i32 (i8*, i32, i32, i32)*, i8*)* @__load_discards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__load_discards(%struct.dm_cache_metadata* %0, i32 (i8*, i32, i32, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_cache_metadata*, align 8
  %6 = alloca i32 (i8*, i32, i32, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_bitset_cursor, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %5, align 8
  store i32 (i8*, i32, i32, i32)* %1, i32 (i8*, i32, i32, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %12 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @from_dblock(i32 %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %112

17:                                               ; preds = %3
  %18 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %19 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %84

22:                                               ; preds = %17
  %23 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %24 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %23, i32 0, i32 3
  %25 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %26 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %29 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %28, i32 0, i32 2
  %30 = call i32 @dm_bitset_flush(i32* %24, i32 %27, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %112

35:                                               ; preds = %22
  %36 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %37 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %36, i32 0, i32 3
  %38 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %39 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %42 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @from_dblock(i32 %43)
  %45 = call i32 @dm_bitset_cursor_begin(i32* %37, i32 %40, i32 %44, %struct.dm_bitset_cursor* %10)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %112

50:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %55 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @to_dblock(i32 %57)
  %59 = call i32 @dm_bitset_cursor_get_value(%struct.dm_bitset_cursor* %10)
  %60 = call i32 %52(i8* %53, i32 %56, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %82

64:                                               ; preds = %51
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %67 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @from_dblock(i32 %68)
  %70 = sub nsw i32 %69, 1
  %71 = icmp sge i32 %65, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %82

73:                                               ; preds = %64
  %74 = call i32 @dm_bitset_cursor_next(%struct.dm_bitset_cursor* %10)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %82

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %51

82:                                               ; preds = %77, %72, %63
  %83 = call i32 @dm_bitset_cursor_end(%struct.dm_bitset_cursor* %10)
  br label %110

84:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %106, %84
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %88 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @from_dblock(i32 %89)
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %85
  %93 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %6, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %96 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @to_dblock(i32 %98)
  %100 = call i32 %93(i8* %94, i32 %97, i32 %99, i32 0)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %112

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %85

109:                                              ; preds = %85
  br label %110

110:                                              ; preds = %109, %82
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %103, %48, %33, %16
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @from_dblock(i32) #1

declare dso_local i32 @dm_bitset_flush(i32*, i32, i32*) #1

declare dso_local i32 @dm_bitset_cursor_begin(i32*, i32, i32, %struct.dm_bitset_cursor*) #1

declare dso_local i32 @to_dblock(i32) #1

declare dso_local i32 @dm_bitset_cursor_get_value(%struct.dm_bitset_cursor*) #1

declare dso_local i32 @dm_bitset_cursor_next(%struct.dm_bitset_cursor*) #1

declare dso_local i32 @dm_bitset_cursor_end(%struct.dm_bitset_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
