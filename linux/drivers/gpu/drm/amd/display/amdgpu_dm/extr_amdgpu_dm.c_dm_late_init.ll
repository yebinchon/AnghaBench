; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_late_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_late_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dmcu* }
%struct.dmcu = type { i32 }
%struct.dmcu_iram_parameters = type { i32, i32, i32, i32*, i64 }

@CHIP_RAVEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dm_late_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_late_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.dmcu_iram_parameters, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmcu*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %4, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.dmcu*, %struct.dmcu** %18, align 8
  store %struct.dmcu* %19, %struct.dmcu** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %30, %1
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 65535, %24
  %26 = sdiv i32 %25, 15
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %20

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %5, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %5, i32 0, i32 0
  store i32 52428, i32* %35, align 8
  %36 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %5, i32 0, i32 1
  store i32 -858993460, i32* %36, align 4
  %37 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %5, i32 0, i32 2
  store i32 16, i32* %37, align 8
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %39 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %5, i32 0, i32 3
  store i32* %38, i32** %39, align 8
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CHIP_RAVEN, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %33
  %46 = load %struct.dmcu*, %struct.dmcu** %8, align 8
  %47 = call i32 @dmcu_load_iram(%struct.dmcu* %46, %struct.dmcu_iram_parameters* byval(%struct.dmcu_iram_parameters) align 8 %5)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %59

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @detect_mst_link_for_all_connectors(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @dmcu_load_iram(%struct.dmcu*, %struct.dmcu_iram_parameters* byval(%struct.dmcu_iram_parameters) align 8) #1

declare dso_local i32 @detect_mst_link_for_all_connectors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
