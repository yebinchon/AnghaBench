; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_common.c_qce_config_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_common.c_qce_config_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qce_device = type { i32, i32 }

@REQ_SIZE_SHIFT = common dso_local global i32 0, align 4
@REQ_SIZE_MASK = common dso_local global i32 0, align 4
@MASK_DOUT_INTR_SHIFT = common dso_local global i32 0, align 4
@MASK_DIN_INTR_SHIFT = common dso_local global i32 0, align 4
@MASK_OP_DONE_INTR_SHIFT = common dso_local global i32 0, align 4
@MASK_ERR_INTR_SHIFT = common dso_local global i32 0, align 4
@PIPE_SET_SELECT_SHIFT = common dso_local global i32 0, align 4
@PIPE_SET_SELECT_MASK = common dso_local global i32 0, align 4
@HIGH_SPD_EN_N_SHIFT = common dso_local global i32 0, align 4
@LITTLE_ENDIAN_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qce_device*, i32)* @qce_config_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_config_reg(%struct.qce_device* %0, i32 %1) #0 {
  %3 = alloca %struct.qce_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qce_device* %0, %struct.qce_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %9 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 3
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %14 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @REQ_SIZE_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @REQ_SIZE_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @MASK_DOUT_INTR_SHIFT, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* @MASK_DIN_INTR_SHIFT, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* @MASK_OP_DONE_INTR_SHIFT, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = or i32 %25, %27
  %29 = load i32, i32* @MASK_ERR_INTR_SHIFT, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = or i32 %28, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PIPE_SET_SELECT_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @PIPE_SET_SELECT_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @HIGH_SPD_EN_N_SHIFT, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load i32, i32* @LITTLE_ENDIAN_MODE_SHIFT, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %2
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
