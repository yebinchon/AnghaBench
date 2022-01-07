; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cht-wc.c_cht_wc_i2c_adap_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cht-wc.c_cht_wc_i2c_adap_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.cht_wc_i2c_adap = type { i32, i32, i32, i32, i32, i32 }

@CHT_WC_I2C_CLIENT_ADDR = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@CHT_WC_I2C_WRDATA = common dso_local global i32 0, align 4
@CHT_WC_I2C_REG_OFFSET = common dso_local global i32 0, align 4
@CHT_WC_I2C_CTRL = common dso_local global i32 0, align 4
@CHT_WC_I2C_CTRL_WR = common dso_local global i32 0, align 4
@CHT_WC_I2C_CTRL_RD = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @cht_wc_i2c_adap_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_wc_i2c_adap_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.cht_wc_i2c_adap*, align 8
  %17 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %19 = call %struct.cht_wc_i2c_adap* @i2c_get_adapdata(%struct.i2c_adapter* %18)
  store %struct.cht_wc_i2c_adap* %19, %struct.cht_wc_i2c_adap** %16, align 8
  %20 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %21 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %24 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %26 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %28 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %27, i32 0, i32 2
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %31 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CHT_WC_I2C_CLIENT_ADDR, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @regmap_write(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %7
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %8, align 4
  br label %143

40:                                               ; preds = %7
  %41 = load i8, i8* %12, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %48 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CHT_WC_I2C_WRDATA, align 4
  %51 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %52 = bitcast %union.i2c_smbus_data* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @regmap_write(i32 %49, i32 %50, i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %8, align 4
  br label %143

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %40
  %61 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %62 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CHT_WC_I2C_REG_OFFSET, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @regmap_write(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %8, align 4
  br label %143

71:                                               ; preds = %60
  %72 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %73 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CHT_WC_I2C_CTRL, align 4
  %76 = load i8, i8* %12, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* @CHT_WC_I2C_CTRL_WR, align 4
  br label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @CHT_WC_I2C_CTRL_RD, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = call i32 @regmap_write(i32 %74, i32 %75, i32 %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %8, align 4
  br label %143

92:                                               ; preds = %85
  %93 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %94 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %97 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @msecs_to_jiffies(i32 30)
  %100 = call i32 @wait_event_timeout(i32 %95, i32 %98, i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %92
  %104 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %105 = call i32 @cht_wc_i2c_adap_thread_handler(i32 0, %struct.cht_wc_i2c_adap* %104)
  %106 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %107 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @ETIMEDOUT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %8, align 4
  br label %143

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %92
  store i32 0, i32* %17, align 4
  %115 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %116 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %115, i32 0, i32 2
  %117 = call i32 @mutex_lock(i32* %116)
  %118 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %119 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %17, align 4
  br label %138

125:                                              ; preds = %114
  %126 = load i8, i8* %12, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8, i8* @I2C_SMBUS_READ, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %133 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %136 = bitcast %union.i2c_smbus_data* %135 to i32*
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %131, %125
  br label %138

138:                                              ; preds = %137, %122
  %139 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %16, align 8
  %140 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %139, i32 0, i32 2
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load i32, i32* %17, align 4
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %138, %110, %90, %69, %57, %38
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local %struct.cht_wc_i2c_adap* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cht_wc_i2c_adap_thread_handler(i32, %struct.cht_wc_i2c_adap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
