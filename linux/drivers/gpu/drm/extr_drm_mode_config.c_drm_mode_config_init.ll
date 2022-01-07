; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_config.c_drm_mode_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_config.c_drm_mode_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@drm_connector_free_work_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mode_config_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %3 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 23
  %6 = call i32 @mutex_init(i32* %5)
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 22
  %10 = call i32 @drm_modeset_lock_init(i32* %9)
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 21
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 20
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 19
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 18
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 17
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 16
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 15
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 14
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 13
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 12
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 11
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 10
  %58 = call i32 @idr_init(i32* %57)
  %59 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 9
  %62 = call i32 @idr_init(i32* %61)
  %63 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 8
  %66 = call i32 @ida_init(i32* %65)
  %67 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 7
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %72 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  %74 = call i32 @init_llist_head(i32* %73)
  %75 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 5
  %78 = load i32, i32* @drm_connector_free_work_fn, align 4
  %79 = call i32 @INIT_WORK(i32* %77, i32 %78)
  %80 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %81 = call i32 @drm_mode_create_standard_properties(%struct.drm_device* %80)
  %82 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %86 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %89 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %95 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @drm_modeset_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_mode_create_standard_properties(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
