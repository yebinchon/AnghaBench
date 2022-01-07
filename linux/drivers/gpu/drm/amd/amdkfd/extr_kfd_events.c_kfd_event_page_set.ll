; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_kfd_event_page_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_kfd_event_page_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process = type { i32, %struct.kfd_signal_page* }
%struct.kfd_signal_page = type { i8* }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UNSIGNALED_EVENT_SLOT = common dso_local global i64 0, align 8
@KFD_SIGNAL_EVENT_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_event_page_set(%struct.kfd_process* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kfd_process*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kfd_signal_page*, align 8
  store %struct.kfd_process* %0, %struct.kfd_process** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %10 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %9, i32 0, i32 1
  %11 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %10, align 8
  %12 = icmp ne %struct.kfd_signal_page* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.kfd_signal_page* @kzalloc(i32 8, i32 %17)
  store %struct.kfd_signal_page* %18, %struct.kfd_signal_page** %8, align 8
  %19 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %8, align 8
  %20 = icmp ne %struct.kfd_signal_page* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %40

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* @UNSIGNALED_EVENT_SLOT, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @KFD_SIGNAL_EVENT_LIMIT, align 4
  %29 = mul nsw i32 %28, 8
  %30 = call i32 @memset(i8* %25, i32 %27, i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %8, align 8
  %33 = getelementptr inbounds %struct.kfd_signal_page, %struct.kfd_signal_page* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %8, align 8
  %35 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %36 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %35, i32 0, i32 1
  store %struct.kfd_signal_page* %34, %struct.kfd_signal_page** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %39 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %24, %21, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.kfd_signal_page* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
