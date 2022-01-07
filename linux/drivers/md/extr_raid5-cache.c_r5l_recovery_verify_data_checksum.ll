; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_verify_data_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_verify_data_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32 }
%struct.r5l_recovery_ctx = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*, %struct.r5l_recovery_ctx*, %struct.page*, i32, i32)* @r5l_recovery_verify_data_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5l_recovery_verify_data_checksum(%struct.r5l_log* %0, %struct.r5l_recovery_ctx* %1, %struct.page* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.r5l_log*, align 8
  %7 = alloca %struct.r5l_recovery_ctx*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %6, align 8
  store %struct.r5l_recovery_ctx* %1, %struct.r5l_recovery_ctx** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %14 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %7, align 8
  %15 = load %struct.page*, %struct.page** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @r5l_recovery_read_page(%struct.r5l_log* %13, %struct.r5l_recovery_ctx* %14, %struct.page* %15, i32 %16)
  %18 = load %struct.page*, %struct.page** %8, align 8
  %19 = call i8* @kmap_atomic(%struct.page* %18)
  store i8* %19, i8** %11, align 8
  %20 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %21 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = call i64 @crc32c_le(i32 %22, i8* %23, i32 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @kunmap_atomic(i8* %26)
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  %30 = load i64, i64* %12, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  br label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi i32 [ 0, %32 ], [ %35, %33 ]
  ret i32 %37
}

declare dso_local i32 @r5l_recovery_read_page(%struct.r5l_log*, %struct.r5l_recovery_ctx*, %struct.page*, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i64 @crc32c_le(i32, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
