; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_twi_read_next_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_twi_read_next_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_twi_dev = type { i32, i64*, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@AT91_TWI_RHR = common dso_local global i64 0, align 8
@I2C_M_RECV_LEN = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"received block length %zu\0A\00", align 1
@AT91_TWI_CR = common dso_local global i32 0, align 4
@AT91_TWI_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"read 0x%x, to go %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_twi_dev*)* @at91_twi_read_next_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_twi_read_next_byte(%struct.at91_twi_dev* %0) #0 {
  %2 = alloca %struct.at91_twi_dev*, align 8
  store %struct.at91_twi_dev* %0, %struct.at91_twi_dev** %2, align 8
  %3 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %4 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %9 = load i64, i64* @AT91_TWI_RHR, align 8
  %10 = call i32 @at91_twi_read(%struct.at91_twi_dev* %8, i64 %9)
  br label %125

11:                                               ; preds = %1
  %12 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %13 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AT91_TWI_RHR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @readb_relaxed(i64 %16)
  %18 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %19 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  store i64 %17, i64* %20, align 8
  %21 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %22 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %26 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  br label %125

30:                                               ; preds = %11
  %31 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %32 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %31, i32 0, i32 5
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %37 = and i32 %35, %36
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %94

40:                                               ; preds = %30
  %41 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %42 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %40
  %48 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %49 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %47
  %54 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %57 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %56, i32 0, i32 5
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %63 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %67 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %73 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  %76 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %77 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %76, i32 0, i32 5
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %81 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %84 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %86)
  br label %93

88:                                               ; preds = %47, %40
  %89 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %90 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %92 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %53
  br label %94

94:                                               ; preds = %93, %30
  %95 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %96 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %94
  %100 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %101 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %106 = load i32, i32* @AT91_TWI_CR, align 4
  %107 = load i32, i32* @AT91_TWI_STOP, align 4
  %108 = call i32 @at91_twi_write(%struct.at91_twi_dev* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %99, %94
  %110 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %111 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %114 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %118 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %116, i32 %119)
  %121 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %2, align 8
  %122 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i32 1
  store i64* %124, i64** %122, align 8
  br label %125

125:                                              ; preds = %109, %29, %7
  ret void
}

declare dso_local i32 @at91_twi_read(%struct.at91_twi_dev*, i64) #1

declare dso_local i64 @readb_relaxed(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @at91_twi_write(%struct.at91_twi_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
