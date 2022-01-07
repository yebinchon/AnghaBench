; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_selftest_guc.c_ring_doorbell_nop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_selftest_guc.c_ring_doorbell_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_client = type { i32, i32, i32 }
%struct.guc_process_desc = type { i64, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"doorbell %u ring failed!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WQ_STATUS_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"doorbell %u ring put WQ in bad state (%u)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc_client*)* @ring_doorbell_nop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_doorbell_nop(%struct.intel_guc_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc_client*, align 8
  %4 = alloca %struct.guc_process_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_guc_client* %0, %struct.intel_guc_client** %3, align 8
  %6 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %7 = call %struct.guc_process_desc* @__get_process_desc(%struct.intel_guc_client* %6)
  store %struct.guc_process_desc* %7, %struct.guc_process_desc** %4, align 8
  %8 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %9 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %11 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %10, i32 0, i32 2
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %14 = call i32 @guc_wq_item_append(%struct.intel_guc_client* %13, i32 0, i32 0, i32 0, i32 0)
  %15 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %16 = call i32 @guc_ring_doorbell(%struct.intel_guc_client* %15)
  %17 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %18 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %17, i32 0, i32 2
  %19 = call i32 @spin_unlock_irq(i32* %18)
  %20 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %21 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.guc_process_desc*, %struct.guc_process_desc** %4, align 8
  %23 = getelementptr inbounds %struct.guc_process_desc, %struct.guc_process_desc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @READ_ONCE(i32 %24)
  %26 = load %struct.guc_process_desc*, %struct.guc_process_desc** %4, align 8
  %27 = getelementptr inbounds %struct.guc_process_desc, %struct.guc_process_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @READ_ONCE(i32 %28)
  %30 = icmp eq i64 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @wait_for(i32 %31, i32 10)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %37 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %59

42:                                               ; preds = %1
  %43 = load %struct.guc_process_desc*, %struct.guc_process_desc** %4, align 8
  %44 = getelementptr inbounds %struct.guc_process_desc, %struct.guc_process_desc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WQ_STATUS_ACTIVE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %50 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.guc_process_desc*, %struct.guc_process_desc** %4, align 8
  %53 = getelementptr inbounds %struct.guc_process_desc, %struct.guc_process_desc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %51, i64 %54)
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %48, %35
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.guc_process_desc* @__get_process_desc(%struct.intel_guc_client*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @guc_wq_item_append(%struct.intel_guc_client*, i32, i32, i32, i32) #1

declare dso_local i32 @guc_ring_doorbell(%struct.intel_guc_client*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
