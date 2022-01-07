; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_map.c_via_driver_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_map.c_via_driver_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i8* }
%struct.TYPE_4__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @via_driver_load(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.TYPE_4__* @kzalloc(i32 16, i32 %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = call i32 @idr_init(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = bitcast %struct.TYPE_4__* %19 to i8*
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pci_set_master(i32 %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = call i32 @drm_vblank_init(%struct.drm_device* %30, i32 1)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %15
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = call i32 @kfree(%struct.TYPE_4__* %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %34, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
