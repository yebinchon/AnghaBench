; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_irq_handler_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_irq_handler_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i32 }

@DW_IC_INTR_STAT = common dso_local global i32 0, align 4
@DW_IC_ENABLE = common dso_local global i32 0, align 4
@DW_IC_RAW_INTR_STAT = common dso_local global i32 0, align 4
@DW_IC_STATUS = common dso_local global i32 0, align 4
@DW_IC_STATUS_SLAVE_ACTIVITY = common dso_local global i32 0, align 4
@DW_IC_INTR_ACTIVITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"%#x STATUS SLAVE_ACTIVITY=%#x : RAW_INTR_STAT=%#x : INTR_STAT=%#x\0A\00", align 1
@DW_IC_INTR_RX_FULL = common dso_local global i32 0, align 4
@DW_IC_INTR_STOP_DET = common dso_local global i32 0, align 4
@I2C_SLAVE_WRITE_REQUESTED = common dso_local global i32 0, align 4
@DW_IC_INTR_RD_REQ = common dso_local global i32 0, align 4
@DW_IC_DATA_CMD = common dso_local global i32 0, align 4
@I2C_SLAVE_WRITE_RECEIVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Byte %X acked!\00", align 1
@DW_IC_CLR_RD_REQ = common dso_local global i32 0, align 4
@DW_IC_CLR_RX_UNDER = common dso_local global i32 0, align 4
@I2C_SLAVE_READ_REQUESTED = common dso_local global i32 0, align 4
@DW_IC_INTR_RX_DONE = common dso_local global i32 0, align 4
@I2C_SLAVE_READ_PROCESSED = common dso_local global i32 0, align 4
@DW_IC_CLR_RX_DONE = common dso_local global i32 0, align 4
@I2C_SLAVE_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i2c_dev*)* @i2c_dw_irq_handler_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_irq_handler_slave(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  %9 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %10 = load i32, i32* @DW_IC_INTR_STAT, align 4
  %11 = call i32 @dw_readl(%struct.dw_i2c_dev* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %13 = load i32, i32* @DW_IC_ENABLE, align 4
  %14 = call i32 @dw_readl(%struct.dw_i2c_dev* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %16 = load i32, i32* @DW_IC_RAW_INTR_STAT, align 4
  %17 = call i32 @dw_readl(%struct.dw_i2c_dev* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %19 = load i32, i32* @DW_IC_STATUS, align 4
  %20 = call i32 @dw_readl(%struct.dw_i2c_dev* %18, i32 %19)
  %21 = load i32, i32* @DW_IC_STATUS_SLAVE_ACTIVITY, align 4
  %22 = and i32 %20, %21
  %23 = ashr i32 %22, 6
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DW_IC_INTR_ACTIVITY, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %34 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %26, %1
  store i32 0, i32* %2, align 4
  br label %175

38:                                               ; preds = %32
  %39 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %40 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @DW_IC_INTR_RX_FULL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %38
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @DW_IC_INTR_STOP_DET, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %58 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @I2C_SLAVE_WRITE_REQUESTED, align 4
  %61 = call i32 @i2c_slave_event(i32 %59, i32 %60, i32* %7)
  br label %62

62:                                               ; preds = %56, %51, %38
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @DW_IC_INTR_RD_REQ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %120

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %119

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @DW_IC_INTR_RX_FULL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %77 = load i32, i32* @DW_IC_DATA_CMD, align 4
  %78 = call i32 @dw_readl(%struct.dw_i2c_dev* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %80 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @I2C_SLAVE_WRITE_RECEIVED, align 4
  %83 = call i32 @i2c_slave_event(i32 %81, i32 %82, i32* %7)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %75
  %86 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %87 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @dev_vdbg(i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %75
  %92 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %93 = load i32, i32* @DW_IC_CLR_RD_REQ, align 4
  %94 = call i32 @dw_readl(%struct.dw_i2c_dev* %92, i32 %93)
  %95 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %96 = call i32 @i2c_dw_read_clear_intrbits_slave(%struct.dw_i2c_dev* %95)
  store i32 %96, i32* %5, align 4
  br label %106

97:                                               ; preds = %70
  %98 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %99 = load i32, i32* @DW_IC_CLR_RD_REQ, align 4
  %100 = call i32 @dw_readl(%struct.dw_i2c_dev* %98, i32 %99)
  %101 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %102 = load i32, i32* @DW_IC_CLR_RX_UNDER, align 4
  %103 = call i32 @dw_readl(%struct.dw_i2c_dev* %101, i32 %102)
  %104 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %105 = call i32 @i2c_dw_read_clear_intrbits_slave(%struct.dw_i2c_dev* %104)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %97, %91
  %107 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %108 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @I2C_SLAVE_READ_REQUESTED, align 4
  %111 = call i32 @i2c_slave_event(i32 %109, i32 %110, i32* %7)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %106
  %114 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @DW_IC_DATA_CMD, align 4
  %117 = call i32 @dw_writel(%struct.dw_i2c_dev* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %106
  br label %119

119:                                              ; preds = %118, %67
  br label %120

120:                                              ; preds = %119, %62
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @DW_IC_INTR_RX_DONE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %120
  %126 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %127 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @I2C_SLAVE_READ_PROCESSED, align 4
  %130 = call i32 @i2c_slave_event(i32 %128, i32 %129, i32* %7)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %134 = load i32, i32* @DW_IC_CLR_RX_DONE, align 4
  %135 = call i32 @dw_readl(%struct.dw_i2c_dev* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %125
  %137 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %138 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @I2C_SLAVE_STOP, align 4
  %141 = call i32 @i2c_slave_event(i32 %139, i32 %140, i32* %7)
  %142 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %143 = call i32 @i2c_dw_read_clear_intrbits_slave(%struct.dw_i2c_dev* %142)
  store i32 %143, i32* %5, align 4
  store i32 1, i32* %2, align 4
  br label %175

144:                                              ; preds = %120
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @DW_IC_INTR_RX_FULL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %144
  %150 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %151 = load i32, i32* @DW_IC_DATA_CMD, align 4
  %152 = call i32 @dw_readl(%struct.dw_i2c_dev* %150, i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %154 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @I2C_SLAVE_WRITE_RECEIVED, align 4
  %157 = call i32 @i2c_slave_event(i32 %155, i32 %156, i32* %7)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %149
  %160 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %161 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @dev_vdbg(i32 %162, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %159, %149
  br label %174

166:                                              ; preds = %144
  %167 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %168 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @I2C_SLAVE_STOP, align 4
  %171 = call i32 @i2c_slave_event(i32 %169, i32 %170, i32* %7)
  %172 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %173 = call i32 @i2c_dw_read_clear_intrbits_slave(%struct.dw_i2c_dev* %172)
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %166, %165
  store i32 1, i32* %2, align 4
  br label %175

175:                                              ; preds = %174, %136, %37
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @dw_readl(%struct.dw_i2c_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_slave_event(i32, i32, i32*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @i2c_dw_read_clear_intrbits_slave(%struct.dw_i2c_dev*) #1

declare dso_local i32 @dw_writel(%struct.dw_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
