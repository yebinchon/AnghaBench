; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dce110_register_irq_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dce110_register_irq_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.common_irq_params*, %struct.common_irq_params*, %struct.common_irq_params*, %struct.dc* }
%struct.common_irq_params = type { i64, %struct.amdgpu_device* }
%struct.dc = type { i32 }
%struct.dc_interrupt_params = type { i64, i8*, i8*, i8*, i32 }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@CHIP_VEGA10 = common dso_local global i64 0, align 8
@SOC15_IH_CLIENTID_DCE = common dso_local global i32 0, align 4
@INTERRUPT_POLARITY_DEFAULT = common dso_local global i8* null, align 8
@VISLANDS30_IV_SRCID_D1_VERTICAL_INTERRUPT0 = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_D6_VERTICAL_INTERRUPT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to add crtc irq id!\0A\00", align 1
@INTERRUPT_HIGH_IRQ_CONTEXT = common dso_local global i8* null, align 8
@DC_IRQ_SOURCE_VBLANK1 = common dso_local global i64 0, align 8
@dm_crtc_high_irq = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_D1_V_UPDATE_INT = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_D6_V_UPDATE_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to add vupdate irq id!\0A\00", align 1
@DC_IRQ_SOURCE_VUPDATE1 = common dso_local global i64 0, align 8
@dm_vupdate_high_irq = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_D1_GRPH_PFLIP = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_D6_GRPH_PFLIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to add page flip irq id!\0A\00", align 1
@DC_IRQ_SOURCE_PFLIP_FIRST = common dso_local global i64 0, align 8
@dm_pflip_high_irq = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_HOTPLUG_DETECT_A = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to add hpd irq id!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @dce110_register_irq_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce110_register_irq_handlers(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.common_irq_params*, align 8
  %6 = alloca %struct.dc_interrupt_params, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load %struct.dc*, %struct.dc** %12, align 8
  store %struct.dc* %13, %struct.dc** %4, align 8
  %14 = bitcast %struct.dc_interrupt_params* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHIP_VEGA10, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @SOC15_IH_CLIENTID_DCE, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %21, %1
  %24 = load i8*, i8** @INTERRUPT_POLARITY_DEFAULT, align 8
  %25 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** @INTERRUPT_POLARITY_DEFAULT, align 8
  %27 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @VISLANDS30_IV_SRCID_D1_VERTICAL_INTERRUPT0, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %73, %23
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @VISLANDS30_IV_SRCID_D6_VERTICAL_INTERRUPT0, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %29
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 5
  %39 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %34, i32 %35, i32 %36, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %189

45:                                               ; preds = %33
  %46 = load i8*, i8** @INTERRUPT_HIGH_IRQ_CONTEXT, align 8
  %47 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load %struct.dc*, %struct.dc** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @dc_interrupt_to_irq_source(%struct.dc* %48, i32 %49, i32 0)
  %51 = ptrtoint i8* %50 to i64
  %52 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load %struct.common_irq_params*, %struct.common_irq_params** %55, align 8
  %57 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DC_IRQ_SOURCE_VBLANK1, align 8
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %struct.common_irq_params, %struct.common_irq_params* %56, i64 %60
  store %struct.common_irq_params* %61, %struct.common_irq_params** %5, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = load %struct.common_irq_params*, %struct.common_irq_params** %5, align 8
  %64 = getelementptr inbounds %struct.common_irq_params, %struct.common_irq_params* %63, i32 0, i32 1
  store %struct.amdgpu_device* %62, %struct.amdgpu_device** %64, align 8
  %65 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.common_irq_params*, %struct.common_irq_params** %5, align 8
  %68 = getelementptr inbounds %struct.common_irq_params, %struct.common_irq_params* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %70 = load i32, i32* @dm_crtc_high_irq, align 4
  %71 = load %struct.common_irq_params*, %struct.common_irq_params** %5, align 8
  %72 = call i32 @amdgpu_dm_irq_register_interrupt(%struct.amdgpu_device* %69, %struct.dc_interrupt_params* %6, i32 %70, %struct.common_irq_params* %71)
  br label %73

73:                                               ; preds = %45
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %29

76:                                               ; preds = %29
  %77 = load i32, i32* @VISLANDS30_IV_SRCID_D1_V_UPDATE_INT, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %122, %76
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @VISLANDS30_IV_SRCID_D6_V_UPDATE_INT, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %125

82:                                               ; preds = %78
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 4
  %88 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %83, i32 %84, i32 %85, i32* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %189

94:                                               ; preds = %82
  %95 = load i8*, i8** @INTERRUPT_HIGH_IRQ_CONTEXT, align 8
  %96 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 1
  store i8* %95, i8** %96, align 8
  %97 = load %struct.dc*, %struct.dc** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i8* @dc_interrupt_to_irq_source(%struct.dc* %97, i32 %98, i32 0)
  %100 = ptrtoint i8* %99 to i64
  %101 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load %struct.common_irq_params*, %struct.common_irq_params** %104, align 8
  %106 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @DC_IRQ_SOURCE_VUPDATE1, align 8
  %109 = sub i64 %107, %108
  %110 = getelementptr inbounds %struct.common_irq_params, %struct.common_irq_params* %105, i64 %109
  store %struct.common_irq_params* %110, %struct.common_irq_params** %5, align 8
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %112 = load %struct.common_irq_params*, %struct.common_irq_params** %5, align 8
  %113 = getelementptr inbounds %struct.common_irq_params, %struct.common_irq_params* %112, i32 0, i32 1
  store %struct.amdgpu_device* %111, %struct.amdgpu_device** %113, align 8
  %114 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.common_irq_params*, %struct.common_irq_params** %5, align 8
  %117 = getelementptr inbounds %struct.common_irq_params, %struct.common_irq_params* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %119 = load i32, i32* @dm_vupdate_high_irq, align 4
  %120 = load %struct.common_irq_params*, %struct.common_irq_params** %5, align 8
  %121 = call i32 @amdgpu_dm_irq_register_interrupt(%struct.amdgpu_device* %118, %struct.dc_interrupt_params* %6, i32 %119, %struct.common_irq_params* %120)
  br label %122

122:                                              ; preds = %94
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 2
  store i32 %124, i32* %8, align 4
  br label %78

125:                                              ; preds = %78
  %126 = load i32, i32* @VISLANDS30_IV_SRCID_D1_GRPH_PFLIP, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %171, %125
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @VISLANDS30_IV_SRCID_D6_GRPH_PFLIP, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %174

131:                                              ; preds = %127
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 3
  %137 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %132, i32 %133, i32 %134, i32* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %2, align 4
  br label %189

143:                                              ; preds = %131
  %144 = load i8*, i8** @INTERRUPT_HIGH_IRQ_CONTEXT, align 8
  %145 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 1
  store i8* %144, i8** %145, align 8
  %146 = load %struct.dc*, %struct.dc** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i8* @dc_interrupt_to_irq_source(%struct.dc* %146, i32 %147, i32 0)
  %149 = ptrtoint i8* %148 to i64
  %150 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 0
  store i64 %149, i64* %150, align 8
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load %struct.common_irq_params*, %struct.common_irq_params** %153, align 8
  %155 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @DC_IRQ_SOURCE_PFLIP_FIRST, align 8
  %158 = sub i64 %156, %157
  %159 = getelementptr inbounds %struct.common_irq_params, %struct.common_irq_params* %154, i64 %158
  store %struct.common_irq_params* %159, %struct.common_irq_params** %5, align 8
  %160 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %161 = load %struct.common_irq_params*, %struct.common_irq_params** %5, align 8
  %162 = getelementptr inbounds %struct.common_irq_params, %struct.common_irq_params* %161, i32 0, i32 1
  store %struct.amdgpu_device* %160, %struct.amdgpu_device** %162, align 8
  %163 = getelementptr inbounds %struct.dc_interrupt_params, %struct.dc_interrupt_params* %6, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.common_irq_params*, %struct.common_irq_params** %5, align 8
  %166 = getelementptr inbounds %struct.common_irq_params, %struct.common_irq_params* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %168 = load i32, i32* @dm_pflip_high_irq, align 4
  %169 = load %struct.common_irq_params*, %struct.common_irq_params** %5, align 8
  %170 = call i32 @amdgpu_dm_irq_register_interrupt(%struct.amdgpu_device* %167, %struct.dc_interrupt_params* %6, i32 %168, %struct.common_irq_params* %169)
  br label %171

171:                                              ; preds = %143
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %8, align 4
  br label %127

174:                                              ; preds = %127
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @VISLANDS30_IV_SRCID_HOTPLUG_DETECT_A, align 4
  %178 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %179 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %178, i32 0, i32 1
  %180 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %175, i32 %176, i32 %177, i32* %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %174
  %184 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %2, align 4
  br label %189

186:                                              ; preds = %174
  %187 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %188 = call i32 @register_hpd_handlers(%struct.amdgpu_device* %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %186, %183, %140, %91, %42
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #2

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local i8* @dc_interrupt_to_irq_source(%struct.dc*, i32, i32) #2

declare dso_local i32 @amdgpu_dm_irq_register_interrupt(%struct.amdgpu_device*, %struct.dc_interrupt_params*, i32, %struct.common_irq_params*) #2

declare dso_local i32 @register_hpd_handlers(%struct.amdgpu_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
