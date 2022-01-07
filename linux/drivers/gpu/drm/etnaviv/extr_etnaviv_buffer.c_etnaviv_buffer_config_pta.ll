; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_config_pta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_config_pta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, %struct.etnaviv_cmdbuf }
%struct.etnaviv_cmdbuf = type { i32 }

@VIVS_MMUv2_PTA_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_buffer_config_pta(%struct.etnaviv_gpu* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.etnaviv_cmdbuf*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %7 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %6, i32 0, i32 1
  store %struct.etnaviv_cmdbuf* %7, %struct.etnaviv_cmdbuf** %5, align 8
  %8 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %9 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %8, i32 0, i32 0
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %12 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %14 = load i32, i32* @VIVS_MMUv2_PTA_CONFIG, align 4
  %15 = load i16, i16* %4, align 2
  %16 = call i32 @VIVS_MMUv2_PTA_CONFIG_INDEX(i16 zeroext %15)
  %17 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %13, i32 %14, i32 %16)
  %18 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %19 = call i32 @CMD_END(%struct.etnaviv_cmdbuf* %18)
  %20 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %21 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ALIGN(i32 %22, i32 8)
  %24 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %25 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %27 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 8
  ret i32 %29
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @VIVS_MMUv2_PTA_CONFIG_INDEX(i16 zeroext) #1

declare dso_local i32 @CMD_END(%struct.etnaviv_cmdbuf*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
