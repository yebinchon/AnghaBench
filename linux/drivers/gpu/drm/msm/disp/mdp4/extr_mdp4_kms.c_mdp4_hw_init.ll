; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_mdp4_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_mdp4_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.mdp4_kms = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REG_MDP4_VERSION = common dso_local global i32 0, align 4
@MDP4_VERSION_MAJOR = common dso_local global i32 0, align 4
@MDP4_VERSION_MINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"found MDP4 version v%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unexpected MDP version: v%d.%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@REG_MDP4_CS_CONTROLLER0 = common dso_local global i32 0, align 4
@REG_MDP4_CS_CONTROLLER1 = common dso_local global i32 0, align 4
@REG_MDP4_PORTMAP_MODE = common dso_local global i32 0, align 4
@REG_MDP4_READ_CNFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"fetch config: dmap=%02x, vg=%02x\00", align 1
@DMA_P = common dso_local global i32 0, align 4
@DMA_E = common dso_local global i32 0, align 4
@VG1 = common dso_local global i32 0, align 4
@VG2 = common dso_local global i32 0, align 4
@RGB1 = common dso_local global i32 0, align 4
@RGB2 = common dso_local global i32 0, align 4
@REG_MDP4_LAYERMIXER_IN_CFG_UPDATE_METHOD = common dso_local global i32 0, align 4
@REG_MDP4_LAYERMIXER_IN_CFG = common dso_local global i32 0, align 4
@REG_MDP4_DMA_P_OP_MODE = common dso_local global i32 0, align 4
@REG_MDP4_DMA_S_OP_MODE = common dso_local global i32 0, align 4
@REG_MDP4_RESET_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_kms*)* @mdp4_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp4_hw_init(%struct.msm_kms* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.mdp4_kms*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.msm_kms* %0, %struct.msm_kms** %2, align 8
  %12 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %13 = call i32 @to_mdp_kms(%struct.msm_kms* %12)
  %14 = call %struct.mdp4_kms* @to_mdp4_kms(i32 %13)
  store %struct.mdp4_kms* %14, %struct.mdp4_kms** %3, align 8
  %15 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %16 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %15, i32 0, i32 2
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %4, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_get_sync(i32 %20)
  %22 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %23 = call i32 @mdp4_enable(%struct.mdp4_kms* %22)
  %24 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %25 = load i32, i32* @REG_MDP4_VERSION, align 4
  %26 = call i32 @mdp4_read(%struct.mdp4_kms* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %28 = call i32 @mdp4_disable(%struct.mdp4_kms* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MDP4_VERSION_MAJOR, align 4
  %31 = call i32 @FIELD(i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MDP4_VERSION_MINOR, align 4
  %34 = call i32 @FIELD(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 4
  br i1 %39, label %40, label %49

40:                                               ; preds = %1
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @DRM_DEV_ERROR(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %162

49:                                               ; preds = %1
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %52 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %54 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %59 = load i32, i32* @REG_MDP4_CS_CONTROLLER0, align 4
  %60 = call i32 @mdp4_write(%struct.mdp4_kms* %58, i32 %59, i32 117964799)
  %61 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %62 = load i32, i32* @REG_MDP4_CS_CONTROLLER1, align 4
  %63 = call i32 @mdp4_write(%struct.mdp4_kms* %61, i32 %62, i32 50806591)
  br label %64

64:                                               ; preds = %57, %49
  %65 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %66 = load i32, i32* @REG_MDP4_PORTMAP_MODE, align 4
  %67 = call i32 @mdp4_write(%struct.mdp4_kms* %65, i32 %66, i32 3)
  %68 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %69 = load i32, i32* @REG_MDP4_READ_CNFG, align 4
  %70 = call i32 @mdp4_write(%struct.mdp4_kms* %68, i32 %69, i32 8738)
  %71 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %72 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @clk_get_rate(i32 %73)
  store i64 %74, i64* %10, align 8
  %75 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %76 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %64
  %80 = load i64, i64* %10, align 8
  %81 = icmp uge i64 %80, 90000000
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %64
  store i32 71, i32* %8, align 4
  store i32 71, i32* %9, align 4
  br label %84

83:                                               ; preds = %79
  store i32 39, i32* %8, align 4
  store i32 67, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %89 = load i32, i32* @DMA_P, align 4
  %90 = call i32 @REG_MDP4_DMA_FETCH_CONFIG(i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @mdp4_write(%struct.mdp4_kms* %88, i32 %90, i32 %91)
  %93 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %94 = load i32, i32* @DMA_E, align 4
  %95 = call i32 @REG_MDP4_DMA_FETCH_CONFIG(i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @mdp4_write(%struct.mdp4_kms* %93, i32 %95, i32 %96)
  %98 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %99 = load i32, i32* @VG1, align 4
  %100 = call i32 @REG_MDP4_PIPE_FETCH_CONFIG(i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @mdp4_write(%struct.mdp4_kms* %98, i32 %100, i32 %101)
  %103 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %104 = load i32, i32* @VG2, align 4
  %105 = call i32 @REG_MDP4_PIPE_FETCH_CONFIG(i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @mdp4_write(%struct.mdp4_kms* %103, i32 %105, i32 %106)
  %108 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %109 = load i32, i32* @RGB1, align 4
  %110 = call i32 @REG_MDP4_PIPE_FETCH_CONFIG(i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @mdp4_write(%struct.mdp4_kms* %108, i32 %110, i32 %111)
  %113 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %114 = load i32, i32* @RGB2, align 4
  %115 = call i32 @REG_MDP4_PIPE_FETCH_CONFIG(i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @mdp4_write(%struct.mdp4_kms* %113, i32 %115, i32 %116)
  %118 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %119 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sge i32 %120, 2
  br i1 %121, label %122, label %126

122:                                              ; preds = %84
  %123 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %124 = load i32, i32* @REG_MDP4_LAYERMIXER_IN_CFG_UPDATE_METHOD, align 4
  %125 = call i32 @mdp4_write(%struct.mdp4_kms* %123, i32 %124, i32 1)
  br label %126

126:                                              ; preds = %122, %84
  %127 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %128 = load i32, i32* @REG_MDP4_LAYERMIXER_IN_CFG, align 4
  %129 = call i32 @mdp4_write(%struct.mdp4_kms* %127, i32 %128, i32 0)
  %130 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %131 = load i32, i32* @VG1, align 4
  %132 = call i32 @REG_MDP4_PIPE_OP_MODE(i32 %131)
  %133 = call i32 @mdp4_write(%struct.mdp4_kms* %130, i32 %132, i32 0)
  %134 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %135 = load i32, i32* @VG2, align 4
  %136 = call i32 @REG_MDP4_PIPE_OP_MODE(i32 %135)
  %137 = call i32 @mdp4_write(%struct.mdp4_kms* %134, i32 %136, i32 0)
  %138 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %139 = load i32, i32* @REG_MDP4_DMA_P_OP_MODE, align 4
  %140 = call i32 @mdp4_write(%struct.mdp4_kms* %138, i32 %139, i32 0)
  %141 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %142 = load i32, i32* @REG_MDP4_DMA_S_OP_MODE, align 4
  %143 = call i32 @mdp4_write(%struct.mdp4_kms* %141, i32 %142, i32 0)
  %144 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %145 = call i32 @REG_MDP4_OVLP_CSC_CONFIG(i32 1)
  %146 = call i32 @mdp4_write(%struct.mdp4_kms* %144, i32 %145, i32 0)
  %147 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %148 = call i32 @REG_MDP4_OVLP_CSC_CONFIG(i32 2)
  %149 = call i32 @mdp4_write(%struct.mdp4_kms* %147, i32 %148, i32 0)
  %150 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %151 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %158

154:                                              ; preds = %126
  %155 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %156 = load i32, i32* @REG_MDP4_RESET_STATUS, align 4
  %157 = call i32 @mdp4_write(%struct.mdp4_kms* %155, i32 %156, i32 1)
  br label %158

158:                                              ; preds = %154, %126
  %159 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %160 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %40
  %163 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %164 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @pm_runtime_put_sync(i32 %165)
  %167 = load i32, i32* %11, align 4
  ret i32 %167
}

declare dso_local %struct.mdp4_kms* @to_mdp4_kms(i32) #1

declare dso_local i32 @to_mdp_kms(%struct.msm_kms*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mdp4_enable(%struct.mdp4_kms*) #1

declare dso_local i32 @mdp4_read(%struct.mdp4_kms*, i32) #1

declare dso_local i32 @mdp4_disable(%struct.mdp4_kms*) #1

declare dso_local i32 @FIELD(i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @REG_MDP4_DMA_FETCH_CONFIG(i32) #1

declare dso_local i32 @REG_MDP4_PIPE_FETCH_CONFIG(i32) #1

declare dso_local i32 @REG_MDP4_PIPE_OP_MODE(i32) #1

declare dso_local i32 @REG_MDP4_OVLP_CSC_CONFIG(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
