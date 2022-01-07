; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_context_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.drm_file = type { %struct.msm_file_private* }
%struct.msm_file_private = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*)* @context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_init(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca %struct.msm_file_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  store %struct.msm_drm_private* %10, %struct.msm_drm_private** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.msm_file_private* @kzalloc(i32 8, i32 %11)
  store %struct.msm_file_private* %12, %struct.msm_file_private** %7, align 8
  %13 = load %struct.msm_file_private*, %struct.msm_file_private** %7, align 8
  %14 = icmp ne %struct.msm_file_private* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load %struct.msm_file_private*, %struct.msm_file_private** %7, align 8
  %21 = call i32 @msm_submitqueue_init(%struct.drm_device* %19, %struct.msm_file_private* %20)
  %22 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %23 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %28 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  br label %33

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i32* [ %31, %26 ], [ null, %32 ]
  %35 = load %struct.msm_file_private*, %struct.msm_file_private** %7, align 8
  %36 = getelementptr inbounds %struct.msm_file_private, %struct.msm_file_private* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.msm_file_private*, %struct.msm_file_private** %7, align 8
  %38 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %39 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %38, i32 0, i32 0
  store %struct.msm_file_private* %37, %struct.msm_file_private** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.msm_file_private* @kzalloc(i32, i32) #1

declare dso_local i32 @msm_submitqueue_init(%struct.drm_device*, %struct.msm_file_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
