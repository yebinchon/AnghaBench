; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_append_payload_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_append_payload_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { %struct.r5l_io_unit* }
%struct.r5l_io_unit = type { i32, i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_log*, %struct.page*)* @r5l_append_payload_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5l_append_payload_page(%struct.r5l_log* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.r5l_log*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.r5l_io_unit*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %7 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %6, i32 0, i32 0
  %8 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %7, align 8
  store %struct.r5l_io_unit* %8, %struct.r5l_io_unit** %5, align 8
  %9 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %5, align 8
  %10 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %5, align 8
  %15 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %5, align 8
  %19 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %5, align 8
  %22 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %24 = call i32 @r5l_bio_alloc(%struct.r5l_log* %23)
  %25 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %5, align 8
  %26 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %5, align 8
  %28 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %5, align 8
  %31 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bio_chain(i32 %29, i32 %32)
  %34 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %5, align 8
  %35 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %13, %2
  %37 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %5, align 8
  %38 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = call i32 @bio_add_page(i32 %39, %struct.page* %40, i32 %41, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = call i32 (...) @BUG()
  br label %46

46:                                               ; preds = %44, %36
  %47 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %48 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %5, align 8
  %49 = call i32 @r5_reserve_log_entry(%struct.r5l_log* %47, %struct.r5l_io_unit* %48)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @r5l_bio_alloc(%struct.r5l_log*) #1

declare dso_local i32 @bio_chain(i32, i32) #1

declare dso_local i32 @bio_add_page(i32, %struct.page*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @r5_reserve_log_entry(%struct.r5l_log*, %struct.r5l_io_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
