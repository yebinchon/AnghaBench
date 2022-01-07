; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a3xx_gpu.c_a3xx_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a3xx_gpu.c_a3xx_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"CP_SCRATCH_REG%d: %u\0A\00", align 1
@REG_AXXX_CP_SCRATCH_REG0 = common dso_local global i64 0, align 8
@hang_debug = common dso_local global i64 0, align 8
@REG_A3XX_RBBM_SW_RESET_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a3xx_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a3xx_recover(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %4 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %5 = call i32 @adreno_dump_info(%struct.msm_gpu* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %12 = load i64, i64* @REG_AXXX_CP_SCRATCH_REG0, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = call i32 @gpu_read(%struct.msm_gpu* %11, i64 %15)
  %17 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %16)
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load i64, i64* @hang_debug, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %26 = call i32 @a3xx_dump(%struct.msm_gpu* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %29 = load i64, i64* @REG_A3XX_RBBM_SW_RESET_CMD, align 8
  %30 = call i32 @gpu_write(%struct.msm_gpu* %28, i64 %29, i32 1)
  %31 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %32 = load i64, i64* @REG_A3XX_RBBM_SW_RESET_CMD, align 8
  %33 = call i32 @gpu_read(%struct.msm_gpu* %31, i64 %32)
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %35 = load i64, i64* @REG_A3XX_RBBM_SW_RESET_CMD, align 8
  %36 = call i32 @gpu_write(%struct.msm_gpu* %34, i64 %35, i32 0)
  %37 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %38 = call i32 @adreno_recover(%struct.msm_gpu* %37)
  ret void
}

declare dso_local i32 @adreno_dump_info(%struct.msm_gpu*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i64) #1

declare dso_local i32 @a3xx_dump(%struct.msm_gpu*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i64, i32) #1

declare dso_local i32 @adreno_recover(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
