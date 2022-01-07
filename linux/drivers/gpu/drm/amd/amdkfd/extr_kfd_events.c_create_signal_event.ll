; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_create_signal_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_create_signal_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.kfd_event = type { i64, i32* }

@.str = private unnamed_addr constant [55 x i8] c"Signal event wasn't created because limit was reached\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Signal event wasn't created because out of kernel memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Signal event number %zu created with id %d, address %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, %struct.kfd_event*)* @create_signal_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_signal_event(%struct.file* %0, %struct.kfd_process* %1, %struct.kfd_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca %struct.kfd_event*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store %struct.kfd_event* %2, %struct.kfd_event** %7, align 8
  %9 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %10 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %15 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %18 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 8
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %24 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %30 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %29, i32 0, i32 2
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* @ENOSPC, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %69

34:                                               ; preds = %13, %3
  %35 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %36 = load %struct.kfd_event*, %struct.kfd_event** %7, align 8
  %37 = call i32 @allocate_event_notification_slot(%struct.kfd_process* %35, %struct.kfd_event* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %69

43:                                               ; preds = %34
  %44 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %45 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %49 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.kfd_event*, %struct.kfd_event** %7, align 8
  %54 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load %struct.kfd_event*, %struct.kfd_event** %7, align 8
  %58 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %60 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.kfd_event*, %struct.kfd_event** %7, align 8
  %63 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.kfd_event*, %struct.kfd_event** %7, align 8
  %66 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %61, i64 %64, i32* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %43, %40, %31
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @allocate_event_notification_slot(%struct.kfd_process*, %struct.kfd_event*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
