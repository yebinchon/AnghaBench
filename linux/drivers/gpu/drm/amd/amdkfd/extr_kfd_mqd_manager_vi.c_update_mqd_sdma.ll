; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_vi.c_update_mqd_sdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_vi.c_update_mqd_sdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 }
%struct.queue_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vi_sdma_mqd = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@SDMA0_RLC0_RB_CNTL__RB_SIZE__SHIFT = common dso_local global i32 0, align 4
@SDMA0_RLC0_RB_CNTL__RB_VMID__SHIFT = common dso_local global i32 0, align 4
@SDMA0_RLC0_RB_CNTL__RPTR_WRITEBACK_ENABLE__SHIFT = common dso_local global i32 0, align 4
@SDMA0_RLC0_RB_CNTL__RPTR_WRITEBACK_TIMER__SHIFT = common dso_local global i32 0, align 4
@SDMA0_RLC0_DOORBELL__OFFSET__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8*, %struct.queue_properties*)* @update_mqd_sdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_mqd_sdma(%struct.mqd_manager* %0, i8* %1, %struct.queue_properties* %2) #0 {
  %4 = alloca %struct.mqd_manager*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.queue_properties*, align 8
  %7 = alloca %struct.vi_sdma_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.queue_properties* %2, %struct.queue_properties** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.vi_sdma_mqd* @get_sdma_mqd(i8* %8)
  store %struct.vi_sdma_mqd* %9, %struct.vi_sdma_mqd** %7, align 8
  %10 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %11 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sdiv i32 %12, 4
  %14 = call i32 @order_base_2(i32 %13)
  %15 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RB_SIZE__SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %18 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RB_VMID__SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %16, %21
  %23 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RPTR_WRITEBACK_ENABLE__SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RPTR_WRITEBACK_TIMER__SHIFT, align 4
  %27 = shl i32 6, %26
  %28 = or i32 %25, %27
  %29 = load %struct.vi_sdma_mqd*, %struct.vi_sdma_mqd** %7, align 8
  %30 = getelementptr inbounds %struct.vi_sdma_mqd, %struct.vi_sdma_mqd* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %32 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 8
  %35 = call i8* @lower_32_bits(i32 %34)
  %36 = load %struct.vi_sdma_mqd*, %struct.vi_sdma_mqd** %7, align 8
  %37 = getelementptr inbounds %struct.vi_sdma_mqd, %struct.vi_sdma_mqd* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  %38 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %39 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %40, 8
  %42 = call i8* @upper_32_bits(i32 %41)
  %43 = load %struct.vi_sdma_mqd*, %struct.vi_sdma_mqd** %7, align 8
  %44 = getelementptr inbounds %struct.vi_sdma_mqd, %struct.vi_sdma_mqd* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %46 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i8* @lower_32_bits(i32 %48)
  %50 = load %struct.vi_sdma_mqd*, %struct.vi_sdma_mqd** %7, align 8
  %51 = getelementptr inbounds %struct.vi_sdma_mqd, %struct.vi_sdma_mqd* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %53 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i8* @upper_32_bits(i32 %55)
  %57 = load %struct.vi_sdma_mqd*, %struct.vi_sdma_mqd** %7, align 8
  %58 = getelementptr inbounds %struct.vi_sdma_mqd, %struct.vi_sdma_mqd* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %60 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SDMA0_RLC0_DOORBELL__OFFSET__SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.vi_sdma_mqd*, %struct.vi_sdma_mqd** %7, align 8
  %65 = getelementptr inbounds %struct.vi_sdma_mqd, %struct.vi_sdma_mqd* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %67 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vi_sdma_mqd*, %struct.vi_sdma_mqd** %7, align 8
  %70 = getelementptr inbounds %struct.vi_sdma_mqd, %struct.vi_sdma_mqd* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %72 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vi_sdma_mqd*, %struct.vi_sdma_mqd** %7, align 8
  %75 = getelementptr inbounds %struct.vi_sdma_mqd, %struct.vi_sdma_mqd* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %77 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vi_sdma_mqd*, %struct.vi_sdma_mqd** %7, align 8
  %80 = getelementptr inbounds %struct.vi_sdma_mqd, %struct.vi_sdma_mqd* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %82 = call i32 @QUEUE_IS_ACTIVE(%struct.queue_properties* byval(%struct.queue_properties) align 8 %81)
  %83 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %84 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  ret void
}

declare dso_local %struct.vi_sdma_mqd* @get_sdma_mqd(i8*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @QUEUE_IS_ACTIVE(%struct.queue_properties* byval(%struct.queue_properties) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
