; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx_gpu.c_a2xx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx_gpu.c_a2xx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_A2XX_MASTER_INT_SIGNAL = common dso_local global i32 0, align 4
@A2XX_MASTER_INT_SIGNAL_MH_INT_STAT = common dso_local global i32 0, align 4
@REG_A2XX_MH_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"MH_INT: %08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"MMU_PAGE_FAULT: %08X\0A\00", align 1
@REG_A2XX_MH_MMU_PAGE_FAULT = common dso_local global i32 0, align 4
@REG_A2XX_MH_INTERRUPT_CLEAR = common dso_local global i32 0, align 4
@A2XX_MASTER_INT_SIGNAL_CP_INT_STAT = common dso_local global i32 0, align 4
@REG_AXXX_CP_INT_STATUS = common dso_local global i32 0, align 4
@AXXX_CP_INT_CNTL_RB_INT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"CP_INT: %08X\0A\00", align 1
@REG_AXXX_CP_INT_ACK = common dso_local global i32 0, align 4
@A2XX_MASTER_INT_SIGNAL_RBBM_INT_STAT = common dso_local global i32 0, align 4
@REG_A2XX_RBBM_INT_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"RBBM_INT: %08X\0A\00", align 1
@REG_A2XX_RBBM_INT_ACK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a2xx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2xx_irq(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %5 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %6 = load i32, i32* @REG_A2XX_MASTER_INT_SIGNAL, align 4
  %7 = call i32 @gpu_read(%struct.msm_gpu* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @A2XX_MASTER_INT_SIGNAL_MH_INT_STAT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %14 = load i32, i32* @REG_A2XX_MH_INTERRUPT_STATUS, align 4
  %15 = call i32 @gpu_read(%struct.msm_gpu* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %17 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_warn(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %24 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %29 = load i32, i32* @REG_A2XX_MH_MMU_PAGE_FAULT, align 4
  %30 = call i32 @gpu_read(%struct.msm_gpu* %28, i32 %29)
  %31 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %33 = load i32, i32* @REG_A2XX_MH_INTERRUPT_CLEAR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @gpu_write(%struct.msm_gpu* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %12, %1
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @A2XX_MASTER_INT_SIGNAL_CP_INT_STAT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %43 = load i32, i32* @REG_AXXX_CP_INT_STATUS, align 4
  %44 = call i32 @gpu_read(%struct.msm_gpu* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @AXXX_CP_INT_CNTL_RB_INT_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %52 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %50, %41
  %59 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %60 = load i32, i32* @REG_AXXX_CP_INT_ACK, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @gpu_write(%struct.msm_gpu* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %36
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @A2XX_MASTER_INT_SIGNAL_RBBM_INT_STAT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %70 = load i32, i32* @REG_A2XX_RBBM_INT_STATUS, align 4
  %71 = call i32 @gpu_read(%struct.msm_gpu* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %73 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @dev_warn(i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %80 = load i32, i32* @REG_A2XX_RBBM_INT_ACK, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @gpu_write(%struct.msm_gpu* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %68, %63
  %84 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %85 = call i32 @msm_gpu_retire(%struct.msm_gpu* %84)
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %86
}

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @msm_gpu_retire(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
