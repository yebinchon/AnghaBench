; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_bio_add_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_bio_add_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.bio = type { i64 }
%struct.page = type { i32 }

@PBLK_EXPOSED_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not add page to bio\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_bio_add_pages(%struct.pblk* %0, %struct.bio* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pblk*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.request_queue*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pblk*, %struct.pblk** %6, align 8
  %15 = getelementptr inbounds %struct.pblk, %struct.pblk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.request_queue*, %struct.request_queue** %17, align 8
  store %struct.request_queue* %18, %struct.request_queue** %10, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %44, %4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.pblk*, %struct.pblk** %6, align 8
  %25 = getelementptr inbounds %struct.pblk, %struct.pblk* %24, i32 0, i32 0
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.page* @mempool_alloc(i32* %25, i32 %26)
  store %struct.page* %27, %struct.page** %11, align 8
  %28 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %29 = load %struct.bio*, %struct.bio** %7, align 8
  %30 = load %struct.page*, %struct.page** %11, align 8
  %31 = load i32, i32* @PBLK_EXPOSED_PAGE_SIZE, align 4
  %32 = call i32 @bio_add_pc_page(%struct.request_queue* %28, %struct.bio* %29, %struct.page* %30, i32 %31, i32 0)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @PBLK_EXPOSED_PAGE_SIZE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = load %struct.pblk*, %struct.pblk** %6, align 8
  %38 = call i32 @pblk_err(%struct.pblk* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.page*, %struct.page** %11, align 8
  %40 = load %struct.pblk*, %struct.pblk** %6, align 8
  %41 = getelementptr inbounds %struct.pblk, %struct.pblk* %40, i32 0, i32 0
  %42 = call i32 @mempool_free(%struct.page* %39, i32* %41)
  br label %48

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %19

47:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %59

48:                                               ; preds = %36
  %49 = load %struct.pblk*, %struct.pblk** %6, align 8
  %50 = load %struct.bio*, %struct.bio** %7, align 8
  %51 = load %struct.bio*, %struct.bio** %7, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %53, %55
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @pblk_bio_free_pages(%struct.pblk* %49, %struct.bio* %50, i64 %56, i32 %57)
  store i32 -1, i32* %5, align 4
  br label %59

59:                                               ; preds = %48, %47
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.page* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @bio_add_pc_page(%struct.request_queue*, %struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*) #1

declare dso_local i32 @mempool_free(%struct.page*, i32*) #1

declare dso_local i32 @pblk_bio_free_pages(%struct.pblk*, %struct.bio*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
