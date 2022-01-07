; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_start_fe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_start_fe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i64 }

@VIVS_FE_COMMAND_ADDRESS = common dso_local global i32 0, align 4
@VIVS_FE_COMMAND_CONTROL = common dso_local global i32 0, align 4
@VIVS_FE_COMMAND_CONTROL_ENABLE = common dso_local global i32 0, align 4
@ETNA_SEC_KERNEL = common dso_local global i64 0, align 8
@VIVS_MMUv2_SEC_COMMAND_CONTROL = common dso_local global i32 0, align 4
@VIVS_MMUv2_SEC_COMMAND_CONTROL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etnaviv_gpu_start_fe(%struct.etnaviv_gpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %8 = load i32, i32* @VIVS_FE_COMMAND_ADDRESS, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @gpu_write(%struct.etnaviv_gpu* %7, i32 %8, i32 %9)
  %11 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %12 = load i32, i32* @VIVS_FE_COMMAND_CONTROL, align 4
  %13 = load i32, i32* @VIVS_FE_COMMAND_CONTROL_ENABLE, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @VIVS_FE_COMMAND_CONTROL_PREFETCH(i32 %14)
  %16 = or i32 %13, %15
  %17 = call i32 @gpu_write(%struct.etnaviv_gpu* %11, i32 %12, i32 %16)
  %18 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %19 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ETNA_SEC_KERNEL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %25 = load i32, i32* @VIVS_MMUv2_SEC_COMMAND_CONTROL, align 4
  %26 = load i32, i32* @VIVS_MMUv2_SEC_COMMAND_CONTROL_ENABLE, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @VIVS_MMUv2_SEC_COMMAND_CONTROL_PREFETCH(i32 %27)
  %29 = or i32 %26, %28
  %30 = call i32 @gpu_write(%struct.etnaviv_gpu* %24, i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %23, %3
  ret void
}

declare dso_local i32 @gpu_write(%struct.etnaviv_gpu*, i32, i32) #1

declare dso_local i32 @VIVS_FE_COMMAND_CONTROL_PREFETCH(i32) #1

declare dso_local i32 @VIVS_MMUv2_SEC_COMMAND_CONTROL_PREFETCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
