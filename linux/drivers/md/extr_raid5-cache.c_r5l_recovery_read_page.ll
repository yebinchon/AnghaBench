; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32 }
%struct.r5l_recovery_ctx = type { i64, i32, %struct.page** }
%struct.page = type { i32 }

@BLOCK_SECTORS = common dso_local global i32 0, align 4
@BLOCK_SECTOR_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*, %struct.r5l_recovery_ctx*, %struct.page*, i64)* @r5l_recovery_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5l_recovery_read_page(%struct.r5l_log* %0, %struct.r5l_recovery_ctx* %1, %struct.page* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.r5l_log*, align 8
  %7 = alloca %struct.r5l_recovery_ctx*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.r5l_log* %0, %struct.r5l_log** %6, align 8
  store %struct.r5l_recovery_ctx* %1, %struct.r5l_recovery_ctx** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BLOCK_SECTORS, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %20, %26
  %28 = icmp sge i64 %17, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %16, %4
  %30 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %31 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @r5l_recovery_fetch_ra_pool(%struct.r5l_log* %30, %struct.r5l_recovery_ctx* %31, i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %79

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %58, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BLOCK_SECTORS, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %49, %55
  %57 = icmp sge i64 %46, %56
  br label %58

58:                                               ; preds = %45, %39
  %59 = phi i1 [ true, %39 ], [ %57, %45 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.page*, %struct.page** %8, align 8
  %63 = call i32 @page_address(%struct.page* %62)
  %64 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %7, align 8
  %65 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %64, i32 0, i32 2
  %66 = load %struct.page**, %struct.page*** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = load i64, i64* @BLOCK_SECTOR_SHIFT, align 8
  %73 = ashr i64 %71, %72
  %74 = getelementptr inbounds %struct.page*, %struct.page** %66, i64 %73
  %75 = load %struct.page*, %struct.page** %74, align 8
  %76 = call i32 @page_address(%struct.page* %75)
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = call i32 @memcpy(i32 %63, i32 %76, i32 %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %58, %36
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @r5l_recovery_fetch_ra_pool(%struct.r5l_log*, %struct.r5l_recovery_ctx*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
