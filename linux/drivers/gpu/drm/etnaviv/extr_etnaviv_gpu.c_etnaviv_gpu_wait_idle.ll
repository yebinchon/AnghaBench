; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_wait_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@VIVS_HI_IDLE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"timed out waiting for idle: idle=0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_gpu_wait_idle(%struct.etnaviv_gpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @msecs_to_jiffies(i32 %9)
  %11 = add i64 %8, %10
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %40, %2
  %13 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %14 = load i32, i32* @VIVS_HI_IDLE_STATE, align 4
  %15 = call i32 @gpu_read(%struct.etnaviv_gpu* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %18 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  %21 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %22 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %41

26:                                               ; preds = %12
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @time_is_before_jiffies(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %32 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dev_warn(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %26
  %39 = call i32 @udelay(i32 5)
  br label %40

40:                                               ; preds = %38
  br i1 true, label %12, label %41

41:                                               ; preds = %25, %30, %40
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
