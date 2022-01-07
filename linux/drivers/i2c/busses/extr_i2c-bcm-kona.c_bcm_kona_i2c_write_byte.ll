; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_i2c_dev = type { i32, i64, i32 }

@I2C_TIMEOUT = common dso_local global i32 0, align 4
@ISR_SES_DONE_MASK = common dso_local global i32 0, align 4
@ISR_OFFSET = common dso_local global i64 0, align 8
@IER_I2C_INT_EN_MASK = common dso_local global i32 0, align 4
@IER_OFFSET = common dso_local global i64 0, align 8
@DAT_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"controller timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CS_OFFSET = common dso_local global i64 0, align 8
@CS_ACK_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unexpected NAK/ACK\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_kona_i2c_dev*, i32, i32)* @bcm_kona_i2c_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_i2c_write_byte(%struct.bcm_kona_i2c_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_kona_i2c_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bcm_kona_i2c_dev* %0, %struct.bcm_kona_i2c_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @I2C_TIMEOUT, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  store i64 %12, i64* %9, align 8
  %13 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %14 = call i32 @bcm_kona_i2c_wait_if_busy(%struct.bcm_kona_i2c_dev* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %87

19:                                               ; preds = %3
  %20 = load i32, i32* @ISR_SES_DONE_MASK, align 4
  %21 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %22 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ISR_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load i32, i32* @IER_I2C_INT_EN_MASK, align 4
  %28 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %29 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IER_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %35 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %34, i32 0, i32 2
  %36 = call i32 @reinit_completion(i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %39 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DAT_OFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %45 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %44, i32 0, i32 2
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @wait_for_completion_timeout(i32* %45, i64 %46)
  store i64 %47, i64* %9, align 8
  %48 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %49 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IER_OFFSET, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 0, i64 %52)
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %19
  %57 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %58 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %87

63:                                               ; preds = %19
  %64 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %65 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CS_OFFSET, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readl(i64 %68)
  %70 = load i32, i32* @CS_ACK_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = xor i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %63
  %80 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %81 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EREMOTEIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %79, %56, %17
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bcm_kona_i2c_wait_if_busy(%struct.bcm_kona_i2c_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
