; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_encoder_get_dp_bridge_encoder_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_encoder_get_dp_bridge_encoder_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { i32 }

@ENCODER_OBJECT_ID_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %7 = call %struct.drm_encoder* @radeon_get_external_encoder(%struct.drm_encoder* %6)
  store %struct.drm_encoder* %7, %struct.drm_encoder** %4, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %9 = icmp ne %struct.drm_encoder* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %11)
  store %struct.radeon_encoder* %12, %struct.radeon_encoder** %5, align 8
  %13 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %20 [
    i32 128, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %10, %10
  %17 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %10
  %21 = load i32, i32* @ENCODER_OBJECT_ID_NONE, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ENCODER_OBJECT_ID_NONE, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %20, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.drm_encoder* @radeon_get_external_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
