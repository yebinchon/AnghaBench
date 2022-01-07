; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_allocate_signal_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_allocate_signal_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_signal_page = type { i32, i8* }
%struct.kfd_process = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KFD_SIGNAL_EVENT_LIMIT = common dso_local global i32 0, align 4
@UNSIGNALED_EVENT_SLOT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Allocated new event signal page at %p, for process %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kfd_signal_page* (%struct.kfd_process*)* @allocate_signal_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kfd_signal_page* @allocate_signal_page(%struct.kfd_process* %0) #0 {
  %2 = alloca %struct.kfd_signal_page*, align 8
  %3 = alloca %struct.kfd_process*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kfd_signal_page*, align 8
  store %struct.kfd_process* %0, %struct.kfd_process** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.kfd_signal_page* @kzalloc(i32 16, i32 %6)
  store %struct.kfd_signal_page* %7, %struct.kfd_signal_page** %5, align 8
  %8 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %5, align 8
  %9 = icmp ne %struct.kfd_signal_page* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.kfd_signal_page* null, %struct.kfd_signal_page** %2, align 8
  br label %40

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @KFD_SIGNAL_EVENT_LIMIT, align 4
  %14 = mul nsw i32 %13, 8
  %15 = call i32 @get_order(i32 %14)
  %16 = call i64 @__get_free_pages(i32 %12, i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %37

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* @UNSIGNALED_EVENT_SLOT, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @KFD_SIGNAL_EVENT_LIMIT, align 4
  %26 = mul nsw i32 %25, 8
  %27 = call i32 @memset(i8* %22, i32 %24, i32 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %5, align 8
  %30 = getelementptr inbounds %struct.kfd_signal_page, %struct.kfd_signal_page* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %5, align 8
  %32 = getelementptr inbounds %struct.kfd_signal_page, %struct.kfd_signal_page* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %5, align 8
  %34 = load %struct.kfd_process*, %struct.kfd_process** %3, align 8
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.kfd_signal_page* %33, %struct.kfd_process* %34)
  %36 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %5, align 8
  store %struct.kfd_signal_page* %36, %struct.kfd_signal_page** %2, align 8
  br label %40

37:                                               ; preds = %20
  %38 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %5, align 8
  %39 = call i32 @kfree(%struct.kfd_signal_page* %38)
  store %struct.kfd_signal_page* null, %struct.kfd_signal_page** %2, align 8
  br label %40

40:                                               ; preds = %37, %21, %10
  %41 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %2, align 8
  ret %struct.kfd_signal_page* %41
}

declare dso_local %struct.kfd_signal_page* @kzalloc(i32, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.kfd_signal_page*, %struct.kfd_process*) #1

declare dso_local i32 @kfree(%struct.kfd_signal_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
