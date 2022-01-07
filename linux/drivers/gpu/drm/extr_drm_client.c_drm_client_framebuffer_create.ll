; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client.c_drm_client_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client.c_drm_client_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_client_buffer = type { i32 }
%struct.drm_client_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_client_buffer* @drm_client_framebuffer_create(%struct.drm_client_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_client_buffer*, align 8
  %6 = alloca %struct.drm_client_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_client_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_client_dev* %0, %struct.drm_client_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.drm_client_dev*, %struct.drm_client_dev** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.drm_client_buffer* @drm_client_buffer_create(%struct.drm_client_dev* %12, i32 %13, i32 %14, i32 %15)
  store %struct.drm_client_buffer* %16, %struct.drm_client_buffer** %10, align 8
  %17 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %10, align 8
  %18 = call i64 @IS_ERR(%struct.drm_client_buffer* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %10, align 8
  store %struct.drm_client_buffer* %21, %struct.drm_client_buffer** %5, align 8
  br label %37

22:                                               ; preds = %4
  %23 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @drm_client_buffer_addfb(%struct.drm_client_buffer* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %10, align 8
  %32 = call i32 @drm_client_buffer_delete(%struct.drm_client_buffer* %31)
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.drm_client_buffer* @ERR_PTR(i32 %33)
  store %struct.drm_client_buffer* %34, %struct.drm_client_buffer** %5, align 8
  br label %37

35:                                               ; preds = %22
  %36 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %10, align 8
  store %struct.drm_client_buffer* %36, %struct.drm_client_buffer** %5, align 8
  br label %37

37:                                               ; preds = %35, %30, %20
  %38 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %5, align 8
  ret %struct.drm_client_buffer* %38
}

declare dso_local %struct.drm_client_buffer* @drm_client_buffer_create(%struct.drm_client_dev*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_client_buffer*) #1

declare dso_local i32 @drm_client_buffer_addfb(%struct.drm_client_buffer*, i32, i32, i32) #1

declare dso_local i32 @drm_client_buffer_delete(%struct.drm_client_buffer*) #1

declare dso_local %struct.drm_client_buffer* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
