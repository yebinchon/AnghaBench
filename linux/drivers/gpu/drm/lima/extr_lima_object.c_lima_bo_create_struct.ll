; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_object.c_lima_bo_create_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_object.c_lima_bo_create_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_bo = type { i32, i32, i32 }
%struct.lima_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lima_bo* (%struct.lima_device*, i32, i32)* @lima_bo_create_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lima_bo* @lima_bo_create_struct(%struct.lima_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lima_bo*, align 8
  %5 = alloca %struct.lima_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lima_bo*, align 8
  %9 = alloca i32, align 4
  store %struct.lima_device* %0, %struct.lima_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @PAGE_ALIGN(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.lima_bo* @kzalloc(i32 12, i32 %12)
  store %struct.lima_bo* %13, %struct.lima_bo** %8, align 8
  %14 = load %struct.lima_bo*, %struct.lima_bo** %8, align 8
  %15 = icmp ne %struct.lima_bo* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.lima_bo* @ERR_PTR(i32 %18)
  store %struct.lima_bo* %19, %struct.lima_bo** %4, align 8
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.lima_bo*, %struct.lima_bo** %8, align 8
  %22 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %21, i32 0, i32 2
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.lima_bo*, %struct.lima_bo** %8, align 8
  %25 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.lima_device*, %struct.lima_device** %5, align 8
  %28 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lima_bo*, %struct.lima_bo** %8, align 8
  %31 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @drm_gem_object_init(i32 %29, i32* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load %struct.lima_bo*, %struct.lima_bo** %8, align 8
  %38 = call i32 @kfree(%struct.lima_bo* %37)
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.lima_bo* @ERR_PTR(i32 %39)
  store %struct.lima_bo* %40, %struct.lima_bo** %4, align 8
  br label %43

41:                                               ; preds = %20
  %42 = load %struct.lima_bo*, %struct.lima_bo** %8, align 8
  store %struct.lima_bo* %42, %struct.lima_bo** %4, align 8
  br label %43

43:                                               ; preds = %41, %36, %16
  %44 = load %struct.lima_bo*, %struct.lima_bo** %4, align 8
  ret %struct.lima_bo* %44
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local %struct.lima_bo* @kzalloc(i32, i32) #1

declare dso_local %struct.lima_bo* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_gem_object_init(i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.lima_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
