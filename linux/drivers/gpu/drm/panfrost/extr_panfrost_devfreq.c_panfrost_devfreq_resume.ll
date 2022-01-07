; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_devfreq.c_panfrost_devfreq_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_devfreq.c_panfrost_devfreq_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NUM_JOB_SLOTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @panfrost_devfreq_resume(%struct.panfrost_device* %0) #0 {
  %2 = alloca %struct.panfrost_device*, align 8
  %3 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %2, align 8
  %4 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %5 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %12 = call i32 @panfrost_devfreq_reset(%struct.panfrost_device* %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %26, %10
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NUM_JOB_SLOTS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %19 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %13

29:                                               ; preds = %13
  %30 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %31 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @devfreq_resume_device(i32 %33)
  br label %35

35:                                               ; preds = %29, %9
  ret void
}

declare dso_local i32 @panfrost_devfreq_reset(%struct.panfrost_device*) #1

declare dso_local i32 @devfreq_resume_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
