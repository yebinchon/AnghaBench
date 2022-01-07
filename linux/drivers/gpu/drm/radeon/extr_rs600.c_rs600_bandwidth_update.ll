; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_bandwidth_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_bandwidth_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__**, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode, i64 }
%struct.drm_display_mode = type { i32 }

@R_006548_D1MODE_PRIORITY_A_CNT = common dso_local global i32 0, align 4
@R_006D48_D2MODE_PRIORITY_A_CNT = common dso_local global i32 0, align 4
@R_00654C_D1MODE_PRIORITY_B_CNT = common dso_local global i32 0, align 4
@R_006D4C_D2MODE_PRIORITY_B_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs600_bandwidth_update(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %87

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = call i32 @radeon_update_display_priority(%struct.radeon_device* %14)
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %19, i64 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %13
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %30, i64 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.drm_display_mode* %34, %struct.drm_display_mode** %3, align 8
  br label %35

35:                                               ; preds = %26, %13
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %35
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %50, i64 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.drm_display_mode* %54, %struct.drm_display_mode** %4, align 8
  br label %55

55:                                               ; preds = %46, %35
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %59 = call i32 @rs690_line_buffer_adjust(%struct.radeon_device* %56, %struct.drm_display_mode* %57, %struct.drm_display_mode* %58)
  %60 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %87

64:                                               ; preds = %55
  %65 = load i32, i32* @R_006548_D1MODE_PRIORITY_A_CNT, align 4
  %66 = call i32 @RREG32(i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @R_006D48_D2MODE_PRIORITY_A_CNT, align 4
  %68 = call i32 @RREG32(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = call i32 @S_006548_D1MODE_PRIORITY_A_ALWAYS_ON(i32 1)
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = call i32 @S_006D48_D2MODE_PRIORITY_A_ALWAYS_ON(i32 1)
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @R_006548_D1MODE_PRIORITY_A_CNT, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @WREG32(i32 %75, i32 %76)
  %78 = load i32, i32* @R_00654C_D1MODE_PRIORITY_B_CNT, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @WREG32(i32 %78, i32 %79)
  %81 = load i32, i32* @R_006D48_D2MODE_PRIORITY_A_CNT, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @WREG32(i32 %81, i32 %82)
  %84 = load i32, i32* @R_006D4C_D2MODE_PRIORITY_B_CNT, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @WREG32(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %12, %64, %55
  ret void
}

declare dso_local i32 @radeon_update_display_priority(%struct.radeon_device*) #1

declare dso_local i32 @rs690_line_buffer_adjust(%struct.radeon_device*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @S_006548_D1MODE_PRIORITY_A_ALWAYS_ON(i32) #1

declare dso_local i32 @S_006D48_D2MODE_PRIORITY_A_ALWAYS_ON(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
