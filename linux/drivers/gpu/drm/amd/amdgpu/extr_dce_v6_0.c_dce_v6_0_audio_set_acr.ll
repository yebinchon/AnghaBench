; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_audio_set_acr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_audio_set_acr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_afmt_acr = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@mmHDMI_ACR_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI_ACR_PACKET_CONTROL = common dso_local global i32 0, align 4
@HDMI_ACR_AUTO_SEND = common dso_local global i32 0, align 4
@HDMI_ACR_SOURCE = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32, i32)* @dce_v6_0_audio_set_acr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v6_0_audio_set_acr(%struct.drm_encoder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_afmt_acr, align 4
  %10 = alloca %struct.amdgpu_encoder*, align 8
  %11 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %8, align 8
  %19 = load i32, i32* %5, align 4
  call void @amdgpu_afmt_acr(%struct.amdgpu_afmt_acr* sret %9, i32 %19)
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %20)
  store %struct.amdgpu_encoder* %21, %struct.amdgpu_encoder** %10, align 8
  %22 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %23 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %22, i32 0, i32 0
  %24 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %23, align 8
  store %struct.amdgpu_encoder_atom_dig* %24, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %25 = load i64, i64* @mmHDMI_ACR_PACKET_CONTROL, align 8
  %26 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %27 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %25, %30
  %32 = call i32 @RREG32(i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @HDMI_ACR_PACKET_CONTROL, align 4
  %35 = load i32, i32* @HDMI_ACR_AUTO_SEND, align 4
  %36 = call i32 @REG_SET_FIELD(i32 %33, i32 %34, i32 %35, i32 1)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @HDMI_ACR_PACKET_CONTROL, align 4
  %39 = load i32, i32* @HDMI_ACR_SOURCE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 8
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 0, i32 1
  %44 = call i32 @REG_SET_FIELD(i32 %37, i32 %38, i32 %39, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i64, i64* @mmHDMI_ACR_PACKET_CONTROL, align 8
  %46 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %47 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %45, %50
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @WREG32(i64 %51, i32 %52)
  %54 = load i64, i64* @mmHDMI_ACR_32_0, align 8
  %55 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %56 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %54, %59
  %61 = call i32 @RREG32(i64 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @HDMI_ACR_32_0, align 4
  %64 = load i32, i32* @HDMI_ACR_CTS_32, align 4
  %65 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @REG_SET_FIELD(i32 %62, i32 %63, i32 %64, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i64, i64* @mmHDMI_ACR_32_0, align 8
  %69 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %70 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %68, %73
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @WREG32(i64 %74, i32 %75)
  %77 = load i64, i64* @mmHDMI_ACR_32_1, align 8
  %78 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %79 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %77, %82
  %84 = call i32 @RREG32(i64 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @HDMI_ACR_32_1, align 4
  %87 = load i32, i32* @HDMI_ACR_N_32, align 4
  %88 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %9, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @REG_SET_FIELD(i32 %85, i32 %86, i32 %87, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i64, i64* @mmHDMI_ACR_32_1, align 8
  %92 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %93 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %91, %96
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @WREG32(i64 %97, i32 %98)
  %100 = load i64, i64* @mmHDMI_ACR_44_0, align 8
  %101 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %102 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %100, %105
  %107 = call i32 @RREG32(i64 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @HDMI_ACR_44_0, align 4
  %110 = load i32, i32* @HDMI_ACR_CTS_44, align 4
  %111 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %9, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @REG_SET_FIELD(i32 %108, i32 %109, i32 %110, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i64, i64* @mmHDMI_ACR_44_0, align 8
  %115 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %116 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %114, %119
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @WREG32(i64 %120, i32 %121)
  %123 = load i64, i64* @mmHDMI_ACR_44_1, align 8
  %124 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %125 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %123, %128
  %130 = call i32 @RREG32(i64 %129)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @HDMI_ACR_44_1, align 4
  %133 = load i32, i32* @HDMI_ACR_N_44, align 4
  %134 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %9, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @REG_SET_FIELD(i32 %131, i32 %132, i32 %133, i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load i64, i64* @mmHDMI_ACR_44_1, align 8
  %138 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %139 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %137, %142
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @WREG32(i64 %143, i32 %144)
  %146 = load i64, i64* @mmHDMI_ACR_48_0, align 8
  %147 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %148 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %146, %151
  %153 = call i32 @RREG32(i64 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @HDMI_ACR_48_0, align 4
  %156 = load i32, i32* @HDMI_ACR_CTS_48, align 4
  %157 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %9, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @REG_SET_FIELD(i32 %154, i32 %155, i32 %156, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i64, i64* @mmHDMI_ACR_48_0, align 8
  %161 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %162 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %160, %165
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @WREG32(i64 %166, i32 %167)
  %169 = load i64, i64* @mmHDMI_ACR_48_1, align 8
  %170 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %171 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %169, %174
  %176 = call i32 @RREG32(i64 %175)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @HDMI_ACR_48_1, align 4
  %179 = load i32, i32* @HDMI_ACR_N_48, align 4
  %180 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %9, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @REG_SET_FIELD(i32 %177, i32 %178, i32 %179, i32 %181)
  store i32 %182, i32* %12, align 4
  %183 = load i64, i64* @mmHDMI_ACR_48_1, align 8
  %184 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %185 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %184, i32 0, i32 0
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %183, %188
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @WREG32(i64 %189, i32 %190)
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
