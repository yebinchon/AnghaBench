; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_endpoint_wreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_endpoint_wreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@AZ_F0_CODEC_ENDPOINT_INDEX = common dso_local global i32 0, align 4
@AZ_ENDPOINT_REG_WRITE_EN = common dso_local global i32 0, align 4
@AZ_F0_CODEC_ENDPOINT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce6_endpoint_wreg(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %15 = call i64 @ASIC_IS_DCE8(%struct.radeon_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* @AZ_F0_CODEC_ENDPOINT_INDEX, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @WREG32(i32 %20, i32 %21)
  br label %32

23:                                               ; preds = %4
  %24 = load i32, i32* @AZ_F0_CODEC_ENDPOINT_INDEX, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @AZ_ENDPOINT_REG_WRITE_EN, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @AZ_ENDPOINT_REG_INDEX(i32 %28)
  %30 = or i32 %27, %29
  %31 = call i32 @WREG32(i32 %26, i32 %30)
  br label %32

32:                                               ; preds = %23, %17
  %33 = load i32, i32* @AZ_F0_CODEC_ENDPOINT_DATA, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ASIC_IS_DCE8(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @AZ_ENDPOINT_REG_INDEX(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
