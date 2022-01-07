; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_vec.c_vc4_vec_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_vec.c_vc4_vec_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32* }
%struct.vc4_vec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @vc4_vec_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_vec_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.vc4_dev*, align 8
  %9 = alloca %struct.vc4_vec*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call i8* @dev_get_drvdata(%struct.device* %10)
  %12 = bitcast i8* %11 to %struct.drm_device*
  store %struct.drm_device* %12, %struct.drm_device** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %13)
  store %struct.vc4_dev* %14, %struct.vc4_dev** %8, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i8* @dev_get_drvdata(%struct.device* %15)
  %17 = bitcast i8* %16 to %struct.vc4_vec*
  store %struct.vc4_vec* %17, %struct.vc4_vec** %9, align 8
  %18 = load %struct.vc4_vec*, %struct.vc4_vec** %9, align 8
  %19 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vc4_vec_connector_destroy(i32 %20)
  %22 = load %struct.vc4_vec*, %struct.vc4_vec** %9, align 8
  %23 = getelementptr inbounds %struct.vc4_vec, %struct.vc4_vec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @drm_encoder_cleanup(i32 %24)
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @pm_runtime_disable(%struct.device* %26)
  %28 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %29 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  ret void
}

declare dso_local i8* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @vc4_vec_connector_destroy(i32) #1

declare dso_local i32 @drm_encoder_cleanup(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
