; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_gcm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_gcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GCM_CTR_INIT = common dso_local global i32 0, align 4
@CRYP_CR = common dso_local global i32 0, align 4
@CR_PH_INIT = common dso_local global i32 0, align 4
@CR_CRYPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Timeout (gcm init)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_cryp*, i32)* @stm32_cryp_gcm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_gcm_init(%struct.stm32_cryp* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_cryp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %8 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(i32* %7, i32 %12, i32 12)
  %14 = load i32, i32* @GCM_CTR_INIT, align 4
  %15 = call i32 @cpu_to_be32(i32 %14)
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @GCM_CTR_INIT, align 4
  %18 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %19 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %22 = call i32 @stm32_cryp_hw_write_iv(%struct.stm32_cryp* %20, i32* %21)
  %23 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %24 = load i32, i32* @CRYP_CR, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @CR_PH_INIT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CR_CRYPEN, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %23, i32 %24, i32 %29)
  %31 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %32 = call i32 @stm32_cryp_wait_enable(%struct.stm32_cryp* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %37 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %2
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @stm32_cryp_hw_write_iv(%struct.stm32_cryp*, i32*) #1

declare dso_local i32 @stm32_cryp_write(%struct.stm32_cryp*, i32, i32) #1

declare dso_local i32 @stm32_cryp_wait_enable(%struct.stm32_cryp*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
