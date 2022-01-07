; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_find_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_find_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ras_manager = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.amdgpu_device = type { i32 }
%struct.ras_common_if = type { i32 }
%struct.amdgpu_ras = type { %struct.ras_manager* }

@AMDGPU_RAS_BLOCK_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ras_manager* (%struct.amdgpu_device*, %struct.ras_common_if*)* @amdgpu_ras_find_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ras_manager* @amdgpu_ras_find_obj(%struct.amdgpu_device* %0, %struct.ras_common_if* %1) #0 {
  %3 = alloca %struct.ras_manager*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ras_common_if*, align 8
  %6 = alloca %struct.amdgpu_ras*, align 8
  %7 = alloca %struct.ras_manager*, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.ras_common_if* %1, %struct.ras_common_if** %5, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %9)
  store %struct.amdgpu_ras* %10, %struct.amdgpu_ras** %6, align 8
  %11 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %6, align 8
  %12 = icmp ne %struct.amdgpu_ras* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.ras_manager* null, %struct.ras_manager** %3, align 8
  br label %82

14:                                               ; preds = %2
  %15 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %16 = icmp ne %struct.ras_common_if* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %19 = getelementptr inbounds %struct.ras_common_if, %struct.ras_common_if* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AMDGPU_RAS_BLOCK_COUNT, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.ras_manager* null, %struct.ras_manager** %3, align 8
  br label %82

24:                                               ; preds = %17
  %25 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %25, i32 0, i32 0
  %27 = load %struct.ras_manager*, %struct.ras_manager** %26, align 8
  %28 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %29 = getelementptr inbounds %struct.ras_common_if, %struct.ras_common_if* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %27, i64 %31
  store %struct.ras_manager* %32, %struct.ras_manager** %7, align 8
  %33 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  %34 = call i64 @alive_obj(%struct.ras_manager* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %24
  %37 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %38 = getelementptr inbounds %struct.ras_common_if, %struct.ras_common_if* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  %42 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  store %struct.ras_manager* %48, %struct.ras_manager** %3, align 8
  br label %82

49:                                               ; preds = %24
  br label %81

50:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %77, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @AMDGPU_RAS_BLOCK_COUNT, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %6, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %56, i32 0, i32 0
  %58 = load %struct.ras_manager*, %struct.ras_manager** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %58, i64 %60
  store %struct.ras_manager* %61, %struct.ras_manager** %7, align 8
  %62 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  %63 = call i64 @alive_obj(%struct.ras_manager* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  %69 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %67, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @WARN_ON(i32 %73)
  %75 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  store %struct.ras_manager* %75, %struct.ras_manager** %3, align 8
  br label %82

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %51

80:                                               ; preds = %51
  br label %81

81:                                               ; preds = %80, %49
  store %struct.ras_manager* null, %struct.ras_manager** %3, align 8
  br label %82

82:                                               ; preds = %81, %65, %36, %23, %13
  %83 = load %struct.ras_manager*, %struct.ras_manager** %3, align 8
  ret %struct.ras_manager* %83
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i64 @alive_obj(%struct.ras_manager*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
