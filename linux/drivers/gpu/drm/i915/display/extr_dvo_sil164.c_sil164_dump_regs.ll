; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_sil164.c_sil164_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_sil164.c_sil164_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }

@SIL164_FREQ_LO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SIL164_FREQ_LO: 0x%02x\0A\00", align 1
@SIL164_FREQ_HI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SIL164_FREQ_HI: 0x%02x\0A\00", align 1
@SIL164_REG8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"SIL164_REG8: 0x%02x\0A\00", align 1
@SIL164_REG9 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"SIL164_REG9: 0x%02x\0A\00", align 1
@SIL164_REGC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"SIL164_REGC: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*)* @sil164_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil164_dump_regs(%struct.intel_dvo_device* %0) #0 {
  %2 = alloca %struct.intel_dvo_device*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %2, align 8
  %4 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %5 = load i32, i32* @SIL164_FREQ_LO, align 4
  %6 = call i32 @sil164_readb(%struct.intel_dvo_device* %4, i32 %5, i32* %3)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %10 = load i32, i32* @SIL164_FREQ_HI, align 4
  %11 = call i32 @sil164_readb(%struct.intel_dvo_device* %9, i32 %10, i32* %3)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %15 = load i32, i32* @SIL164_REG8, align 4
  %16 = call i32 @sil164_readb(%struct.intel_dvo_device* %14, i32 %15, i32* %3)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %20 = load i32, i32* @SIL164_REG9, align 4
  %21 = call i32 @sil164_readb(%struct.intel_dvo_device* %19, i32 %20, i32* %3)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %25 = load i32, i32* @SIL164_REGC, align 4
  %26 = call i32 @sil164_readb(%struct.intel_dvo_device* %24, i32 %25, i32* %3)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  ret void
}

declare dso_local i32 @sil164_readb(%struct.intel_dvo_device*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
