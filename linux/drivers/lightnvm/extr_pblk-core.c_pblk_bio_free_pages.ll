; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_bio_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_bio_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.bio = type { i32, %struct.bio_vec* }
%struct.bio_vec = type { i32, %struct.page* }
%struct.page = type { i32 }

@PBLK_EXPOSED_PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_bio_free_pages(%struct.pblk* %0, %struct.bio* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio_vec*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %57, %4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %14
  %21 = load %struct.bio*, %struct.bio** %6, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 1
  %23 = load %struct.bio_vec*, %struct.bio_vec** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %23, i64 %25
  store %struct.bio_vec* %26, %struct.bio_vec** %9, align 8
  %27 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %28 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %27, i32 0, i32 1
  %29 = load %struct.page*, %struct.page** %28, align 8
  store %struct.page* %29, %struct.page** %10, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %48, %20
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %33 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i32 1
  store %struct.page* %42, %struct.page** %10, align 8
  %43 = ptrtoint %struct.page* %41 to i32
  %44 = load %struct.pblk*, %struct.pblk** %5, align 8
  %45 = getelementptr inbounds %struct.pblk, %struct.pblk* %44, i32 0, i32 0
  %46 = call i32 @mempool_free(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %40, %36
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* @PBLK_EXPOSED_PAGE_SIZE, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %30

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %14

60:                                               ; preds = %14
  ret void
}

declare dso_local i32 @mempool_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
