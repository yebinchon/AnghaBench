; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_handle_admin_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_handle_admin_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_admin_queue = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.efa_admin_acq_entry* }
%struct.efa_admin_acq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EFA_ADMIN_ACQ_COMMON_DESC_PHASE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efa_com_admin_queue*)* @efa_com_handle_admin_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efa_com_handle_admin_completion(%struct.efa_com_admin_queue* %0) #0 {
  %2 = alloca %struct.efa_com_admin_queue*, align 8
  %3 = alloca %struct.efa_admin_acq_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.efa_com_admin_queue* %0, %struct.efa_com_admin_queue** %2, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %2, align 8
  %9 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %2, align 8
  %14 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %2, align 8
  %20 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %2, align 8
  %24 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load %struct.efa_admin_acq_entry*, %struct.efa_admin_acq_entry** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.efa_admin_acq_entry, %struct.efa_admin_acq_entry* %26, i64 %27
  store %struct.efa_admin_acq_entry* %28, %struct.efa_admin_acq_entry** %3, align 8
  br label %29

29:                                               ; preds = %59, %1
  %30 = load %struct.efa_admin_acq_entry*, %struct.efa_admin_acq_entry** %3, align 8
  %31 = getelementptr inbounds %struct.efa_admin_acq_entry, %struct.efa_admin_acq_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @READ_ONCE(i32 %33)
  %35 = load i32, i32* @EFA_ADMIN_ACQ_COMMON_DESC_PHASE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %29
  %40 = call i32 (...) @dma_rmb()
  %41 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %2, align 8
  %42 = load %struct.efa_admin_acq_entry*, %struct.efa_admin_acq_entry** %3, align 8
  %43 = call i32 @efa_com_handle_single_admin_completion(%struct.efa_com_admin_queue* %41, %struct.efa_admin_acq_entry* %42)
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %2, align 8
  %50 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %39
  %60 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %2, align 8
  %61 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load %struct.efa_admin_acq_entry*, %struct.efa_admin_acq_entry** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.efa_admin_acq_entry, %struct.efa_admin_acq_entry* %63, i64 %64
  store %struct.efa_admin_acq_entry* %65, %struct.efa_admin_acq_entry** %3, align 8
  br label %29

66:                                               ; preds = %29
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %2, align 8
  %69 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, %67
  store i64 %72, i64* %70, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %2, align 8
  %75 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %2, align 8
  %79 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, %77
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %2, align 8
  %87 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = call i32 @atomic64_add(i64 %85, i32* %88)
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @efa_com_handle_single_admin_completion(%struct.efa_com_admin_queue*, %struct.efa_admin_acq_entry*) #1

declare dso_local i32 @atomic64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
