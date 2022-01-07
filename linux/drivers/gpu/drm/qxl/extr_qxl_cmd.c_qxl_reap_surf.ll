; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_reap_surf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_reap_surf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_bo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_device*, %struct.qxl_bo*, i32)* @qxl_reap_surf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_reap_surf(%struct.qxl_device* %0, %struct.qxl_bo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca %struct.qxl_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %5, align 8
  store %struct.qxl_bo* %1, %struct.qxl_bo** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %10 = call i32 @qxl_bo_reserve(%struct.qxl_bo* %9, i32 0)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %49

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %20 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %24 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @ttm_bo_wait(i32* %24, i32 1, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %34 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  br label %36

36:                                               ; preds = %32, %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %41 = call i32 @qxl_bo_unreserve(%struct.qxl_bo* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %49

43:                                               ; preds = %36
  %44 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %45 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %46 = call i32 @qxl_surface_evict_locked(%struct.qxl_device* %44, %struct.qxl_bo* %45, i32 1)
  %47 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %48 = call i32 @qxl_bo_unreserve(%struct.qxl_bo* %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %39, %13
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @qxl_bo_reserve(%struct.qxl_bo*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ttm_bo_wait(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qxl_bo_unreserve(%struct.qxl_bo*) #1

declare dso_local i32 @qxl_surface_evict_locked(%struct.qxl_device*, %struct.qxl_bo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
