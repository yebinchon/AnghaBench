; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_config_mmuv2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_config_mmuv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { %struct.TYPE_2__, i32, %struct.etnaviv_cmdbuf }
%struct.TYPE_2__ = type { i32 }
%struct.etnaviv_cmdbuf = type { i32 }

@chipFeatures_PIPE_3D = common dso_local global i32 0, align 4
@VIVS_GL_PIPE_SELECT = common dso_local global i32 0, align 4
@ETNA_PIPE_3D = common dso_local global i32 0, align 4
@VIVS_MMUv2_CONFIGURATION = common dso_local global i32 0, align 4
@VIVS_MMUv2_CONFIGURATION_MODE_MODE4_K = common dso_local global i32 0, align 4
@VIVS_MMUv2_SAFE_ADDRESS = common dso_local global i32 0, align 4
@SYNC_RECIPIENT_FE = common dso_local global i32 0, align 4
@SYNC_RECIPIENT_PE = common dso_local global i32 0, align 4
@chipFeatures_PIPE_2D = common dso_local global i32 0, align 4
@ETNA_PIPE_2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_buffer_config_mmuv2(%struct.etnaviv_gpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.etnaviv_cmdbuf*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %9 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %8, i32 0, i32 2
  store %struct.etnaviv_cmdbuf* %9, %struct.etnaviv_cmdbuf** %7, align 8
  %10 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %11 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %10, i32 0, i32 1
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %14 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @chipFeatures_PIPE_3D, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %3
  %23 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %24 = load i32, i32* @VIVS_GL_PIPE_SELECT, align 4
  %25 = load i32, i32* @ETNA_PIPE_3D, align 4
  %26 = call i32 @VIVS_GL_PIPE_SELECT_PIPE(i32 %25)
  %27 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %23, i32 %24, i32 %26)
  %28 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %29 = load i32, i32* @VIVS_MMUv2_CONFIGURATION, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @VIVS_MMUv2_CONFIGURATION_MODE_MODE4_K, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %28, i32 %29, i32 %32)
  %34 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %35 = load i32, i32* @VIVS_MMUv2_SAFE_ADDRESS, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %34, i32 %35, i32 %36)
  %38 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %39 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %40 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %41 = call i32 @CMD_SEM(%struct.etnaviv_cmdbuf* %38, i32 %39, i32 %40)
  %42 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %43 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %44 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %45 = call i32 @CMD_STALL(%struct.etnaviv_cmdbuf* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %22, %3
  %47 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %48 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @chipFeatures_PIPE_2D, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %46
  %55 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %56 = load i32, i32* @VIVS_GL_PIPE_SELECT, align 4
  %57 = load i32, i32* @ETNA_PIPE_2D, align 4
  %58 = call i32 @VIVS_GL_PIPE_SELECT_PIPE(i32 %57)
  %59 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %55, i32 %56, i32 %58)
  %60 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %61 = load i32, i32* @VIVS_MMUv2_CONFIGURATION, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @VIVS_MMUv2_CONFIGURATION_MODE_MODE4_K, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %60, i32 %61, i32 %64)
  %66 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %67 = load i32, i32* @VIVS_MMUv2_SAFE_ADDRESS, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %66, i32 %67, i32 %68)
  %70 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %71 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %72 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %73 = call i32 @CMD_SEM(%struct.etnaviv_cmdbuf* %70, i32 %71, i32 %72)
  %74 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %75 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %76 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %77 = call i32 @CMD_STALL(%struct.etnaviv_cmdbuf* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %54, %46
  %79 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %80 = call i32 @CMD_END(%struct.etnaviv_cmdbuf* %79)
  %81 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %82 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ALIGN(i32 %83, i32 8)
  %85 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %86 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %7, align 8
  %88 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %89, 8
  ret i32 %90
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @VIVS_GL_PIPE_SELECT_PIPE(i32) #1

declare dso_local i32 @CMD_SEM(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @CMD_STALL(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @CMD_END(%struct.etnaviv_cmdbuf*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
