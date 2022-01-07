; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_afmt_update_ACR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_afmt_update_ACR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_afmt_acr = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@mmHDMI_ACR_32_0 = common dso_local global i64 0, align 8
@HDMI_ACR_32_0 = common dso_local global i32 0, align 4
@HDMI_ACR_CTS_32 = common dso_local global i32 0, align 4
@mmHDMI_ACR_32_1 = common dso_local global i64 0, align 8
@HDMI_ACR_32_1 = common dso_local global i32 0, align 4
@HDMI_ACR_N_32 = common dso_local global i32 0, align 4
@mmHDMI_ACR_44_0 = common dso_local global i64 0, align 8
@HDMI_ACR_44_0 = common dso_local global i32 0, align 4
@HDMI_ACR_CTS_44 = common dso_local global i32 0, align 4
@mmHDMI_ACR_44_1 = common dso_local global i64 0, align 8
@HDMI_ACR_44_1 = common dso_local global i32 0, align 4
@HDMI_ACR_N_44 = common dso_local global i32 0, align 4
@mmHDMI_ACR_48_0 = common dso_local global i64 0, align 8
@HDMI_ACR_48_0 = common dso_local global i32 0, align 4
@HDMI_ACR_CTS_48 = common dso_local global i32 0, align 4
@mmHDMI_ACR_48_1 = common dso_local global i64 0, align 8
@HDMI_ACR_48_1 = common dso_local global i32 0, align 4
@HDMI_ACR_N_48 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @dce_v11_0_afmt_update_ACR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_afmt_update_ACR(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_afmt_acr, align 4
  %8 = alloca %struct.amdgpu_encoder*, align 8
  %9 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %6, align 8
  %17 = load i32, i32* %4, align 4
  call void @amdgpu_afmt_acr(%struct.amdgpu_afmt_acr* sret %7, i32 %17)
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %18)
  store %struct.amdgpu_encoder* %19, %struct.amdgpu_encoder** %8, align 8
  %20 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %8, align 8
  %21 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %21, align 8
  store %struct.amdgpu_encoder_atom_dig* %22, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %23 = load i64, i64* @mmHDMI_ACR_32_0, align 8
  %24 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %25 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %23, %28
  %30 = call i32 @RREG32(i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @HDMI_ACR_32_0, align 4
  %33 = load i32, i32* @HDMI_ACR_CTS_32, align 4
  %34 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @REG_SET_FIELD(i32 %31, i32 %32, i32 %33, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i64, i64* @mmHDMI_ACR_32_0, align 8
  %38 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %39 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %37, %42
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @WREG32(i64 %43, i32 %44)
  %46 = load i64, i64* @mmHDMI_ACR_32_1, align 8
  %47 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %48 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %46, %51
  %53 = call i32 @RREG32(i64 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @HDMI_ACR_32_1, align 4
  %56 = load i32, i32* @HDMI_ACR_N_32, align 4
  %57 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @REG_SET_FIELD(i32 %54, i32 %55, i32 %56, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i64, i64* @mmHDMI_ACR_32_1, align 8
  %61 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %62 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %60, %65
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @WREG32(i64 %66, i32 %67)
  %69 = load i64, i64* @mmHDMI_ACR_44_0, align 8
  %70 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %71 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %69, %74
  %76 = call i32 @RREG32(i64 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @HDMI_ACR_44_0, align 4
  %79 = load i32, i32* @HDMI_ACR_CTS_44, align 4
  %80 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @REG_SET_FIELD(i32 %77, i32 %78, i32 %79, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i64, i64* @mmHDMI_ACR_44_0, align 8
  %84 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %85 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %83, %88
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @WREG32(i64 %89, i32 %90)
  %92 = load i64, i64* @mmHDMI_ACR_44_1, align 8
  %93 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %94 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %92, %97
  %99 = call i32 @RREG32(i64 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @HDMI_ACR_44_1, align 4
  %102 = load i32, i32* @HDMI_ACR_N_44, align 4
  %103 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @REG_SET_FIELD(i32 %100, i32 %101, i32 %102, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i64, i64* @mmHDMI_ACR_44_1, align 8
  %107 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %108 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %106, %111
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @WREG32(i64 %112, i32 %113)
  %115 = load i64, i64* @mmHDMI_ACR_48_0, align 8
  %116 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %117 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %115, %120
  %122 = call i32 @RREG32(i64 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @HDMI_ACR_48_0, align 4
  %125 = load i32, i32* @HDMI_ACR_CTS_48, align 4
  %126 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @REG_SET_FIELD(i32 %123, i32 %124, i32 %125, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i64, i64* @mmHDMI_ACR_48_0, align 8
  %130 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %131 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %129, %134
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @WREG32(i64 %135, i32 %136)
  %138 = load i64, i64* @mmHDMI_ACR_48_1, align 8
  %139 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %140 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %138, %143
  %145 = call i32 @RREG32(i64 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @HDMI_ACR_48_1, align 4
  %148 = load i32, i32* @HDMI_ACR_N_48, align 4
  %149 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %7, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @REG_SET_FIELD(i32 %146, i32 %147, i32 %148, i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load i64, i64* @mmHDMI_ACR_48_1, align 8
  %153 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %9, align 8
  %154 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %152, %157
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @WREG32(i64 %158, i32 %159)
  ret void
}

declare dso_local void @amdgpu_afmt_acr(%struct.amdgpu_afmt_acr* sret, i32) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
