; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pblk_line = type { i64, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"pblk: page allocation out of bounds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pblk_alloc_page(%struct.pblk* %0, %struct.pblk_line* %1, i32 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %10 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %9, i32 0, i32 2
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %13 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load %struct.pblk*, %struct.pblk** %4, align 8
  %19 = getelementptr inbounds %struct.pblk, %struct.pblk* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %17, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.pblk*, %struct.pblk** %4, align 8
  %26 = getelementptr inbounds %struct.pblk, %struct.pblk* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %30 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %23, %3
  %35 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %36 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pblk*, %struct.pblk** %4, align 8
  %39 = getelementptr inbounds %struct.pblk, %struct.pblk* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %44 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @find_next_zero_bit(i32 %37, i32 %42, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %50 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %65, %34
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %57 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %61 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @test_and_set_bit(i32 %59, i32 %62)
  %64 = call i32 @WARN_ON(i32 %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %69 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %51

72:                                               ; preds = %51
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
