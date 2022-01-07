; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.c_komeda_kms_mode_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.c_komeda_kms_mode_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_kms_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32, i32, i32, i32*, i32*, i64, i64 }
%struct.komeda_dev = type { i32 }

@komeda_mode_config_funcs = common dso_local global i32 0, align 4
@komeda_mode_config_helpers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_kms_dev*, %struct.komeda_dev*)* @komeda_kms_mode_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_kms_mode_config_init(%struct.komeda_kms_dev* %0, %struct.komeda_dev* %1) #0 {
  %3 = alloca %struct.komeda_kms_dev*, align 8
  %4 = alloca %struct.komeda_dev*, align 8
  %5 = alloca %struct.drm_mode_config*, align 8
  store %struct.komeda_kms_dev* %0, %struct.komeda_kms_dev** %3, align 8
  store %struct.komeda_dev* %1, %struct.komeda_dev** %4, align 8
  %6 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %3, align 8
  %7 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.drm_mode_config* %8, %struct.drm_mode_config** %5, align 8
  %9 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %3, align 8
  %10 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %9, i32 0, i32 0
  %11 = call i32 @drm_mode_config_init(%struct.TYPE_2__* %10)
  %12 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %3, align 8
  %13 = load %struct.komeda_dev*, %struct.komeda_dev** %4, align 8
  %14 = call i32 @komeda_kms_setup_crtcs(%struct.komeda_kms_dev* %12, %struct.komeda_dev* %13)
  %15 = load %struct.drm_mode_config*, %struct.drm_mode_config** %5, align 8
  %16 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.drm_mode_config*, %struct.drm_mode_config** %5, align 8
  %18 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.drm_mode_config*, %struct.drm_mode_config** %5, align 8
  %20 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %19, i32 0, i32 0
  store i32 4096, i32* %20, align 8
  %21 = load %struct.drm_mode_config*, %struct.drm_mode_config** %5, align 8
  %22 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %21, i32 0, i32 1
  store i32 4096, i32* %22, align 4
  %23 = load %struct.drm_mode_config*, %struct.drm_mode_config** %5, align 8
  %24 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = load %struct.drm_mode_config*, %struct.drm_mode_config** %5, align 8
  %26 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %25, i32 0, i32 4
  store i32* @komeda_mode_config_funcs, i32** %26, align 8
  %27 = load %struct.drm_mode_config*, %struct.drm_mode_config** %5, align 8
  %28 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %27, i32 0, i32 3
  store i32* @komeda_mode_config_helpers, i32** %28, align 8
  ret void
}

declare dso_local i32 @drm_mode_config_init(%struct.TYPE_2__*) #1

declare dso_local i32 @komeda_kms_setup_crtcs(%struct.komeda_kms_dev*, %struct.komeda_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
