; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_scdc_helper.c_drm_scdc_set_scrambling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_scdc_helper.c_drm_scdc_set_scrambling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@SCDC_TMDS_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read TMDS config: %d\0A\00", align 1
@SCDC_SCRAMBLING_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to enable scrambling: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_scdc_set_scrambling(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %9 = load i32, i32* @SCDC_TMDS_CONFIG, align 4
  %10 = call i32 @drm_scdc_readb(%struct.i2c_adapter* %8, i32 %9, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @SCDC_SCRAMBLING_ENABLE, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %28

23:                                               ; preds = %16
  %24 = load i32, i32* @SCDC_SCRAMBLING_ENABLE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %30 = load i32, i32* @SCDC_TMDS_CONFIG, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @drm_scdc_writeb(%struct.i2c_adapter* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 0, i32* %3, align 4
  br label %39

38:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %35, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @drm_scdc_readb(%struct.i2c_adapter*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @drm_scdc_writeb(%struct.i2c_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
