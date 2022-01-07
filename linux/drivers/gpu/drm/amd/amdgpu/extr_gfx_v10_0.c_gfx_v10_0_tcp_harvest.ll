; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_tcp_harvest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_tcp_harvest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CHIP_NAVI10 = common dso_local global i64 0, align 8
@CHIP_NAVI14 = common dso_local global i64 0, align 8
@CHIP_NAVI12 = common dso_local global i64 0, align 8
@GC = common dso_local global i32 0, align 4
@mmUTCL1_UTCL0_INVREQ_DISABLE = common dso_local global i32 0, align 4
@mmGCRD_SA_TARGETS_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v10_0_tcp_harvest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_tcp_harvest(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 2, %19
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = add nsw i32 %22, 4
  %24 = call i32 @amdgpu_gfx_create_bitmask(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 2, %25
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %26, %28
  %30 = add nsw i32 %29, 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @amdgpu_gfx_create_bitmask(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHIP_NAVI10, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %1
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHIP_NAVI14, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHIP_NAVI12, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %157

50:                                               ; preds = %44, %38, %1
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %148, %50
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %55, %60
  br i1 %61, label %62, label %151

62:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %144, %62
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %64, %69
  br i1 %70, label %71, label %147

71:                                               ; preds = %63
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @gfx_v10_0_select_se_sh(%struct.amdgpu_device* %72, i32 %73, i32 %74, i32 -1)
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %77 = call i32 @gfx_v10_0_get_wgp_active_bitmap_per_sh(%struct.amdgpu_device* %76)
  store i32 %77, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %106, %71
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %5, align 4
  %85 = shl i32 1, %84
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %5, align 4
  %90 = mul nsw i32 2, %89
  %91 = shl i32 3, %90
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %5, align 4
  %95 = mul nsw i32 2, %94
  %96 = shl i32 3, %95
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %97, %98
  %100 = mul nsw i32 2, %99
  %101 = shl i32 3, %100
  %102 = or i32 %96, %101
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %88, %82
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %78

109:                                              ; preds = %78
  %110 = load i32, i32* @GC, align 4
  %111 = load i32, i32* @mmUTCL1_UTCL0_INVREQ_DISABLE, align 4
  %112 = call i32 @RREG32_SOC15(i32 %110, i32 0, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %6, align 4
  %114 = mul nsw i32 4, %113
  %115 = shl i32 -1, %114
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %12, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* @GC, align 4
  %124 = load i32, i32* @mmUTCL1_UTCL0_INVREQ_DISABLE, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @WREG32_SOC15(i32 %123, i32 0, i32 %124, i32 %125)
  %127 = load i32, i32* @GC, align 4
  %128 = load i32, i32* @mmGCRD_SA_TARGETS_DISABLE, align 4
  %129 = call i32 @RREG32_SOC15(i32 %127, i32 0, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %6, align 4
  %131 = mul nsw i32 2, %130
  %132 = shl i32 -1, %131
  %133 = load i32, i32* %7, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %11, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* @GC, align 4
  %141 = load i32, i32* @mmGCRD_SA_TARGETS_DISABLE, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @WREG32_SOC15(i32 %140, i32 0, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %109
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %63

147:                                              ; preds = %63
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  br label %54

151:                                              ; preds = %54
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %153 = call i32 @gfx_v10_0_select_se_sh(%struct.amdgpu_device* %152, i32 -1, i32 -1, i32 -1)
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 1
  %156 = call i32 @mutex_unlock(i32* %155)
  br label %157

157:                                              ; preds = %151, %44
  ret void
}

declare dso_local i32 @amdgpu_gfx_create_bitmask(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v10_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_get_wgp_active_bitmap_per_sh(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
