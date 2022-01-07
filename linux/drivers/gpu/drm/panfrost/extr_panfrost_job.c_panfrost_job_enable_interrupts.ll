; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32 }

@NUM_JOB_SLOTS = common dso_local global i32 0, align 4
@JOB_INT_CLEAR = common dso_local global i32 0, align 4
@JOB_INT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @panfrost_job_enable_interrupts(%struct.panfrost_device* %0) #0 {
  %2 = alloca %struct.panfrost_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %14, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NUM_JOB_SLOTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @MK_JS_MASK(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %5

17:                                               ; preds = %5
  %18 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %19 = load i32, i32* @JOB_INT_CLEAR, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @job_write(%struct.panfrost_device* %18, i32 %19, i32 %20)
  %22 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %23 = load i32, i32* @JOB_INT_MASK, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @job_write(%struct.panfrost_device* %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @MK_JS_MASK(i32) #1

declare dso_local i32 @job_write(%struct.panfrost_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
