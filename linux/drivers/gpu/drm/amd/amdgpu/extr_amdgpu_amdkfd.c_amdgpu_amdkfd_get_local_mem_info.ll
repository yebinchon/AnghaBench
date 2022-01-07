; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_get_local_mem_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_get_local_mem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.kfd_local_mem_info = type { i32, i64, i64, i32 }
%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i64* }

@.str = private unnamed_addr constant [60 x i8] c"Address base: %pap limit %pap public 0x%llx private 0x%llx\0A\00", align 1
@amdgpu_emu_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_amdkfd_get_local_mem_info(%struct.kgd_dev* %0, %struct.kfd_local_mem_info* %1) #0 {
  %3 = alloca %struct.kgd_dev*, align 8
  %4 = alloca %struct.kfd_local_mem_info*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %3, align 8
  store %struct.kfd_local_mem_info* %1, %struct.kfd_local_mem_info** %4, align 8
  %8 = load %struct.kgd_dev*, %struct.kgd_dev** %3, align 8
  %9 = bitcast %struct.kgd_dev* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %5, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %21, align 8
  %23 = xor i64 %22, -1
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi i64 [ %23, %16 ], [ -4294967296, %24 ]
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %31, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %38 = call i32 @memset(%struct.kfd_local_mem_info* %37, i32 0, i32 32)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %25
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %46
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %57 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %61, %65
  %67 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %68 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %78

69:                                               ; preds = %46, %25
  %70 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %71 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %77 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %69, %51
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %84 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %89 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %92 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32* %87, i32* %7, i64 %90, i64 %93)
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %96 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %78
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sdiv i32 %102, 100
  %104 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %105 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %129

106:                                              ; preds = %78
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load i32, i32* @amdgpu_emu_mode, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %117 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  br label %124

118:                                              ; preds = %112
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %120 = call i32 @amdgpu_dpm_get_mclk(%struct.amdgpu_device* %119, i32 0)
  %121 = sdiv i32 %120, 100
  %122 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %123 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %118, %115
  br label %128

125:                                              ; preds = %106
  %126 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %4, align 8
  %127 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %126, i32 0, i32 0
  store i32 100, i32* %127, align 8
  br label %128

128:                                              ; preds = %125, %124
  br label %129

129:                                              ; preds = %128, %98
  ret void
}

declare dso_local i32 @memset(%struct.kfd_local_mem_info*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32*, i32*, i64, i64) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_dpm_get_mclk(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
