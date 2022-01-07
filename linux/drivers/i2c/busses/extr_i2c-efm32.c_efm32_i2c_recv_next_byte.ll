; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-efm32.c_efm32_i2c_recv_next_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-efm32.c_efm32_i2c_recv_next_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efm32_i2c_ddata = type { i64, i64, i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i32* }

@REG_RXDATA = common dso_local global i32 0, align 4
@REG_CMD = common dso_local global i32 0, align 4
@REG_CMD_NACK = common dso_local global i32 0, align 4
@REG_CMD_STOP = common dso_local global i32 0, align 4
@REG_CMD_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efm32_i2c_ddata*)* @efm32_i2c_recv_next_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efm32_i2c_recv_next_byte(%struct.efm32_i2c_ddata* %0) #0 {
  %2 = alloca %struct.efm32_i2c_ddata*, align 8
  %3 = alloca %struct.i2c_msg*, align 8
  store %struct.efm32_i2c_ddata* %0, %struct.efm32_i2c_ddata** %2, align 8
  %4 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %5 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %4, i32 0, i32 4
  %6 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %7 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %8 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i64 %9
  store %struct.i2c_msg* %10, %struct.i2c_msg** %3, align 8
  %11 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %12 = load i32, i32* @REG_RXDATA, align 4
  %13 = call i32 @efm32_i2c_read32(%struct.efm32_i2c_ddata* %11, i32 %12)
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %18 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %13, i32* %20, align 4
  %21 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %22 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %26 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp uge i64 %27, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %1
  %34 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %35 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %37 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %41 = load i32, i32* @REG_CMD, align 4
  %42 = load i32, i32* @REG_CMD_NACK, align 4
  %43 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %40, i32 %41, i32 %42)
  %44 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %45 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %48 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp uge i64 %46, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %33
  %53 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %54 = load i32, i32* @REG_CMD, align 4
  %55 = load i32, i32* @REG_CMD_STOP, align 4
  %56 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %53, i32 %54, i32 %55)
  %57 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %58 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %57, i32 0, i32 3
  %59 = call i32 @complete(i32* %58)
  br label %63

60:                                               ; preds = %33
  %61 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %62 = call i32 @efm32_i2c_send_next_msg(%struct.efm32_i2c_ddata* %61)
  br label %63

63:                                               ; preds = %60, %52
  br label %69

64:                                               ; preds = %1
  %65 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %2, align 8
  %66 = load i32, i32* @REG_CMD, align 4
  %67 = load i32, i32* @REG_CMD_ACK, align 4
  %68 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %63
  ret void
}

declare dso_local i32 @efm32_i2c_read32(%struct.efm32_i2c_ddata*, i32) #1

declare dso_local i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @efm32_i2c_send_next_msg(%struct.efm32_i2c_ddata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
