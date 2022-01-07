; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_allocate_ra_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_allocate_ra_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32 }
%struct.r5l_recovery_ctx = type { i64, i64, i32, %struct.page**, i64 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@R5L_RECOVERY_PAGE_POOL_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*, %struct.r5l_recovery_ctx*)* @r5l_recovery_allocate_ra_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5l_recovery_allocate_ra_pool(%struct.r5l_log* %0, %struct.r5l_recovery_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5l_log*, align 8
  %5 = alloca %struct.r5l_recovery_ctx*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %4, align 8
  store %struct.r5l_recovery_ctx* %1, %struct.r5l_recovery_ctx** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load i32, i32* @BIO_MAX_PAGES, align 4
  %9 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %10 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %9, i32 0, i32 0
  %11 = call i32 @bio_alloc_bioset(i32 %7, i32 %8, i32* %10)
  %12 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %38, %21
  %27 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @R5L_RECOVERY_PAGE_POOL_SIZE, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.page* @alloc_page(i32 %33)
  store %struct.page* %34, %struct.page** %6, align 8
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = icmp ne %struct.page* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %51

38:                                               ; preds = %32
  %39 = load %struct.page*, %struct.page** %6, align 8
  %40 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %40, i32 0, i32 3
  %42 = load %struct.page**, %struct.page*** %41, align 8
  %43 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.page*, %struct.page** %42, i64 %45
  store %struct.page* %39, %struct.page** %46, align 8
  %47 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  br label %26

51:                                               ; preds = %37, %26
  %52 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @bio_put(i32 %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %66

63:                                               ; preds = %51
  %64 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %56, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @bio_alloc_bioset(i32, i32, i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @bio_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
