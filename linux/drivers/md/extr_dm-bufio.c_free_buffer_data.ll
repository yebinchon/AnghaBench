; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_free_buffer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_free_buffer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"dm_bufio_free_buffer_data: bad data mode: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_bufio_client*, i8*, i8)* @free_buffer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffer_data(%struct.dm_bufio_client* %0, i8* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.dm_bufio_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  switch i32 %8, label %29 [
    i32 129, label %9
    i32 130, label %15
    i32 128, label %26
  ]

9:                                                ; preds = %3
  %10 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %11 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @kmem_cache_free(i32 %12, i8* %13)
  br label %33

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %19 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = load i64, i64* @SECTOR_SHIFT, align 8
  %23 = sub nsw i64 %21, %22
  %24 = sub nsw i64 %20, %23
  %25 = call i32 @free_pages(i64 %17, i64 %24)
  br label %33

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @vfree(i8* %27)
  br label %33

29:                                               ; preds = %3
  %30 = load i8, i8* %6, align 1
  %31 = call i32 @DMCRIT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8 zeroext %30)
  %32 = call i32 (...) @BUG()
  br label %33

33:                                               ; preds = %29, %26, %15, %9
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, i8*) #1

declare dso_local i32 @free_pages(i64, i64) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @DMCRIT(i8*, i8 zeroext) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
