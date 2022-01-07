; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.TYPE_2__, %struct.cdns_i2c* }
%struct.TYPE_2__ = type { i32 }
%struct.cdns_i2c = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i32 }

@CDNS_I2C_SR_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_SR_BA = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CDNS_I2C_BROKEN_HOLD_BIT = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Can't do repeated start after a receive message\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CDNS_I2C_CR_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_CR_HOLD = common dso_local global i32 0, align 4
@CDNS_I2C_IXR_NACK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @cdns_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cdns_i2c*, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 1
  %15 = load %struct.cdns_i2c*, %struct.cdns_i2c** %14, align 8
  store %struct.cdns_i2c* %15, %struct.cdns_i2c** %11, align 8
  %16 = load %struct.cdns_i2c*, %struct.cdns_i2c** %11, align 8
  %17 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm_runtime_get_sync(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %151

24:                                               ; preds = %3
  %25 = load i32, i32* @CDNS_I2C_SR_OFFSET, align 4
  %26 = call i32 @cdns_i2c_readreg(i32 %25)
  %27 = load i32, i32* @CDNS_I2C_SR_BA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %141

33:                                               ; preds = %24
  %34 = load %struct.cdns_i2c*, %struct.cdns_i2c** %11, align 8
  %35 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CDNS_I2C_BROKEN_HOLD_BIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %89

45:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %75, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i1 [ false, %46 ], [ %53, %51 ]
  br i1 %55, label %56, label %78

56:                                               ; preds = %54
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i64 %59
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @I2C_M_RD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_warn(i32 %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %141

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %46

78:                                               ; preds = %54
  %79 = load %struct.cdns_i2c*, %struct.cdns_i2c** %11, align 8
  %80 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %82 = call i32 @cdns_i2c_readreg(i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* @CDNS_I2C_CR_HOLD, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %88 = call i32 @cdns_i2c_writereg(i32 %86, i32 %87)
  br label %92

89:                                               ; preds = %33
  %90 = load %struct.cdns_i2c*, %struct.cdns_i2c** %11, align 8
  %91 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %78
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %134, %92
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %139

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 1
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.cdns_i2c*, %struct.cdns_i2c** %11, align 8
  %104 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.cdns_i2c*, %struct.cdns_i2c** %11, align 8
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %108 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %109 = call i32 @cdns_i2c_process_msg(%struct.cdns_i2c* %106, %struct.i2c_msg* %107, %struct.i2c_adapter* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %141

113:                                              ; preds = %105
  %114 = load %struct.cdns_i2c*, %struct.cdns_i2c** %11, align 8
  %115 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %113
  %119 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %120 = call i32 @cdns_i2c_master_reset(%struct.i2c_adapter* %119)
  %121 = load %struct.cdns_i2c*, %struct.cdns_i2c** %11, align 8
  %122 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CDNS_I2C_IXR_NACK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load i32, i32* @ENXIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %8, align 4
  br label %141

130:                                              ; preds = %118
  %131 = load i32, i32* @EIO, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %8, align 4
  br label %141

133:                                              ; preds = %113
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  %137 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %138 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %137, i32 1
  store %struct.i2c_msg* %138, %struct.i2c_msg** %6, align 8
  br label %93

139:                                              ; preds = %93
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %139, %130, %127, %112, %66, %30
  %142 = load %struct.cdns_i2c*, %struct.cdns_i2c** %11, align 8
  %143 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pm_runtime_mark_last_busy(i32 %144)
  %146 = load %struct.cdns_i2c*, %struct.cdns_i2c** %11, align 8
  %147 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @pm_runtime_put_autosuspend(i32 %148)
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %141, %22
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @cdns_i2c_readreg(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @cdns_i2c_writereg(i32, i32) #1

declare dso_local i32 @cdns_i2c_process_msg(%struct.cdns_i2c*, %struct.i2c_msg*, %struct.i2c_adapter*) #1

declare dso_local i32 @cdns_i2c_master_reset(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
