; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xiic.c_xiic_start_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xiic.c_xiic_start_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xiic_i2c = type { i32, i32, %struct.i2c_msg*, %struct.i2c_msg* }
%struct.i2c_msg = type { i64, i32 }

@XIIC_INTR_RX_FULL_MASK = common dso_local global i32 0, align 4
@XIIC_INTR_TX_ERROR_MASK = common dso_local global i32 0, align 4
@IIC_RX_FIFO_DEPTH = common dso_local global i64 0, align 8
@XIIC_RFD_REG_OFFSET = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@XIIC_DTR_REG_OFFSET = common dso_local global i32 0, align 4
@XIIC_TX_DYN_START_MASK = common dso_local global i32 0, align 4
@XIIC_INTR_BNB_MASK = common dso_local global i32 0, align 4
@XIIC_TX_DYN_STOP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xiic_i2c*)* @xiic_start_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xiic_start_recv(%struct.xiic_i2c* %0) #0 {
  %2 = alloca %struct.xiic_i2c*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i64, align 8
  store %struct.xiic_i2c* %0, %struct.xiic_i2c** %2, align 8
  %6 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %7 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %6, i32 0, i32 2
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %9 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %10 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %9, i32 0, i32 3
  store %struct.i2c_msg* %8, %struct.i2c_msg** %10, align 8
  store %struct.i2c_msg* %8, %struct.i2c_msg** %4, align 8
  %11 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %12 = load i32, i32* @XIIC_INTR_RX_FULL_MASK, align 4
  %13 = load i32, i32* @XIIC_INTR_TX_ERROR_MASK, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @xiic_irq_clr_en(%struct.xiic_i2c* %11, i32 %14)
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @IIC_RX_FIFO_DEPTH, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* @IIC_RX_FIFO_DEPTH, align 8
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %26 = load i32, i32* @XIIC_RFD_REG_OFFSET, align 4
  %27 = load i64, i64* %3, align 8
  %28 = sub nsw i64 %27, 1
  %29 = call i32 @xiic_setreg8(%struct.xiic_i2c* %25, i32 %26, i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @I2C_M_NOSTART, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %24
  %39 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %40 = load i32, i32* @XIIC_DTR_REG_OFFSET, align 4
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %42 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %41)
  %43 = load i32, i32* @XIIC_TX_DYN_START_MASK, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @xiic_setreg16(%struct.xiic_i2c* %39, i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %38, %24
  %47 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %48 = load i32, i32* @XIIC_INTR_BNB_MASK, align 4
  %49 = call i32 @xiic_irq_clr_en(%struct.xiic_i2c* %47, i32 %48)
  %50 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %51 = load i32, i32* @XIIC_DTR_REG_OFFSET, align 4
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %56 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* @XIIC_TX_DYN_STOP_MASK, align 4
  br label %62

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = sext i32 %63 to i64
  %65 = or i64 %54, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @xiic_setreg16(%struct.xiic_i2c* %50, i32 %51, i32 %66)
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @local_irq_restore(i64 %68)
  %70 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %71 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %76 = load i32, i32* @XIIC_INTR_BNB_MASK, align 4
  %77 = call i32 @xiic_irq_clr_en(%struct.xiic_i2c* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %62
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %84 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  ret void
}

declare dso_local i32 @xiic_irq_clr_en(%struct.xiic_i2c*, i32) #1

declare dso_local i32 @xiic_setreg8(%struct.xiic_i2c*, i32, i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @xiic_setreg16(%struct.xiic_i2c*, i32, i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
