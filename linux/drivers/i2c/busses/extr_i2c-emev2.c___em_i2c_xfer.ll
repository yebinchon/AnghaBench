; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c___em_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c___em_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }
%struct.em_i2c_device = type { i64 }

@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_BIT_ACKE0 = common dso_local global i32 0, align 4
@I2C_BIT_WTIM0 = common dso_local global i32 0, align 4
@I2C_OFS_IICC0 = common dso_local global i32 0, align 4
@I2C_BIT_STT0 = common dso_local global i32 0, align 4
@I2C_OFS_IIC0 = common dso_local global i64 0, align 8
@I2C_BIT_ACKD0 = common dso_local global i32 0, align 4
@I2C_BIT_WREL0 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @__em_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__em_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.em_i2c_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.em_i2c_device* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.em_i2c_device* %13, %struct.em_i2c_device** %8, align 8
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @I2C_M_RD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %24 = load i32, i32* @I2C_BIT_ACKE0, align 4
  %25 = load i32, i32* @I2C_BIT_WTIM0, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @I2C_OFS_IICC0, align 4
  %28 = call i32 @em_clear_set_bit(%struct.em_i2c_device* %23, i32 0, i32 %26, i32 %27)
  %29 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %30 = load i32, i32* @I2C_BIT_STT0, align 4
  %31 = load i32, i32* @I2C_OFS_IICC0, align 4
  %32 = call i32 @em_clear_set_bit(%struct.em_i2c_device* %29, i32 0, i32 %30, i32 %31)
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %34 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %33)
  %35 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %36 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @I2C_OFS_IIC0, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writeb(i32 %34, i64 %39)
  %41 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %42 = call i32 @em_i2c_wait_for_event(%struct.em_i2c_device* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  br label %141

46:                                               ; preds = %3
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @I2C_BIT_ACKD0, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %53 = call i32 @em_i2c_stop(%struct.em_i2c_device* %52)
  br label %144

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %59 = load i32, i32* @I2C_BIT_WTIM0, align 4
  %60 = load i32, i32* @I2C_BIT_ACKE0, align 4
  %61 = load i32, i32* @I2C_OFS_IICC0, align 4
  %62 = call i32 @em_clear_set_bit(%struct.em_i2c_device* %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %64 = load i32, i32* @I2C_BIT_WTIM0, align 4
  %65 = load i32, i32* @I2C_BIT_WREL0, align 4
  %66 = load i32, i32* @I2C_OFS_IICC0, align 4
  %67 = call i32 @em_clear_set_bit(%struct.em_i2c_device* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %69 = call i32 @em_i2c_wait_for_event(%struct.em_i2c_device* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %141

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73, %54
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %130, %74
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %133

81:                                               ; preds = %75
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %86 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @I2C_OFS_IIC0, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readb(i64 %89)
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  %97 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %98 = load i32, i32* @I2C_BIT_WREL0, align 4
  %99 = load i32, i32* @I2C_OFS_IICC0, align 4
  %100 = call i32 @em_clear_set_bit(%struct.em_i2c_device* %97, i32 0, i32 %98, i32 %99)
  br label %123

101:                                              ; preds = %81
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @I2C_BIT_ACKD0, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %108 = call i32 @em_i2c_stop(%struct.em_i2c_device* %107)
  br label %144

109:                                              ; preds = %101
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %118 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @I2C_OFS_IIC0, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writeb(i32 %116, i64 %121)
  br label %123

123:                                              ; preds = %109, %84
  %124 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %125 = call i32 @em_i2c_wait_for_event(%struct.em_i2c_device* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %141

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %75

133:                                              ; preds = %75
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.em_i2c_device*, %struct.em_i2c_device** %8, align 8
  %138 = call i32 @em_i2c_stop(%struct.em_i2c_device* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %4, align 4
  br label %154

141:                                              ; preds = %128, %72, %45
  %142 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %143 = call i32 @em_i2c_reset(%struct.i2c_adapter* %142)
  br label %144

144:                                              ; preds = %141, %106, %51
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* %10, align 4
  br label %152

149:                                              ; preds = %144
  %150 = load i32, i32* @ENXIO, align 4
  %151 = sub nsw i32 0, %150
  br label %152

152:                                              ; preds = %149, %147
  %153 = phi i32 [ %148, %147 ], [ %151, %149 ]
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %152, %139
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local %struct.em_i2c_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @em_clear_set_bit(%struct.em_i2c_device*, i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @em_i2c_wait_for_event(%struct.em_i2c_device*) #1

declare dso_local i32 @em_i2c_stop(%struct.em_i2c_device*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @em_i2c_reset(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
