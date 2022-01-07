; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_get_ext_tmds_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_get_ext_tmds_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder_ext_tmds = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radeon_encoder_ext_tmds* (%struct.radeon_encoder*)* @radeon_legacy_get_ext_tmds_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radeon_encoder_ext_tmds* @radeon_legacy_get_ext_tmds_info(%struct.radeon_encoder* %0) #0 {
  %2 = alloca %struct.radeon_encoder_ext_tmds*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_encoder_ext_tmds*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  %8 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %5, align 8
  store %struct.radeon_encoder_ext_tmds* null, %struct.radeon_encoder_ext_tmds** %6, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.radeon_encoder_ext_tmds* null, %struct.radeon_encoder_ext_tmds** %2, align 8
  br label %38

20:                                               ; preds = %1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.radeon_encoder_ext_tmds* @kzalloc(i32 4, i32 %21)
  store %struct.radeon_encoder_ext_tmds* %22, %struct.radeon_encoder_ext_tmds** %6, align 8
  %23 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %6, align 8
  %24 = icmp ne %struct.radeon_encoder_ext_tmds* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store %struct.radeon_encoder_ext_tmds* null, %struct.radeon_encoder_ext_tmds** %2, align 8
  br label %38

26:                                               ; preds = %20
  %27 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %28 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %6, align 8
  %29 = call i32 @radeon_legacy_get_ext_tmds_info_from_combios(%struct.radeon_encoder* %27, %struct.radeon_encoder_ext_tmds* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %34 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %6, align 8
  %35 = call i32 @radeon_legacy_get_ext_tmds_info_from_table(%struct.radeon_encoder* %33, %struct.radeon_encoder_ext_tmds* %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %6, align 8
  store %struct.radeon_encoder_ext_tmds* %37, %struct.radeon_encoder_ext_tmds** %2, align 8
  br label %38

38:                                               ; preds = %36, %25, %19
  %39 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %2, align 8
  ret %struct.radeon_encoder_ext_tmds* %39
}

declare dso_local %struct.radeon_encoder_ext_tmds* @kzalloc(i32, i32) #1

declare dso_local i32 @radeon_legacy_get_ext_tmds_info_from_combios(%struct.radeon_encoder*, %struct.radeon_encoder_ext_tmds*) #1

declare dso_local i32 @radeon_legacy_get_ext_tmds_info_from_table(%struct.radeon_encoder*, %struct.radeon_encoder_ext_tmds*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
