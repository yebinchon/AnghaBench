; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_backlight.c_shmob_drm_backlight_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_backlight.c_shmob_drm_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_connector = type { %struct.backlight_device*, %struct.drm_connector }
%struct.backlight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.shmob_drm_device* }
%struct.shmob_drm_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.shmob_drm_backlight_data }
%struct.shmob_drm_backlight_data = type { i64, i32 }

@shmob_drm_backlight_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unable to register backlight device: %ld\0A\00", align 1
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shmob_drm_backlight_init(%struct.shmob_drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shmob_drm_connector*, align 8
  %4 = alloca %struct.shmob_drm_device*, align 8
  %5 = alloca %struct.shmob_drm_backlight_data*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.backlight_device*, align 8
  store %struct.shmob_drm_connector* %0, %struct.shmob_drm_connector** %3, align 8
  %9 = load %struct.shmob_drm_connector*, %struct.shmob_drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.shmob_drm_connector, %struct.shmob_drm_connector* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %13, align 8
  store %struct.shmob_drm_device* %14, %struct.shmob_drm_device** %4, align 8
  %15 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.shmob_drm_backlight_data* %18, %struct.shmob_drm_backlight_data** %5, align 8
  %19 = load %struct.shmob_drm_connector*, %struct.shmob_drm_connector** %3, align 8
  %20 = getelementptr inbounds %struct.shmob_drm_connector, %struct.shmob_drm_connector* %19, i32 0, i32 1
  store %struct.drm_connector* %20, %struct.drm_connector** %6, align 8
  %21 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %7, align 8
  %24 = load %struct.shmob_drm_backlight_data*, %struct.shmob_drm_backlight_data** %5, align 8
  %25 = getelementptr inbounds %struct.shmob_drm_backlight_data, %struct.shmob_drm_backlight_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

29:                                               ; preds = %1
  %30 = load %struct.shmob_drm_backlight_data*, %struct.shmob_drm_backlight_data** %5, align 8
  %31 = getelementptr inbounds %struct.shmob_drm_backlight_data, %struct.shmob_drm_backlight_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.shmob_drm_connector*, %struct.shmob_drm_connector** %3, align 8
  %37 = call %struct.backlight_device* @backlight_device_register(i32 %32, i32 %35, %struct.shmob_drm_connector* %36, i32* @shmob_drm_backlight_ops, i32* null)
  store %struct.backlight_device* %37, %struct.backlight_device** %8, align 8
  %38 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %39 = call i64 @IS_ERR(%struct.backlight_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %29
  %42 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.backlight_device* %45)
  %47 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %49 = call i32 @PTR_ERR(%struct.backlight_device* %48)
  store i32 %49, i32* %2, align 4
  br label %72

50:                                               ; preds = %29
  %51 = load %struct.shmob_drm_backlight_data*, %struct.shmob_drm_backlight_data** %5, align 8
  %52 = getelementptr inbounds %struct.shmob_drm_backlight_data, %struct.shmob_drm_backlight_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %55 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i64 %53, i64* %56, align 8
  %57 = load %struct.shmob_drm_backlight_data*, %struct.shmob_drm_backlight_data** %5, align 8
  %58 = getelementptr inbounds %struct.shmob_drm_backlight_data, %struct.shmob_drm_backlight_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %61 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %64 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %65 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %68 = call i32 @backlight_update_status(%struct.backlight_device* %67)
  %69 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %70 = load %struct.shmob_drm_connector*, %struct.shmob_drm_connector** %3, align 8
  %71 = getelementptr inbounds %struct.shmob_drm_connector, %struct.shmob_drm_connector* %70, i32 0, i32 0
  store %struct.backlight_device* %69, %struct.backlight_device** %71, align 8
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %50, %41, %28
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.backlight_device* @backlight_device_register(i32, i32, %struct.shmob_drm_connector*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
