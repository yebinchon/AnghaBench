; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vce_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vce_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.radeon_ring*, i32 }
%struct.radeon_ring = type { i32 }

@TN_RING_TYPE_VCE1_INDEX = common dso_local global i64 0, align 8
@VCE_CMD_NO_OP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed initializing VCE1 ring (%d).\0A\00", align 1
@TN_RING_TYPE_VCE2_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"failed initializing VCE (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_vce_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_vce_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.radeon_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %13 = load i64, i64* @TN_RING_TYPE_VCE1_INDEX, align 8
  %14 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %12, i64 %13
  %15 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9, %1
  br label %72

19:                                               ; preds = %9
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %21, align 8
  %23 = load i64, i64* @TN_RING_TYPE_VCE1_INDEX, align 8
  %24 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %22, i64 %23
  store %struct.radeon_ring* %24, %struct.radeon_ring** %3, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VCE_CMD_NO_OP, align 4
  %31 = call i32 @radeon_ring_init(%struct.radeon_device* %25, %struct.radeon_ring* %26, i32 %29, i32 0, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %19
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %72

40:                                               ; preds = %19
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %42, align 8
  %44 = load i64, i64* @TN_RING_TYPE_VCE2_INDEX, align 8
  %45 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %43, i64 %44
  store %struct.radeon_ring* %45, %struct.radeon_ring** %3, align 8
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %48 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @VCE_CMD_NO_OP, align 4
  %52 = call i32 @radeon_ring_init(%struct.radeon_device* %46, %struct.radeon_ring* %47, i32 %50, i32 0, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %40
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %72

61:                                               ; preds = %40
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = call i32 @vce_v1_0_init(%struct.radeon_device* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %18, %34, %55, %66, %61
  ret void
}

declare dso_local i32 @radeon_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @vce_v1_0_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
