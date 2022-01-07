; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_i2c_xfers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_i2c_xfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_dev_desc = type { i32 }
%struct.i2c_msg = type { i32, i32, i32 }
%struct.dw_i3c_i2c_dev_data = type { i32 }
%struct.i3c_master_controller = type { i32 }
%struct.dw_i3c_master = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dw_i3c_xfer = type { i32, i32, %struct.dw_i3c_cmd* }
%struct.dw_i3c_cmd = type { i32, i32, i32, i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMMAND_PORT_TRANSFER_ARG = common dso_local global i32 0, align 4
@COMMAND_PORT_ROC = common dso_local global i32 0, align 4
@COMMAND_PORT_READ_TRANSFER = common dso_local global i32 0, align 4
@COMMAND_PORT_TOC = common dso_local global i32 0, align 4
@XFER_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_dev_desc*, %struct.i2c_msg*, i32)* @dw_i3c_master_i2c_xfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i3c_master_i2c_xfers(%struct.i2c_dev_desc* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_dev_desc*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dw_i3c_i2c_dev_data*, align 8
  %9 = alloca %struct.i3c_master_controller*, align 8
  %10 = alloca %struct.dw_i3c_master*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dw_i3c_xfer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dw_i3c_cmd*, align 8
  store %struct.i2c_dev_desc* %0, %struct.i2c_dev_desc** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.i2c_dev_desc*, %struct.i2c_dev_desc** %5, align 8
  %18 = call %struct.dw_i3c_i2c_dev_data* @i2c_dev_get_master_data(%struct.i2c_dev_desc* %17)
  store %struct.dw_i3c_i2c_dev_data* %18, %struct.dw_i3c_i2c_dev_data** %8, align 8
  %19 = load %struct.i2c_dev_desc*, %struct.i2c_dev_desc** %5, align 8
  %20 = call %struct.i3c_master_controller* @i2c_dev_get_master(%struct.i2c_dev_desc* %19)
  store %struct.i3c_master_controller* %20, %struct.i3c_master_controller** %9, align 8
  %21 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %9, align 8
  %22 = call %struct.dw_i3c_master* @to_dw_i3c_master(%struct.i3c_master_controller* %21)
  store %struct.dw_i3c_master* %22, %struct.dw_i3c_master** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %222

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %10, align 8
  %29 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %222

36:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %76, %36
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %79

41:                                               ; preds = %37
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i64 %44
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @I2C_M_RD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %41
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 %54
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @DIV_ROUND_UP(i32 %57, i32 4)
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  br label %75

63:                                               ; preds = %41
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i64 %66
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @DIV_ROUND_UP(i32 %69, i32 4)
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %63, %51
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %37

79:                                               ; preds = %37
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %10, align 8
  %82 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ugt i32 %80, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %10, align 8
  %89 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ugt i32 %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86, %79
  %94 = load i32, i32* @ENOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %222

96:                                               ; preds = %86
  %97 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %10, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call %struct.dw_i3c_xfer* @dw_i3c_master_alloc_xfer(%struct.dw_i3c_master* %97, i32 %98)
  store %struct.dw_i3c_xfer* %99, %struct.dw_i3c_xfer** %13, align 8
  %100 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %13, align 8
  %101 = icmp ne %struct.dw_i3c_xfer* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %222

105:                                              ; preds = %96
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %199, %105
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %202

110:                                              ; preds = %106
  %111 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %13, align 8
  %112 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %111, i32 0, i32 2
  %113 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %113, i64 %115
  store %struct.dw_i3c_cmd* %116, %struct.dw_i3c_cmd** %16, align 8
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i64 %119
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @COMMAND_PORT_ARG_DATA_LEN(i32 %122)
  %124 = load i32, i32* @COMMAND_PORT_TRANSFER_ARG, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %16, align 8
  %127 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @COMMAND_PORT_TID(i32 %128)
  %130 = load %struct.dw_i3c_i2c_dev_data*, %struct.dw_i3c_i2c_dev_data** %8, align 8
  %131 = getelementptr inbounds %struct.dw_i3c_i2c_dev_data, %struct.dw_i3c_i2c_dev_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @COMMAND_PORT_DEV_INDEX(i32 %132)
  %134 = or i32 %129, %133
  %135 = load i32, i32* @COMMAND_PORT_ROC, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %16, align 8
  %138 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i64 %141
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @I2C_M_RD, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %110
  %149 = load i32, i32* @COMMAND_PORT_READ_TRANSFER, align 4
  %150 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %16, align 8
  %151 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %154, i64 %156
  %158 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %16, align 8
  %161 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %162, i64 %164
  %166 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %16, align 8
  %169 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  br label %187

170:                                              ; preds = %110
  %171 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %171, i64 %173
  %175 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %16, align 8
  %178 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %179, i64 %181
  %183 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %16, align 8
  %186 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %170, %148
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %7, align 4
  %190 = sub nsw i32 %189, 1
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i32, i32* @COMMAND_PORT_TOC, align 4
  %194 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %16, align 8
  %195 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %187
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %106

202:                                              ; preds = %106
  %203 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %10, align 8
  %204 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %13, align 8
  %205 = call i32 @dw_i3c_master_enqueue_xfer(%struct.dw_i3c_master* %203, %struct.dw_i3c_xfer* %204)
  %206 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %13, align 8
  %207 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %206, i32 0, i32 1
  %208 = load i32, i32* @XFER_TIMEOUT, align 4
  %209 = call i32 @wait_for_completion_timeout(i32* %207, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %202
  %212 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %10, align 8
  %213 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %13, align 8
  %214 = call i32 @dw_i3c_master_dequeue_xfer(%struct.dw_i3c_master* %212, %struct.dw_i3c_xfer* %213)
  br label %215

215:                                              ; preds = %211, %202
  %216 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %13, align 8
  %217 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  store i32 %218, i32* %15, align 4
  %219 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %13, align 8
  %220 = call i32 @dw_i3c_master_free_xfer(%struct.dw_i3c_xfer* %219)
  %221 = load i32, i32* %15, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %215, %102, %93, %33, %25
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local %struct.dw_i3c_i2c_dev_data* @i2c_dev_get_master_data(%struct.i2c_dev_desc*) #1

declare dso_local %struct.i3c_master_controller* @i2c_dev_get_master(%struct.i2c_dev_desc*) #1

declare dso_local %struct.dw_i3c_master* @to_dw_i3c_master(%struct.i3c_master_controller*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.dw_i3c_xfer* @dw_i3c_master_alloc_xfer(%struct.dw_i3c_master*, i32) #1

declare dso_local i32 @COMMAND_PORT_ARG_DATA_LEN(i32) #1

declare dso_local i32 @COMMAND_PORT_TID(i32) #1

declare dso_local i32 @COMMAND_PORT_DEV_INDEX(i32) #1

declare dso_local i32 @dw_i3c_master_enqueue_xfer(%struct.dw_i3c_master*, %struct.dw_i3c_xfer*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dw_i3c_master_dequeue_xfer(%struct.dw_i3c_master*, %struct.dw_i3c_xfer*) #1

declare dso_local i32 @dw_i3c_master_free_xfer(%struct.dw_i3c_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
