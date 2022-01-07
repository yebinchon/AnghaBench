; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_send_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_send_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stu300_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32 }

@I2C_M_TEN = common dso_local global i32 0, align 4
@I2C_DR_D_MASK = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"read resend\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"write resend\0A\00", align 1
@I2C_DR = common dso_local global i64 0, align 8
@STU300_EVENT_9 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"await event 6\0A\00", align 1
@STU300_EVENT_6 = common dso_local global i32 0, align 4
@I2C_CR = common dso_local global i64 0, align 8
@I2C_CR_PERIPHERAL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stu300_dev*, %struct.i2c_msg*, i32)* @stu300_send_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_send_address(%struct.stu300_dev* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stu300_dev*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stu300_dev* %0, %struct.stu300_dev** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_M_TEN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 768
  %21 = ashr i32 %20, 7
  %22 = or i32 240, %21
  %23 = load i32, i32* @I2C_DR_D_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I2C_M_RD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %16
  br label %38

35:                                               ; preds = %3
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @I2C_M_RD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %50 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %60

54:                                               ; preds = %41
  %55 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %56 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %64 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @I2C_DR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @stu300_wr8(i32 %62, i64 %67)
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @I2C_M_TEN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %61
  %76 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %77 = load i32, i32* @STU300_EVENT_9, align 4
  %78 = call i32 @stu300_await_event(%struct.stu300_dev* %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @I2C_DR_D_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %86 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @I2C_DR, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @stu300_wr8(i32 %84, i64 %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %75
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %126

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95, %61
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %101 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %99, %96
  %106 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %107 = load i32, i32* @STU300_EVENT_6, align 4
  %108 = call i32 @stu300_await_event(%struct.stu300_dev* %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %110 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @I2C_CR, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @stu300_r8(i64 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* @I2C_CR_PERIPHERAL_ENABLE, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %120 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @I2C_CR, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @stu300_wr8(i32 %118, i64 %123)
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %105, %93
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @stu300_wr8(i32, i64) #1

declare dso_local i32 @stu300_await_event(%struct.stu300_dev*, i32) #1

declare dso_local i32 @stu300_r8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
