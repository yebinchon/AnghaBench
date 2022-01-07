; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_postclose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_postclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_file_private* }
%struct.msm_file_private = type { i32 }
%struct.drm_file = type { %struct.msm_file_private* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_file*)* @msm_postclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_postclose(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca %struct.msm_file_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  store %struct.msm_drm_private* %9, %struct.msm_drm_private** %5, align 8
  %10 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %11 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %10, i32 0, i32 0
  %12 = load %struct.msm_file_private*, %struct.msm_file_private** %11, align 8
  store %struct.msm_file_private* %12, %struct.msm_file_private** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.msm_file_private*, %struct.msm_file_private** %6, align 8
  %17 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %18 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %17, i32 0, i32 0
  %19 = load %struct.msm_file_private*, %struct.msm_file_private** %18, align 8
  %20 = icmp eq %struct.msm_file_private* %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %23 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %22, i32 0, i32 0
  store %struct.msm_file_private* null, %struct.msm_file_private** %23, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.msm_file_private*, %struct.msm_file_private** %6, align 8
  %29 = call i32 @context_close(%struct.msm_file_private* %28)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @context_close(%struct.msm_file_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
