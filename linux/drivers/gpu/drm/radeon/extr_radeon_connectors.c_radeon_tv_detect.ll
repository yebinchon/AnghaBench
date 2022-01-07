; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_tv_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_tv_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_connector.1 = type opaque
%struct.radeon_connector = type { i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @radeon_tv_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_tv_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_encoder_helper_funcs*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %11)
  store %struct.radeon_connector* %12, %struct.radeon_connector** %8, align 8
  %13 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %15 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_get_sync(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %33, i32* %3, align 4
  br label %84

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %37 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %36)
  store %struct.drm_encoder* %37, %struct.drm_encoder** %6, align 8
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %39 = icmp ne %struct.drm_encoder* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %41, i32* %9, align 4
  br label %54

42:                                               ; preds = %35
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %44 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %43, i32 0, i32 0
  %45 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %44, align 8
  store %struct.drm_encoder_helper_funcs* %45, %struct.drm_encoder_helper_funcs** %7, align 8
  %46 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %7, align 8
  %47 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %46, i32 0, i32 0
  %48 = load i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)*, i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)** %47, align 8
  %49 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %50 = bitcast %struct.drm_encoder* %49 to %struct.drm_encoder.0*
  %51 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %52 = bitcast %struct.drm_connector* %51 to %struct.drm_connector.1*
  %53 = call i32 %48(%struct.drm_encoder.0* %50, %struct.drm_connector.1* %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %42, %40
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @connector_status_connected, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %60 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @radeon_connector_analog_encoder_conflict_solve(%struct.drm_connector* %59, %struct.drm_encoder* %60, i32 %61, i32 0)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @radeon_connector_update_scratch_regs(%struct.drm_connector* %64, i32 %65)
  %67 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %63
  %70 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %71 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pm_runtime_mark_last_busy(i32 %74)
  %76 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %77 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pm_runtime_put_autosuspend(i32 %80)
  br label %82

82:                                               ; preds = %69, %63
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %32, %18
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_kms_helper_is_poll_worker(...) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @radeon_connector_analog_encoder_conflict_solve(%struct.drm_connector*, %struct.drm_encoder*, i32, i32) #1

declare dso_local i32 @radeon_connector_update_scratch_regs(%struct.drm_connector*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
