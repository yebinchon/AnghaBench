; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_event_reserve_init_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_event_reserve_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i64, i32 }
%struct.drm_pending_event = type { %struct.drm_file*, i32, %struct.drm_event* }
%struct.drm_event = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_event_reserve_init_locked(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_pending_event* %2, %struct.drm_event* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_pending_event*, align 8
  %9 = alloca %struct.drm_event*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store %struct.drm_pending_event* %2, %struct.drm_pending_event** %8, align 8
  store %struct.drm_event* %3, %struct.drm_event** %9, align 8
  %10 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %11 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.drm_event*, %struct.drm_event** %9, align 8
  %14 = getelementptr inbounds %struct.drm_event, %struct.drm_event* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %39

20:                                               ; preds = %4
  %21 = load %struct.drm_event*, %struct.drm_event** %9, align 8
  %22 = getelementptr inbounds %struct.drm_event, %struct.drm_event* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %25 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.drm_event*, %struct.drm_event** %9, align 8
  %29 = load %struct.drm_pending_event*, %struct.drm_pending_event** %8, align 8
  %30 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %29, i32 0, i32 2
  store %struct.drm_event* %28, %struct.drm_event** %30, align 8
  %31 = load %struct.drm_pending_event*, %struct.drm_pending_event** %8, align 8
  %32 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %31, i32 0, i32 1
  %33 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %34 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %33, i32 0, i32 1
  %35 = call i32 @list_add(i32* %32, i32* %34)
  %36 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %37 = load %struct.drm_pending_event*, %struct.drm_pending_event** %8, align 8
  %38 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %37, i32 0, i32 0
  store %struct.drm_file* %36, %struct.drm_file** %38, align 8
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %20, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
