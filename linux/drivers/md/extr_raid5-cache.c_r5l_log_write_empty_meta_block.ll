; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_log_write_empty_meta_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_log_write_empty_meta_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32, i32 }
%struct.page = type { i32 }
%struct.r5l_meta_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*, i32, i32)* @r5l_log_write_empty_meta_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5l_log_write_empty_meta_block(%struct.r5l_log* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r5l_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.r5l_meta_block*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.page* @alloc_page(i32 %10)
  store %struct.page* %11, %struct.page** %8, align 8
  %12 = load %struct.page*, %struct.page** %8, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.r5l_log*, %struct.r5l_log** %5, align 8
  %19 = load %struct.page*, %struct.page** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @r5l_recovery_create_empty_meta_block(%struct.r5l_log* %18, %struct.page* %19, i32 %20, i32 %21)
  %23 = load %struct.page*, %struct.page** %8, align 8
  %24 = call %struct.r5l_meta_block* @page_address(%struct.page* %23)
  store %struct.r5l_meta_block* %24, %struct.r5l_meta_block** %9, align 8
  %25 = load %struct.r5l_log*, %struct.r5l_log** %5, align 8
  %26 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %9, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = call i32 @crc32c_le(i32 %27, %struct.r5l_meta_block* %28, i32 %29)
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %9, align 8
  %33 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.r5l_log*, %struct.r5l_log** %5, align 8
  %35 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load %struct.page*, %struct.page** %8, align 8
  %40 = load i32, i32* @REQ_OP_WRITE, align 4
  %41 = load i32, i32* @REQ_SYNC, align 4
  %42 = load i32, i32* @REQ_FUA, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @sync_page_io(i32 %36, i32 %37, i32 %38, %struct.page* %39, i32 %40, i32 %43, i32 0)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %17
  %47 = load %struct.page*, %struct.page** %8, align 8
  %48 = call i32 @__free_page(%struct.page* %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %54

51:                                               ; preds = %17
  %52 = load %struct.page*, %struct.page** %8, align 8
  %53 = call i32 @__free_page(%struct.page* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %46, %14
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @r5l_recovery_create_empty_meta_block(%struct.r5l_log*, %struct.page*, i32, i32) #1

declare dso_local %struct.r5l_meta_block* @page_address(%struct.page*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @crc32c_le(i32, %struct.r5l_meta_block*, i32) #1

declare dso_local i32 @sync_page_io(i32, i32, i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
