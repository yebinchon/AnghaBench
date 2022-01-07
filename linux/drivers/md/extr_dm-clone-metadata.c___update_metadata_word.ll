; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___update_metadata_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___update_metadata_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32, i32, i32 }

@BITS_PER_LONG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"dm_bitset_set_bit failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_clone_metadata*, i64)* @__update_metadata_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__update_metadata_word(%struct.dm_clone_metadata* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_clone_metadata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @BITS_PER_LONG, align 8
  %11 = mul i64 %9, %10
  store i64 %11, i64* %7, align 8
  %12 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %13 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %15, 1
  %17 = load i64, i64* @BITS_PER_LONG, align 8
  %18 = mul i64 %16, %17
  %19 = call i64 @min(i32 %14, i64 %18)
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %47, %2
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %27 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @test_bit(i64 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %33 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %32, i32 0, i32 1
  %34 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %35 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  %39 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %38, i32 0, i32 0
  %40 = call i32 @dm_bitset_set_bit(i32* %33, i32 %36, i64 %37, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = call i32 @DMERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %20

50:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %43
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @min(i32, i64) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @dm_bitset_set_bit(i32*, i32, i64, i32*) #1

declare dso_local i32 @DMERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
