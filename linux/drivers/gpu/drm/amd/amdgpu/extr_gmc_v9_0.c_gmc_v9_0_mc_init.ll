; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_mc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i64 (%struct.amdgpu_device*)* }
%struct.TYPE_4__ = type { {}* }

@amdgpu_emu_mode = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@amdgpu_gart_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v9_0_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v9_0_mc_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 2048, i32* %13, align 8
  br label %24

14:                                               ; preds = %1
  %15 = load i32, i32* @amdgpu_emu_mode, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = call i32 @amdgpu_atomfirmware_get_vram_width(%struct.amdgpu_device* %18)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  br label %23

23:                                               ; preds = %17, %14
  br label %24

24:                                               ; preds = %23, %10
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %24
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AMD_IS_APU, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 64, i32* %4, align 4
  br label %39

38:                                               ; preds = %30
  store i32 128, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 5
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.amdgpu_device*)**
  %45 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %44, align 8
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = call i32 %45(%struct.amdgpu_device* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  br label %54

54:                                               ; preds = %39, %24
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64 (%struct.amdgpu_device*)*, i64 (%struct.amdgpu_device*)** %58, align 8
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = call i64 %59(%struct.amdgpu_device* %60)
  %62 = mul i64 %61, 1024
  %63 = mul i64 %62, 1024
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i64 %70, i64* %73, align 8
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AMD_IS_APU, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %54
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = call i32 @amdgpu_device_resize_fb_bar(%struct.amdgpu_device* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %156

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %54
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pci_resource_start(i32 %91, i32 0)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 6
  store i32 %92, i32* %95, align 8
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @pci_resource_len(i32 %98, i32 0)
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  store i64 %99, i64* %102, align 8
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  store i64 %106, i64* %109, align 8
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ugt i64 %113, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %88
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  store i64 %123, i64* %126, align 8
  br label %127

127:                                              ; preds = %119, %88
  %128 = load i32, i32* @amdgpu_gart_size, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  switch i32 %133, label %135 [
    i32 130, label %134
    i32 129, label %134
    i32 128, label %134
    i32 133, label %134
    i32 132, label %139
    i32 131, label %139
  ]

134:                                              ; preds = %130, %130, %130, %130
  br label %135

135:                                              ; preds = %130, %134
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 5
  store i64 536870912, i64* %138, align 8
  br label %143

139:                                              ; preds = %130, %130
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %141 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 5
  store i64 1073741824, i64* %142, align 8
  br label %143

143:                                              ; preds = %139, %135
  br label %151

144:                                              ; preds = %127
  %145 = load i32, i32* @amdgpu_gart_size, align 4
  %146 = shl i32 %145, 20
  %147 = sext i32 %146 to i64
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 5
  store i64 %147, i64* %150, align 8
  br label %151

151:                                              ; preds = %144, %143
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 2
  %155 = call i32 @gmc_v9_0_vram_gtt_location(%struct.amdgpu_device* %152, %struct.TYPE_6__* %154)
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %151, %85
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_atomfirmware_get_vram_width(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_resize_fb_bar(%struct.amdgpu_device*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local i32 @gmc_v9_0_vram_gtt_location(%struct.amdgpu_device*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
