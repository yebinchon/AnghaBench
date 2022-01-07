; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_hash_for_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_hash_for_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32, i32, i64, i32 }
%struct.dm_verity_io = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verity_hash_for_block(%struct.dm_verity* %0, %struct.dm_verity_io* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.dm_verity*, align 8
  %7 = alloca %struct.dm_verity_io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dm_verity* %0, %struct.dm_verity** %6, align 8
  store %struct.dm_verity_io* %1, %struct.dm_verity_io** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %14 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %20 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @verity_verify_level(%struct.dm_verity* %19, %struct.dm_verity_io* %20, i32 %21, i32 0, i32 1, i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sle i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %63

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %5
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %34 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %37 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32* %32, i32 %35, i32 %38)
  %40 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %41 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %59, %31
  %45 = load i32, i32* %12, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %49 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @verity_verify_level(%struct.dm_verity* %48, %struct.dm_verity_io* %49, i32 %50, i32 %51, i32 0, i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %63

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %12, align 4
  br label %44

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %57, %29
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %63
  %67 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %68 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %73 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %77 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcmp(i64 %74, i32* %75, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  br label %86

84:                                               ; preds = %66, %63
  %85 = load i32*, i32** %10, align 8
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %71
  %87 = load i32, i32* %11, align 4
  ret i32 %87
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @verity_verify_level(%struct.dm_verity*, %struct.dm_verity_io*, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcmp(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
