; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_get_tmds_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_get_tmds_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder_int_tmds = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radeon_encoder_int_tmds* (%struct.radeon_encoder*)* @radeon_legacy_get_tmds_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radeon_encoder_int_tmds* @radeon_legacy_get_tmds_info(%struct.radeon_encoder* %0) #0 {
  %2 = alloca %struct.radeon_encoder_int_tmds*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_encoder_int_tmds*, align 8
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
  store %struct.radeon_encoder_int_tmds* null, %struct.radeon_encoder_int_tmds** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.radeon_encoder_int_tmds* @kzalloc(i32 4, i32 %15)
  store %struct.radeon_encoder_int_tmds* %16, %struct.radeon_encoder_int_tmds** %6, align 8
  %17 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %6, align 8
  %18 = icmp ne %struct.radeon_encoder_int_tmds* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.radeon_encoder_int_tmds* null, %struct.radeon_encoder_int_tmds** %2, align 8
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %27 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %6, align 8
  %28 = call i32 @radeon_atombios_get_tmds_info(%struct.radeon_encoder* %26, %struct.radeon_encoder_int_tmds* %27)
  store i32 %28, i32* %7, align 4
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %31 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %6, align 8
  %32 = call i32 @radeon_legacy_get_tmds_info_from_combios(%struct.radeon_encoder* %30, %struct.radeon_encoder_int_tmds* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %38 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %6, align 8
  %39 = call i32 @radeon_legacy_get_tmds_info_from_table(%struct.radeon_encoder* %37, %struct.radeon_encoder_int_tmds* %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %6, align 8
  store %struct.radeon_encoder_int_tmds* %41, %struct.radeon_encoder_int_tmds** %2, align 8
  br label %42

42:                                               ; preds = %40, %19
  %43 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %2, align 8
  ret %struct.radeon_encoder_int_tmds* %43
}

declare dso_local %struct.radeon_encoder_int_tmds* @kzalloc(i32, i32) #1

declare dso_local i32 @radeon_atombios_get_tmds_info(%struct.radeon_encoder*, %struct.radeon_encoder_int_tmds*) #1

declare dso_local i32 @radeon_legacy_get_tmds_info_from_combios(%struct.radeon_encoder*, %struct.radeon_encoder_int_tmds*) #1

declare dso_local i32 @radeon_legacy_get_tmds_info_from_table(%struct.radeon_encoder*, %struct.radeon_encoder_int_tmds*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
