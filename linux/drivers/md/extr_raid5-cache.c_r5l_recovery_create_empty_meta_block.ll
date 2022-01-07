; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_create_empty_meta_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_create_empty_meta_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32 }
%struct.page = type { i32 }
%struct.r5l_meta_block = type { i8*, i8*, i8*, i32, i8* }

@R5LOG_MAGIC = common dso_local global i32 0, align 4
@R5LOG_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_log*, %struct.page*, i32, i32)* @r5l_recovery_create_empty_meta_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5l_recovery_create_empty_meta_block(%struct.r5l_log* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.r5l_log*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.r5l_meta_block*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.page*, %struct.page** %6, align 8
  %11 = call %struct.r5l_meta_block* @page_address(%struct.page* %10)
  store %struct.r5l_meta_block* %11, %struct.r5l_meta_block** %9, align 8
  %12 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %9, align 8
  %13 = call i32 @clear_page(%struct.r5l_meta_block* %12)
  %14 = load i32, i32* @R5LOG_MAGIC, align 4
  %15 = call i8* @cpu_to_le32(i32 %14)
  %16 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %9, align 8
  %17 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @R5LOG_VERSION, align 4
  %19 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %9, align 8
  %20 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = call i8* @cpu_to_le32(i32 40)
  %22 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %9, align 8
  %23 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @cpu_to_le64(i32 %24)
  %26 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %9, align 8
  %27 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @cpu_to_le64(i32 %28)
  %30 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %9, align 8
  %31 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  ret void
}

declare dso_local %struct.r5l_meta_block* @page_address(%struct.page*) #1

declare dso_local i32 @clear_page(%struct.r5l_meta_block*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
