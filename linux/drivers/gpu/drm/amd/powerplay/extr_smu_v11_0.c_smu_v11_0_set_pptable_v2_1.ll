; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_pptable_v2_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_pptable_v2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.smc_firmware_header_v2_1 = type { i32, i32 }
%struct.smc_soft_pptable_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i8**, i32*, i32)* @smu_v11_0_set_pptable_v2_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_set_pptable_v2_1(%struct.smu_context* %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_context*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.smc_firmware_header_v2_1*, align 8
  %12 = alloca %struct.smc_soft_pptable_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %16 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.smc_firmware_header_v2_1*
  store %struct.smc_firmware_header_v2_1* %24, %struct.smc_firmware_header_v2_1** %11, align 8
  %25 = load %struct.smc_firmware_header_v2_1*, %struct.smc_firmware_header_v2_1** %11, align 8
  %26 = bitcast %struct.smc_firmware_header_v2_1* %25 to i32*
  %27 = load %struct.smc_firmware_header_v2_1*, %struct.smc_firmware_header_v2_1** %11, align 8
  %28 = getelementptr inbounds %struct.smc_firmware_header_v2_1, %struct.smc_firmware_header_v2_1* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = bitcast i32* %32 to %struct.smc_soft_pptable_entry*
  store %struct.smc_soft_pptable_entry* %33, %struct.smc_soft_pptable_entry** %12, align 8
  %34 = load %struct.smc_firmware_header_v2_1*, %struct.smc_firmware_header_v2_1** %11, align 8
  %35 = getelementptr inbounds %struct.smc_firmware_header_v2_1, %struct.smc_firmware_header_v2_1* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %75, %4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %78

42:                                               ; preds = %38
  %43 = load %struct.smc_soft_pptable_entry*, %struct.smc_soft_pptable_entry** %12, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.smc_soft_pptable_entry, %struct.smc_soft_pptable_entry* %43, i64 %45
  %47 = getelementptr inbounds %struct.smc_soft_pptable_entry, %struct.smc_soft_pptable_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %42
  %53 = load %struct.smc_firmware_header_v2_1*, %struct.smc_firmware_header_v2_1** %11, align 8
  %54 = bitcast %struct.smc_firmware_header_v2_1* %53 to i32*
  %55 = load %struct.smc_soft_pptable_entry*, %struct.smc_soft_pptable_entry** %12, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.smc_soft_pptable_entry, %struct.smc_soft_pptable_entry* %55, i64 %57
  %59 = getelementptr inbounds %struct.smc_soft_pptable_entry, %struct.smc_soft_pptable_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %54, i64 %62
  %64 = bitcast i32* %63 to i8*
  %65 = load i8**, i8*** %7, align 8
  store i8* %64, i8** %65, align 8
  %66 = load %struct.smc_soft_pptable_entry*, %struct.smc_soft_pptable_entry** %12, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.smc_soft_pptable_entry, %struct.smc_soft_pptable_entry* %66, i64 %68
  %70 = getelementptr inbounds %struct.smc_soft_pptable_entry, %struct.smc_soft_pptable_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  br label %78

74:                                               ; preds = %42
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %38

78:                                               ; preds = %52, %38
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %86

85:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
