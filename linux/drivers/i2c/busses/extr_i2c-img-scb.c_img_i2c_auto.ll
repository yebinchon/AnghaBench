; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_auto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INT_WRITE_ACK_ERR = common dso_local global i32 0, align 4
@INT_ADDR_ACK_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@LINESTAT_ABORT_DET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"abort condition detected\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@INT_FIFO_FULL_FILLING = common dso_local global i32 0, align 4
@LINESTAT_START_BIT_DET = common dso_local global i32 0, align 4
@INT_SLAVE_EVENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@INT_STOP_DETECTED = common dso_local global i32 0, align 4
@INT_MASTER_HALTED = common dso_local global i32 0, align 4
@ISR_WAITSTOP = common dso_local global i32 0, align 4
@INT_FIFO_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_i2c*, i32, i32)* @img_i2c_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2c_auto(%struct.img_i2c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.img_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.img_i2c* %0, %struct.img_i2c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @INT_WRITE_ACK_ERR, align 4
  %10 = load i32, i32* @INT_ADDR_ACK_ERR, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EIO, align 4
  %16 = call i32 @ISR_COMPLETE(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %168

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @LINESTAT_ABORT_DET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %24 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %30 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @I2C_M_RD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @INT_FIFO_FULL_FILLING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %43 = call i32 @img_i2c_read_fifo(%struct.img_i2c* %42)
  br label %44

44:                                               ; preds = %41, %36, %22
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  %47 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %48 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %50 = call i32 @img_i2c_stop_start(%struct.img_i2c* %49)
  store i32 0, i32* %4, align 4
  br label %168

51:                                               ; preds = %17
  %52 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %53 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @LINESTAT_START_BIT_DET, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %63 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %64 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @img_i2c_transaction_halt(%struct.img_i2c* %62, i32 %68)
  %70 = load i32, i32* @INT_SLAVE_EVENT, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %73 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %61, %56, %51
  %77 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %78 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %77, i32 0, i32 2
  %79 = load i64, i64* @jiffies, align 8
  %80 = call i64 @msecs_to_jiffies(i32 1)
  %81 = add nsw i64 %79, %80
  %82 = call i32 @mod_timer(i32* %78, i64 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @INT_STOP_DETECTED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %76
  %88 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %89 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @I2C_M_RD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %97 = call i32 @img_i2c_read_fifo(%struct.img_i2c* %96)
  br label %98

98:                                               ; preds = %95, %87
  %99 = call i32 @ISR_COMPLETE(i32 0)
  store i32 %99, i32* %4, align 4
  br label %168

100:                                              ; preds = %76
  %101 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %102 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @I2C_M_RD, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %100
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @INT_FIFO_FULL_FILLING, align 4
  %111 = load i32, i32* @INT_MASTER_HALTED, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %117 = call i32 @img_i2c_read_fifo(%struct.img_i2c* %116)
  %118 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %119 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* @ISR_WAITSTOP, align 4
  store i32 %124, i32* %4, align 4
  br label %168

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %108
  br label %151

127:                                              ; preds = %100
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @INT_FIFO_EMPTY, align 4
  %130 = load i32, i32* @INT_MASTER_HALTED, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %127
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @INT_FIFO_EMPTY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %141 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* @ISR_WAITSTOP, align 4
  store i32 %146, i32* %4, align 4
  br label %168

147:                                              ; preds = %139, %134
  %148 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %149 = call i32 @img_i2c_write_fifo(%struct.img_i2c* %148)
  br label %150

150:                                              ; preds = %147, %127
  br label %151

151:                                              ; preds = %150, %126
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @INT_MASTER_HALTED, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %151
  %157 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %158 = call i32 @img_i2c_transaction_halt(%struct.img_i2c* %157, i32 0)
  %159 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %160 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %161 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @img_i2c_transaction_halt(%struct.img_i2c* %159, i32 %165)
  br label %167

167:                                              ; preds = %156, %151
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %145, %123, %98, %44, %14
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @ISR_COMPLETE(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @img_i2c_read_fifo(%struct.img_i2c*) #1

declare dso_local i32 @img_i2c_stop_start(%struct.img_i2c*) #1

declare dso_local i32 @img_i2c_transaction_halt(%struct.img_i2c*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @img_i2c_write_fifo(%struct.img_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
