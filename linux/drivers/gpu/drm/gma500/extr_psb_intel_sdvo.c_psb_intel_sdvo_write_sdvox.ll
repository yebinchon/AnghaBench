; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_write_sdvox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_write_sdvox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_sdvo = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@SDVOB = common dso_local global i64 0, align 8
@SDVOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psb_intel_sdvo*, i32)* @psb_intel_sdvo_write_sdvox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_sdvo_write_sdvox(%struct.psb_intel_sdvo* %0, i32 %1) #0 {
  %3 = alloca %struct.psb_intel_sdvo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.psb_intel_sdvo* %0, %struct.psb_intel_sdvo** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %12 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = call i64 @IS_MRST(%struct.drm_device* %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %64, %2
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %29 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SDVOB, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* @SDVOC, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @REG_READ_WITH_AUX(i64 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %27
  %38 = load i64, i64* @SDVOB, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @REG_READ_WITH_AUX(i64 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %33
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load i64, i64* @SDVOB, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @REG_WRITE_WITH_AUX(i64 %46, i32 %47, i32 %48)
  %50 = load i64, i64* @SDVOB, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @REG_READ_WITH_AUX(i64 %50, i32 %51)
  %53 = load i64, i64* @SDVOC, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @REG_WRITE_WITH_AUX(i64 %53, i32 %54, i32 %55)
  %57 = load i64, i64* @SDVOC, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @REG_READ_WITH_AUX(i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %42

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %23

67:                                               ; preds = %23
  ret void
}

declare dso_local i64 @IS_MRST(%struct.drm_device*) #1

declare dso_local i32 @REG_READ_WITH_AUX(i64, i32) #1

declare dso_local i32 @REG_WRITE_WITH_AUX(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
