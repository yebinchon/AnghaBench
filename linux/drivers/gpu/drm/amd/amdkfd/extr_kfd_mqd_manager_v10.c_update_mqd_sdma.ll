; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_update_mqd_sdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_update_mqd_sdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 }
%struct.queue_properties = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i64 }
%struct.v10_sdma_mqd = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@SDMA0_RLC0_RB_CNTL__RB_SIZE__SHIFT = common dso_local global i32 0, align 4
@SDMA0_RLC0_RB_CNTL__RB_VMID__SHIFT = common dso_local global i32 0, align 4
@SDMA0_RLC0_RB_CNTL__RPTR_WRITEBACK_ENABLE__SHIFT = common dso_local global i32 0, align 4
@SDMA0_RLC0_RB_CNTL__RPTR_WRITEBACK_TIMER__SHIFT = common dso_local global i32 0, align 4
@SDMA0_RLC0_DOORBELL_OFFSET__OFFSET__SHIFT = common dso_local global i32 0, align 4
@SDMA_RLC_DUMMY_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8*, %struct.queue_properties*)* @update_mqd_sdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_mqd_sdma(%struct.mqd_manager* %0, i8* %1, %struct.queue_properties* %2) #0 {
  %4 = alloca %struct.mqd_manager*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.queue_properties*, align 8
  %7 = alloca %struct.v10_sdma_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.queue_properties* %2, %struct.queue_properties** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.v10_sdma_mqd* @get_sdma_mqd(i8* %8)
  store %struct.v10_sdma_mqd* %9, %struct.v10_sdma_mqd** %7, align 8
  %10 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %11 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32 @ffs(i32 %15)
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RB_SIZE__SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %21 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RB_VMID__SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %19, %24
  %26 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RPTR_WRITEBACK_ENABLE__SHIFT, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RPTR_WRITEBACK_TIMER__SHIFT, align 4
  %30 = shl i32 6, %29
  %31 = or i32 %28, %30
  %32 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %7, align 8
  %33 = getelementptr inbounds %struct.v10_sdma_mqd, %struct.v10_sdma_mqd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %35 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 8
  %38 = call i8* @lower_32_bits(i32 %37)
  %39 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %7, align 8
  %40 = getelementptr inbounds %struct.v10_sdma_mqd, %struct.v10_sdma_mqd* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %42 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 8
  %45 = call i8* @upper_32_bits(i32 %44)
  %46 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %7, align 8
  %47 = getelementptr inbounds %struct.v10_sdma_mqd, %struct.v10_sdma_mqd* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  %48 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %49 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i8* @lower_32_bits(i32 %51)
  %53 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %7, align 8
  %54 = getelementptr inbounds %struct.v10_sdma_mqd, %struct.v10_sdma_mqd* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  %55 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %56 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %55, i32 0, i32 9
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i8* @upper_32_bits(i32 %58)
  %60 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %7, align 8
  %61 = getelementptr inbounds %struct.v10_sdma_mqd, %struct.v10_sdma_mqd* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %63 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SDMA0_RLC0_DOORBELL_OFFSET__OFFSET__SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %7, align 8
  %68 = getelementptr inbounds %struct.v10_sdma_mqd, %struct.v10_sdma_mqd* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %70 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %7, align 8
  %73 = getelementptr inbounds %struct.v10_sdma_mqd, %struct.v10_sdma_mqd* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %75 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %7, align 8
  %78 = getelementptr inbounds %struct.v10_sdma_mqd, %struct.v10_sdma_mqd* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @SDMA_RLC_DUMMY_DEFAULT, align 4
  %80 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %7, align 8
  %81 = getelementptr inbounds %struct.v10_sdma_mqd, %struct.v10_sdma_mqd* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %83 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %3
  %87 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %88 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %93 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %98 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %96, %91, %86, %3
  %103 = phi i1 [ false, %91 ], [ false, %86 ], [ false, %3 ], [ %101, %96 ]
  %104 = zext i1 %103 to i32
  %105 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %106 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  ret void
}

declare dso_local %struct.v10_sdma_mqd* @get_sdma_mqd(i8*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
