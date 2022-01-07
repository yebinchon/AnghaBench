; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_cursor_skip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_dm_bitset_cursor_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bitset_cursor = type { i32, i64, i64, i32, i32 }

@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bitset_cursor_skip(%struct.dm_bitset_cursor* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_bitset_cursor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dm_bitset_cursor* %0, %struct.dm_bitset_cursor** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %4, align 8
  %11 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 64, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %9, align 8
  %15 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %4, align 8
  %16 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODATA, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %86

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %4, align 8
  %30 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %4, align 8
  %37 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %86

40:                                               ; preds = %23
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %4, align 8
  %43 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %5, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %5, align 8
  %51 = sdiv i64 %50, 64
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %8, align 8
  %53 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %4, align 8
  %54 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %53, i32 0, i32 4
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @dm_array_cursor_skip(i32* %54, i64 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %86

61:                                               ; preds = %49
  %62 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %4, align 8
  %63 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %62, i32 0, i32 4
  %64 = bitcast i32** %7 to i8**
  %65 = call i32 @dm_array_cursor_get_value(i32* %63, i8** %64)
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %4, align 8
  %68 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %4, align 8
  %73 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load i64, i64* %5, align 8
  %77 = and i64 %76, 63
  %78 = trunc i64 %77 to i32
  %79 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %4, align 8
  %80 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le64_to_cpu(i32 %82)
  %84 = load %struct.dm_bitset_cursor*, %struct.dm_bitset_cursor** %4, align 8
  %85 = getelementptr inbounds %struct.dm_bitset_cursor, %struct.dm_bitset_cursor* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %61, %59, %27, %20
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @dm_array_cursor_skip(i32*, i64) #1

declare dso_local i32 @dm_array_cursor_get_value(i32*, i8**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
