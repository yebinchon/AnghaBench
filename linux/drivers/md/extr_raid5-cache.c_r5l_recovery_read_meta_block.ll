; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_read_meta_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_read_meta_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32 }
%struct.r5l_recovery_ctx = type { i64, i64, i32, %struct.page* }
%struct.page = type { i32 }
%struct.r5l_meta_block = type { i64, i64, i32, i32, i64, i64 }

@R5LOG_MAGIC = common dso_local global i64 0, align 8
@R5LOG_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@BLOCK_SECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*, %struct.r5l_recovery_ctx*)* @r5l_recovery_read_meta_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5l_recovery_read_meta_block(%struct.r5l_log* %0, %struct.r5l_recovery_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5l_log*, align 8
  %5 = alloca %struct.r5l_recovery_ctx*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.r5l_meta_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.r5l_log* %0, %struct.r5l_log** %4, align 8
  store %struct.r5l_recovery_ctx* %1, %struct.r5l_recovery_ctx** %5, align 8
  %11 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %11, i32 0, i32 3
  %13 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %13, %struct.page** %6, align 8
  %14 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %15 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @r5l_recovery_read_page(%struct.r5l_log* %14, %struct.r5l_recovery_ctx* %15, %struct.page* %16, i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = call %struct.r5l_meta_block* @page_address(%struct.page* %26)
  store %struct.r5l_meta_block* %27, %struct.r5l_meta_block** %7, align 8
  %28 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %7, align 8
  %29 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @le32_to_cpu(i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %7, align 8
  %33 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %7, align 8
  %35 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @le32_to_cpu(i64 %36)
  %38 = load i64, i64* @R5LOG_MAGIC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %64, label %40

40:                                               ; preds = %25
  %41 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %7, align 8
  %42 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le64_to_cpu(i32 %43)
  %45 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %64, label %49

49:                                               ; preds = %40
  %50 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %7, align 8
  %51 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @R5LOG_VERSION, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %49
  %56 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %7, align 8
  %57 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @le64_to_cpu(i32 %58)
  %60 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55, %49, %40, %25
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %94

67:                                               ; preds = %55
  %68 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %69 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %7, align 8
  %72 = load i64, i64* @PAGE_SIZE, align 8
  %73 = call i64 @crc32c_le(i32 %70, %struct.r5l_meta_block* %71, i64 %72)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %94

80:                                               ; preds = %67
  %81 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %7, align 8
  %82 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @le32_to_cpu(i64 %83)
  %85 = load i64, i64* @PAGE_SIZE, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %94

90:                                               ; preds = %80
  %91 = load i32, i32* @BLOCK_SECTORS, align 4
  %92 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %87, %77, %64, %23
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @r5l_recovery_read_page(%struct.r5l_log*, %struct.r5l_recovery_ctx*, %struct.page*, i64) #1

declare dso_local %struct.r5l_meta_block* @page_address(%struct.page*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @crc32c_le(i32, %struct.r5l_meta_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
