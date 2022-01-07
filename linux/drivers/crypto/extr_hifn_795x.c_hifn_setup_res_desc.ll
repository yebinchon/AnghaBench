; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_setup_res_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_setup_res_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32, i64 }
%struct.hifn_dma = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@HIFN_USED_RESULT = common dso_local global i32 0, align 4
@HIFN_D_VALID = common dso_local global i32 0, align 4
@HIFN_D_LAST = common dso_local global i32 0, align 4
@HIFN_D_RES_RSIZE = common dso_local global i64 0, align 8
@HIFN_D_JUMP = common dso_local global i32 0, align 4
@HIFN_D_MASKDONEIRQ = common dso_local global i32 0, align 4
@HIFN_FLAG_RES_BUSY = common dso_local global i32 0, align 4
@HIFN_1_DMA_CSR = common dso_local global i32 0, align 4
@HIFN_DMACSR_R_CTRL_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_device*)* @hifn_setup_res_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_setup_res_desc(%struct.hifn_device* %0) #0 {
  %2 = alloca %struct.hifn_device*, align 8
  %3 = alloca %struct.hifn_dma*, align 8
  store %struct.hifn_device* %0, %struct.hifn_device** %2, align 8
  %4 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %5 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.hifn_dma*
  store %struct.hifn_dma* %7, %struct.hifn_dma** %3, align 8
  %8 = load i32, i32* @HIFN_USED_RESULT, align 4
  %9 = load i32, i32* @HIFN_D_VALID, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @HIFN_D_LAST, align 4
  %12 = or i32 %10, %11
  %13 = call i8* @__cpu_to_le32(i32 %12)
  %14 = load %struct.hifn_dma*, %struct.hifn_dma** %3, align 8
  %15 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.hifn_dma*, %struct.hifn_dma** %3, align 8
  %18 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %13, i8** %21, align 8
  %22 = load %struct.hifn_dma*, %struct.hifn_dma** %3, align 8
  %23 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* @HIFN_D_RES_RSIZE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = load i32, i32* @HIFN_D_VALID, align 4
  %30 = load i32, i32* @HIFN_D_JUMP, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @HIFN_D_LAST, align 4
  %35 = or i32 %33, %34
  %36 = call i8* @__cpu_to_le32(i32 %35)
  %37 = load %struct.hifn_dma*, %struct.hifn_dma** %3, align 8
  %38 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* @HIFN_D_RES_RSIZE, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i8* %36, i8** %42, align 8
  %43 = load %struct.hifn_dma*, %struct.hifn_dma** %3, align 8
  %44 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %28, %1
  %46 = load %struct.hifn_dma*, %struct.hifn_dma** %3, align 8
  %47 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %51 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @HIFN_FLAG_RES_BUSY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %45
  %57 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %58 = load i32, i32* @HIFN_1_DMA_CSR, align 4
  %59 = load i32, i32* @HIFN_DMACSR_R_CTRL_ENA, align 4
  %60 = call i32 @hifn_write_1(%struct.hifn_device* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @HIFN_FLAG_RES_BUSY, align 4
  %62 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %63 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %56, %45
  ret void
}

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @hifn_write_1(%struct.hifn_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
