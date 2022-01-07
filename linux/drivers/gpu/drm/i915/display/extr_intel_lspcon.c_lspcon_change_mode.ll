; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_change_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_change_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lspcon = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.i2c_adapter }

@.str = private unnamed_addr constant [27 x i8] c"Error reading LSPCON mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Current mode = desired LSPCON mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"LSPCON mode change failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"LSPCON mode changed done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_lspcon*, i32)* @lspcon_change_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lspcon_change_mode(%struct.intel_lspcon* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_lspcon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  store %struct.intel_lspcon* %0, %struct.intel_lspcon** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.intel_lspcon*, %struct.intel_lspcon** %4, align 8
  %10 = call %struct.TYPE_4__* @lspcon_to_intel_dp(%struct.intel_lspcon* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %8, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %14 = call i32 @drm_lspcon_get_mode(%struct.i2c_adapter* %13, i32* %7)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %40

26:                                               ; preds = %20
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @drm_lspcon_set_mode(%struct.i2c_adapter* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.intel_lspcon*, %struct.intel_lspcon** %4, align 8
  %38 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %32, %24, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_4__* @lspcon_to_intel_dp(%struct.intel_lspcon*) #1

declare dso_local i32 @drm_lspcon_get_mode(%struct.i2c_adapter*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_lspcon_set_mode(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
