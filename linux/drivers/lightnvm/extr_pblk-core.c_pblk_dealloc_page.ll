; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_dealloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_dealloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pblk_line = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_dealloc_page(%struct.pblk* %0, %struct.pblk_line* %1, i32 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %10 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %13 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pblk*, %struct.pblk** %4, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %20 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @find_next_zero_bit(i32 %14, i32 %18, i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %23, %25
  %27 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %28 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %35 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %38 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @test_and_clear_bit(i64 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %49 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  br label %29

52:                                               ; preds = %29
  %53 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %54 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @find_next_zero_bit(i32, i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_and_clear_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
