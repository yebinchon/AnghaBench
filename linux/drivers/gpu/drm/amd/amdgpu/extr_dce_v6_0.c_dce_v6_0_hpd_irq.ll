; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_hpd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_hpd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.amdgpu_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unhandled interrupt: %d %d\0A\00", align 1
@interrupt_status_offsets = common dso_local global %struct.TYPE_4__* null, align 8
@mmDC_HPD1_INT_CONTROL = common dso_local global i64 0, align 8
@hpd_offsets = common dso_local global i64* null, align 8
@DC_HPD1_INT_CONTROL__DC_HPD1_INT_ACK_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"IH: HPD%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @dce_v6_0_hpd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v6_0_hpd_irq(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca %struct.amdgpu_iv_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %7, align 8
  %12 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %13 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp uge i32 %16, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %24 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %27 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30)
  store i32 0, i32* %4, align 4
  br label %83

32:                                               ; preds = %3
  %33 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %34 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interrupt_status_offsets, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @RREG32(i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interrupt_status_offsets, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %32
  %56 = load i64, i64* @mmDC_HPD1_INT_CONTROL, align 8
  %57 = load i64*, i64** @hpd_offsets, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %56, %61
  %63 = call i32 @RREG32(i64 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @DC_HPD1_INT_CONTROL__DC_HPD1_INT_ACK_MASK, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i64, i64* @mmDC_HPD1_INT_CONTROL, align 8
  %68 = load i64*, i64** @hpd_offsets, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %67, %72
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @WREG32(i64 %73, i32 %74)
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = call i32 @schedule_work(i32* %77)
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  %81 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %55, %32
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %22
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
