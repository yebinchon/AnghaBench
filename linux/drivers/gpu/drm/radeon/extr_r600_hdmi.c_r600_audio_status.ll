; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_audio_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_audio_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r600_audio_pin = type { i32, i32, i32, i32, i32 }
%struct.radeon_device = type { i32 }

@R600_AUDIO_RATE_BPS_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unknown bits per sample 0x%x, using 16\0A\00", align 1
@R600_AUDIO_STATUS_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r600_audio_pin*, %struct.radeon_device*)* @r600_audio_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_audio_status(%struct.r600_audio_pin* noalias sret %0, %struct.radeon_device* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %1, %struct.radeon_device** %3, align 8
  %5 = bitcast %struct.r600_audio_pin* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 20, i1 false)
  %6 = load i32, i32* @R600_AUDIO_RATE_BPS_CHANNEL, align 4
  %7 = call i32 @RREG32(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 7
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 240
  %14 = ashr i32 %13, 4
  switch i32 %14, label %25 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %19
    i32 3, label %21
    i32 4, label %23
  ]

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 1
  store i32 8, i32* %16, align 4
  br label %32

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 1
  store i32 16, i32* %18, align 4
  br label %32

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 1
  store i32 20, i32* %20, align 4
  br label %32

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 1
  store i32 24, i32* %22, align 4
  br label %32

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 1
  store i32 32, i32* %24, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 1
  store i32 16, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %23, %21, %19, %17, %15
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 16384
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 2
  store i32 44100, i32* %37, align 4
  br label %40

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 2
  store i32 48000, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 11
  %43 = and i32 %42, 7
  %44 = add nsw i32 %43, 1
  %45 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 8
  %50 = and i32 %49, 7
  %51 = add nsw i32 %50, 1
  %52 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @R600_AUDIO_STATUS_BITS, align 4
  %56 = call i32 @RREG32(i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 255
  %59 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %4, align 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %61, 255
  %63 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %0, i32 0, i32 4
  store i32 %62, i32* %63, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RREG32(i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
