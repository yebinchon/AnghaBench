; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_twi_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_twi_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }
%struct.at91_twi_dev = type { i32, i64, i32*, i32, i32, %struct.i2c_msg*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"at91_xfer: processing %d messages:\0A\00", align 1
@AT91_TWI_IADRSZ_1 = common dso_local global i64 0, align 8
@AT91_TWI_IADR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@AT91_I2C_MAX_ALT_CMD_DATA_SIZE = common dso_local global i64 0, align 8
@AT91_TWI_CR = common dso_local global i32 0, align 4
@AT91_TWI_ACMEN = common dso_local global i32 0, align 4
@AT91_TWI_ACR = common dso_local global i32 0, align 4
@AT91_TWI_ACR_DIR = common dso_local global i32 0, align 4
@AT91_TWI_ACMDIS = common dso_local global i32 0, align 4
@AT91_TWI_MMR = common dso_local global i32 0, align 4
@AT91_TWI_MREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @at91_twi_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_twi_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.at91_twi_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_msg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %16 = call %struct.at91_twi_dev* @i2c_get_adapdata(%struct.i2c_adapter* %15)
  store %struct.at91_twi_dev* %16, %struct.at91_twi_dev** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  store %struct.i2c_msg* %17, %struct.i2c_msg** %10, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %23 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pm_runtime_get_sync(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %177

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %73

32:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i64 1
  store %struct.i2c_msg* %34, %struct.i2c_msg** %10, align 8
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %65, %32
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %44, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 8, %55
  %57 = shl i32 %54, %56
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i64, i64* @AT91_TWI_IADRSZ_1, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %41
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %35

68:                                               ; preds = %35
  %69 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %70 = load i32, i32* @AT91_TWI_IADR, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @at91_twi_write(%struct.at91_twi_dev* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %29
  %74 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %75 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @I2C_M_RD, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %11, align 4
  %81 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %82 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %81, i32 0, i32 6
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %128

87:                                               ; preds = %73
  %88 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %87
  %93 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @AT91_I2C_MAX_ALT_CMD_DATA_SIZE, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %92
  %100 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %101 = load i32, i32* @AT91_TWI_CR, align 4
  %102 = load i32, i32* @AT91_TWI_ACMEN, align 4
  %103 = call i32 @at91_twi_write(%struct.at91_twi_dev* %100, i32 %101, i32 %102)
  %104 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %105 = load i32, i32* @AT91_TWI_ACR, align 4
  %106 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = call i32 @AT91_TWI_ACR_DATAL(i64 %109)
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = load i32, i32* @AT91_TWI_ACR_DIR, align 4
  br label %116

115:                                              ; preds = %99
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ]
  %118 = or i32 %110, %117
  %119 = call i32 @at91_twi_write(%struct.at91_twi_dev* %104, i32 %105, i32 %118)
  %120 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %121 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  br label %127

122:                                              ; preds = %92, %87
  %123 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %124 = load i32, i32* @AT91_TWI_CR, align 4
  %125 = load i32, i32* @AT91_TWI_ACMDIS, align 4
  %126 = call i32 @at91_twi_write(%struct.at91_twi_dev* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %116
  br label %128

128:                                              ; preds = %127, %73
  %129 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %130 = load i32, i32* @AT91_TWI_MMR, align 4
  %131 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 16
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %138 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %128
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* @AT91_TWI_MREAD, align 4
  br label %147

146:                                              ; preds = %141, %128
  br label %147

147:                                              ; preds = %146, %144
  %148 = phi i32 [ %145, %144 ], [ 0, %146 ]
  %149 = or i32 %136, %148
  %150 = call i32 @at91_twi_write(%struct.at91_twi_dev* %129, i32 %130, i32 %149)
  %151 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %156 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  %157 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %158 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %161 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %160, i32 0, i32 2
  store i32* %159, i32** %161, align 8
  %162 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %163 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %164 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %163, i32 0, i32 5
  store %struct.i2c_msg* %162, %struct.i2c_msg** %164, align 8
  %165 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %166 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %165, i32 0, i32 3
  store i32 0, i32* %166, align 8
  %167 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %168 = call i32 @at91_do_twi_transfer(%struct.at91_twi_dev* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %147
  %172 = load i32, i32* %8, align 4
  br label %175

173:                                              ; preds = %147
  %174 = load i32, i32* %6, align 4
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32 [ %172, %171 ], [ %174, %173 ]
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %175, %28
  %178 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %179 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @pm_runtime_mark_last_busy(i32 %180)
  %182 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %7, align 8
  %183 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @pm_runtime_put_autosuspend(i32 %184)
  %186 = load i32, i32* %8, align 4
  ret i32 %186
}

declare dso_local %struct.at91_twi_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @at91_twi_write(%struct.at91_twi_dev*, i32, i32) #1

declare dso_local i32 @AT91_TWI_ACR_DATAL(i64) #1

declare dso_local i32 @at91_do_twi_transfer(%struct.at91_twi_dev*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
