; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_lookup_signaled_event_by_partial_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_lookup_signaled_event_by_partial_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_event = type { i32 }
%struct.kfd_process = type { i32, i32 }

@KFD_SIGNAL_EVENT_LIMIT = common dso_local global i32 0, align 4
@UNSIGNALED_EVENT_SLOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kfd_event* (%struct.kfd_process*, i32, i32)* @lookup_signaled_event_by_partial_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kfd_event* @lookup_signaled_event_by_partial_id(%struct.kfd_process* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kfd_event*, align 8
  %5 = alloca %struct.kfd_process*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kfd_event*, align 8
  store %struct.kfd_process* %0, %struct.kfd_process** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %10 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @KFD_SIGNAL_EVENT_LIMIT, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  store %struct.kfd_event* null, %struct.kfd_event** %4, align 8
  br label %78

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 31
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @KFD_SIGNAL_EVENT_LIMIT, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %21, %18
  %27 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %28 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64* @page_slots(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UNSIGNALED_EVENT_SLOT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store %struct.kfd_event* null, %struct.kfd_event** %4, align 8
  br label %78

38:                                               ; preds = %26
  %39 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %40 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.kfd_event* @idr_find(i32* %40, i32 %41)
  store %struct.kfd_event* %42, %struct.kfd_event** %4, align 8
  br label %78

43:                                               ; preds = %21
  store %struct.kfd_event* null, %struct.kfd_event** %8, align 8
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @KFD_SIGNAL_EVENT_LIMIT, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.kfd_event*, %struct.kfd_event** %8, align 8
  %50 = icmp ne %struct.kfd_event* %49, null
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ false, %44 ], [ %51, %48 ]
  br i1 %53, label %54, label %76

54:                                               ; preds = %52
  %55 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %56 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64* @page_slots(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UNSIGNALED_EVENT_SLOT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %71

66:                                               ; preds = %54
  %67 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %68 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %67, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = call %struct.kfd_event* @idr_find(i32* %68, i32 %69)
  store %struct.kfd_event* %70, %struct.kfd_event** %8, align 8
  br label %71

71:                                               ; preds = %66, %65
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %44

76:                                               ; preds = %52
  %77 = load %struct.kfd_event*, %struct.kfd_event** %8, align 8
  store %struct.kfd_event* %77, %struct.kfd_event** %4, align 8
  br label %78

78:                                               ; preds = %76, %38, %37, %17
  %79 = load %struct.kfd_event*, %struct.kfd_event** %4, align 8
  ret %struct.kfd_event* %79
}

declare dso_local i64* @page_slots(i32) #1

declare dso_local %struct.kfd_event* @idr_find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
