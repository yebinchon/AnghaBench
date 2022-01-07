; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_NVBlankScreen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_NVBlankScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@NV_VIO_SR_CLOCK_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NVBlankScreen(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call i64 @nv_two_heads(%struct.drm_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @NVSetOwner(%struct.drm_device* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NV_VIO_SR_CLOCK_INDEX, align 4
  %19 = call zeroext i8 @NVReadVgaSeq(%struct.drm_device* %16, i32 %17, i32 %18)
  store i8 %19, i8* %7, align 1
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @NVVgaSeqReset(%struct.drm_device* %20, i32 %21, i32 1)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @NV_VIO_SR_CLOCK_INDEX, align 4
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, 32
  %32 = trunc i32 %31 to i8
  %33 = call i32 @NVWriteVgaSeq(%struct.drm_device* %26, i32 %27, i32 %28, i8 zeroext %32)
  br label %43

34:                                               ; preds = %15
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @NV_VIO_SR_CLOCK_INDEX, align 4
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, -33
  %41 = trunc i32 %40 to i8
  %42 = call i32 @NVWriteVgaSeq(%struct.drm_device* %35, i32 %36, i32 %37, i8 zeroext %41)
  br label %43

43:                                               ; preds = %34, %25
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @NVVgaSeqReset(%struct.drm_device* %44, i32 %45, i32 0)
  ret void
}

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @NVSetOwner(%struct.drm_device*, i32) #1

declare dso_local zeroext i8 @NVReadVgaSeq(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVVgaSeqReset(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteVgaSeq(%struct.drm_device*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
