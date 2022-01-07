; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_dump_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_dump_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, %struct.msm_ringbuffer** }
%struct.msm_ringbuffer = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.adreno_gpu = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"revision: %d (%d.%d.%d.%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"rb %d: fence:    %d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"rptr:     %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"rb wptr:  %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adreno_dump_info(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %7 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %6)
  store %struct.adreno_gpu* %7, %struct.adreno_gpu** %3, align 8
  %8 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %9 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %14 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %18 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %22 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %26 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %20, i32 %24, i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %61, %1
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %33 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %38 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %37, i32 0, i32 1
  %39 = load %struct.msm_ringbuffer**, %struct.msm_ringbuffer*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %39, i64 %41
  %43 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %42, align 8
  store %struct.msm_ringbuffer* %43, %struct.msm_ringbuffer** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %46 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %51 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %49, i32 %52)
  %54 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %55 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %56 = call i32 @get_rptr(%struct.adreno_gpu* %54, %struct.msm_ringbuffer* %55)
  %57 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %59 = call i32 @get_wptr(%struct.msm_ringbuffer* %58)
  %60 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %36
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %30

64:                                               ; preds = %30
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @get_rptr(%struct.adreno_gpu*, %struct.msm_ringbuffer*) #1

declare dso_local i32 @get_wptr(%struct.msm_ringbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
