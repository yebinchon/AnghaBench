; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_auth.c_drm_master_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_auth.c_drm_master_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_master = type { i32, i32, i32, i32, %struct.drm_device*, i32, i32 }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_master* @drm_master_create(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_master*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_master*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.drm_master* @kzalloc(i32 32, i32 %5)
  store %struct.drm_master* %6, %struct.drm_master** %4, align 8
  %7 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %8 = icmp ne %struct.drm_master* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.drm_master* null, %struct.drm_master** %2, align 8
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %12 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %11, i32 0, i32 6
  %13 = call i32 @kref_init(i32* %12)
  %14 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %15 = call i32 @drm_master_legacy_init(%struct.drm_master* %14)
  %16 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %17 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %16, i32 0, i32 5
  %18 = call i32 @idr_init(i32* %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %21 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %20, i32 0, i32 4
  store %struct.drm_device* %19, %struct.drm_device** %21, align 8
  %22 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %23 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %22, i32 0, i32 3
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %26 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %25, i32 0, i32 2
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %29 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %28, i32 0, i32 1
  %30 = call i32 @idr_init(i32* %29)
  %31 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %32 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %31, i32 0, i32 0
  %33 = call i32 @idr_init(i32* %32)
  %34 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  store %struct.drm_master* %34, %struct.drm_master** %2, align 8
  br label %35

35:                                               ; preds = %10, %9
  %36 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  ret %struct.drm_master* %36
}

declare dso_local %struct.drm_master* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @drm_master_legacy_init(%struct.drm_master*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
