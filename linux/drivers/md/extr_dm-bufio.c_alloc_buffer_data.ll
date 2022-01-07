; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_alloc_buffer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_alloc_buffer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i64, i64, i32* }

@DATA_MODE_SLAB = common dso_local global i8 0, align 1
@KMALLOC_MAX_SIZE = common dso_local global i64 0, align 8
@__GFP_NORETRY = common dso_local global i32 0, align 4
@DATA_MODE_GET_FREE_PAGES = common dso_local global i8 0, align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i64 0, align 8
@DATA_MODE_VMALLOC = common dso_local global i8 0, align 1
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dm_bufio_client*, i32, i8*)* @alloc_buffer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_buffer_data(%struct.dm_bufio_client* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dm_bufio_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %11 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i8, i8* @DATA_MODE_SLAB, align 1
  %19 = load i8*, i8** %7, align 8
  store i8 %18, i8* %19, align 1
  %20 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %21 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @kmem_cache_alloc(i32* %22, i32 %23)
  store i8* %24, i8** %4, align 8
  br label %74

25:                                               ; preds = %3
  %26 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %27 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KMALLOC_MAX_SIZE, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @__GFP_NORETRY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load i8, i8* @DATA_MODE_GET_FREE_PAGES, align 1
  %38 = load i8*, i8** %7, align 8
  store i8 %37, i8* %38, align 1
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %41 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = load i64, i64* @SECTOR_SHIFT, align 8
  %45 = sub nsw i64 %43, %44
  %46 = sub nsw i64 %42, %45
  %47 = call i64 @__get_free_pages(i32 %39, i64 %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %4, align 8
  br label %74

49:                                               ; preds = %31, %25
  %50 = load i8, i8* @DATA_MODE_VMALLOC, align 1
  %51 = load i8*, i8** %7, align 8
  store i8 %50, i8* %51, align 1
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @__GFP_NORETRY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = call i32 (...) @memalloc_noio_save()
  store i32 %57, i32* %8, align 4
  %58 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %59 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PAGE_KERNEL, align 4
  %63 = call i8* @__vmalloc(i64 %60, i32 %61, i32 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @memalloc_noio_restore(i32 %64)
  %66 = load i8*, i8** %9, align 8
  store i8* %66, i8** %4, align 8
  br label %74

67:                                               ; preds = %49
  %68 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %69 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @PAGE_KERNEL, align 4
  %73 = call i8* @__vmalloc(i64 %70, i32 %71, i32 %72)
  store i8* %73, i8** %4, align 8
  br label %74

74:                                               ; preds = %67, %56, %36, %17
  %75 = load i8*, i8** %4, align 8
  ret i8* %75
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @kmem_cache_alloc(i32*, i32) #1

declare dso_local i64 @__get_free_pages(i32, i64) #1

declare dso_local i32 @memalloc_noio_save(...) #1

declare dso_local i8* @__vmalloc(i64, i32, i32) #1

declare dso_local i32 @memalloc_noio_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
