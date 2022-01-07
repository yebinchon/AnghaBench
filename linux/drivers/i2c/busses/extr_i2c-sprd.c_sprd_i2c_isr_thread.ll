; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_isr_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_isr_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_i2c = type { i32, i32, i32, i32, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@I2C_STATUS = common dso_local global i64 0, align 8
@I2C_RX_ACK = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_FIFO_FULL_THLD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sprd_i2c_isr_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_i2c_isr_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sprd_i2c*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sprd_i2c*
  store %struct.sprd_i2c* %11, %struct.sprd_i2c** %6, align 8
  %12 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %13 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %12, i32 0, i32 5
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  store %struct.i2c_msg* %14, %struct.i2c_msg** %7, align 8
  %15 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %16 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @I2C_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* @I2C_RX_ACK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I2C_M_RD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %34 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @I2C_FIFO_FULL_THLD, align 4
  %37 = icmp sge i32 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %9, align 4
  br label %43

39:                                               ; preds = %2
  %40 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %41 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %51 = call i32 @sprd_i2c_data_transfer(%struct.sprd_i2c* %50)
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %52, i32* %3, align 4
  br label %94

53:                                               ; preds = %46, %43
  %54 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %55 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %54, i32 0, i32 3
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  %61 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %62 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %85

63:                                               ; preds = %53
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @I2C_M_RD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %72 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %77 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %78 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %81 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @sprd_i2c_read_bytes(%struct.sprd_i2c* %76, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %75, %70, %63
  br label %85

85:                                               ; preds = %84, %58
  %86 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %87 = call i32 @sprd_i2c_clear_ack(%struct.sprd_i2c* %86)
  %88 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %89 = call i32 @sprd_i2c_clear_start(%struct.sprd_i2c* %88)
  %90 = load %struct.sprd_i2c*, %struct.sprd_i2c** %6, align 8
  %91 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %90, i32 0, i32 1
  %92 = call i32 @complete(i32* %91)
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %85, %49
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @sprd_i2c_data_transfer(%struct.sprd_i2c*) #1

declare dso_local i32 @sprd_i2c_read_bytes(%struct.sprd_i2c*, i32, i32) #1

declare dso_local i32 @sprd_i2c_clear_ack(%struct.sprd_i2c*) #1

declare dso_local i32 @sprd_i2c_clear_start(%struct.sprd_i2c*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
