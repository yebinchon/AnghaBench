; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }

@REG_A4XX_RBBM_INT_0_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: Int status %08x\00", align 1
@A4XX_INT0_CP_REG_PROTECT_FAULT = common dso_local global i32 0, align 4
@REG_A4XX_CP_PROTECT_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"CP | Protected mode error| %s | addr=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@REG_A4XX_RBBM_INT_CLEAR_CMD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a4xx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a4xx_irq(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %5 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %6 = load i32, i32* @REG_A4XX_RBBM_INT_0_STATUS, align 4
  %7 = call i32 @gpu_read(%struct.msm_gpu* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %9 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @A4XX_INT0_CP_REG_PROTECT_FAULT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %19 = load i32, i32* @REG_A4XX_CP_PROTECT_STATUS, align 4
  %20 = call i32 @gpu_read(%struct.msm_gpu* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 16777216
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 1048575
  %28 = ashr i32 %27, 2
  %29 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %28)
  br label %30

30:                                               ; preds = %17, %1
  %31 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %32 = load i32, i32* @REG_A4XX_RBBM_INT_CLEAR_CMD, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @gpu_write(%struct.msm_gpu* %31, i32 %32, i32 %33)
  %35 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %36 = call i32 @msm_gpu_retire(%struct.msm_gpu* %35)
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %37
}

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @printk(i8*, i8*, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @msm_gpu_retire(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
