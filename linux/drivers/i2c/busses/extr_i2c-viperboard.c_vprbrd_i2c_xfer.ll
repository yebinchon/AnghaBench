; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i64 }
%struct.i2c_msg = type { i32, i32, i32 }
%struct.vprbrd = type { i32, i32, i64 }
%struct.vprbrd_i2c_addr_msg = type { i32, i32, i32, i8*, i32, i8* }
%struct.vprbrd_i2c_status = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"master xfer %d messages:\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"  %d: %s (flags %d) %d bytes to 0x%02x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@VPRBRD_I2C_CMD_ADDR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @vprbrd_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vprbrd*, align 8
  %13 = alloca %struct.vprbrd_i2c_addr_msg*, align 8
  %14 = alloca %struct.vprbrd_i2c_status*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.vprbrd*
  store %struct.vprbrd* %18, %struct.vprbrd** %12, align 8
  %19 = load %struct.vprbrd*, %struct.vprbrd** %12, align 8
  %20 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.vprbrd_i2c_addr_msg*
  store %struct.vprbrd_i2c_addr_msg* %22, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %23 = load %struct.vprbrd*, %struct.vprbrd** %12, align 8
  %24 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.vprbrd_i2c_status*
  store %struct.vprbrd_i2c_status* %26, %struct.vprbrd_i2c_status** %14, align 8
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %173, %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %176

35:                                               ; preds = %31
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i64 %38
  store %struct.i2c_msg* %39, %struct.i2c_msg** %8, align 8
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @I2C_M_RD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* %50, i32 %53, i32 %56, i32 %59)
  %61 = load %struct.vprbrd*, %struct.vprbrd** %12, align 8
  %62 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @I2C_M_RD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %122

70:                                               ; preds = %35
  %71 = load i8*, i8** @VPRBRD_I2C_CMD_ADDR, align 8
  %72 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %73 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %75 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %77 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %82 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %84 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @cpu_to_le16(i32 %87)
  %89 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %90 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.vprbrd*, %struct.vprbrd** %12, align 8
  %92 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %95 = call i32 @vprbrd_i2c_addr(i32 %93, %struct.vprbrd_i2c_addr_msg* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %70
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %98, %70
  %101 = load %struct.vprbrd*, %struct.vprbrd** %12, align 8
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %103 = call i32 @vprbrd_i2c_read(%struct.vprbrd* %101, %struct.i2c_msg* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %106, %100
  %109 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %110 = load %struct.vprbrd_i2c_status*, %struct.vprbrd_i2c_status** %14, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @vprbrd_i2c_status(%struct.i2c_adapter* %109, %struct.vprbrd_i2c_status* %110, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %115, %108
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %178

121:                                              ; preds = %117
  br label %169

122:                                              ; preds = %35
  %123 = load %struct.vprbrd*, %struct.vprbrd** %12, align 8
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %125 = call i32 @vprbrd_i2c_write(%struct.vprbrd* %123, %struct.i2c_msg* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i8*, i8** @VPRBRD_I2C_CMD_ADDR, align 8
  %127 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %128 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %127, i32 0, i32 5
  store i8* %126, i8** %128, align 8
  %129 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %130 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  %131 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %132 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %134 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %137 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %139 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %138, i32 0, i32 2
  store i32 0, i32* %139, align 8
  %140 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @cpu_to_le16(i32 %142)
  %144 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %145 = getelementptr inbounds %struct.vprbrd_i2c_addr_msg, %struct.vprbrd_i2c_addr_msg* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  %146 = load %struct.vprbrd*, %struct.vprbrd** %12, align 8
  %147 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %13, align 8
  %150 = call i32 @vprbrd_i2c_addr(i32 %148, %struct.vprbrd_i2c_addr_msg* %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %122
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %153, %122
  %156 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %157 = load %struct.vprbrd_i2c_status*, %struct.vprbrd_i2c_status** %14, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @vprbrd_i2c_status(%struct.i2c_adapter* %156, %struct.vprbrd_i2c_status* %157, i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %162, %155
  %165 = load i32, i32* %11, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %178

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %168, %121
  %170 = load %struct.vprbrd*, %struct.vprbrd** %12, align 8
  %171 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %170, i32 0, i32 0
  %172 = call i32 @mutex_unlock(i32* %171)
  br label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %31

176:                                              ; preds = %31
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %4, align 4
  br label %183

178:                                              ; preds = %167, %120
  %179 = load %struct.vprbrd*, %struct.vprbrd** %12, align 8
  %180 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %179, i32 0, i32 0
  %181 = call i32 @mutex_unlock(i32* %180)
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %178, %176
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @vprbrd_i2c_addr(i32, %struct.vprbrd_i2c_addr_msg*) #1

declare dso_local i32 @vprbrd_i2c_read(%struct.vprbrd*, %struct.i2c_msg*) #1

declare dso_local i32 @vprbrd_i2c_status(%struct.i2c_adapter*, %struct.vprbrd_i2c_status*, i32) #1

declare dso_local i32 @vprbrd_i2c_write(%struct.vprbrd*, %struct.i2c_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
