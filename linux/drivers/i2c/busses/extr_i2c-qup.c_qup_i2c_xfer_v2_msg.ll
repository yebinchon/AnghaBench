; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_xfer_v2_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_xfer_v2_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i32, i64, i32, %struct.i2c_msg*, %struct.qup_i2c_block }
%struct.i2c_msg = type { i32*, i32 }
%struct.qup_i2c_block = type { i32, i32, i32, i32*, i32, i32, i32, i64, i64, i32, i32 }

@RECV_MAX_DATA_LEN = common dso_local global i64 0, align 8
@QUP_READ_LIMIT = common dso_local global i64 0, align 8
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qup_i2c_dev*, i32, i32)* @qup_i2c_xfer_v2_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_xfer_v2_msg(%struct.qup_i2c_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qup_i2c_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_msg*, align 8
  %12 = alloca %struct.qup_i2c_block*, align 8
  %13 = alloca i32*, align 8
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %15 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %14, i32 0, i32 3
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %15, align 8
  store %struct.i2c_msg* %16, %struct.i2c_msg** %11, align 8
  %17 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %18 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %17, i32 0, i32 4
  store %struct.qup_i2c_block* %18, %struct.qup_i2c_block** %12, align 8
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @RECV_MAX_DATA_LEN, align 8
  br label %28

26:                                               ; preds = %3
  %27 = load i64, i64* @QUP_READ_LIMIT, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  %30 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %31 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %34 = call i32 @qup_i2c_set_blk_data(%struct.qup_i2c_dev* %32, %struct.i2c_msg* %33)
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %190, %28
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %38 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %193

41:                                               ; preds = %35
  %42 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %43 = call i32 @qup_i2c_get_data_len(%struct.qup_i2c_dev* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %46 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %48 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %51 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %54 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %56 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %59 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %60 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %59, i32 0, i32 3
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %60, align 8
  %62 = call i64 @qup_i2c_set_tags(i32 %57, %struct.qup_i2c_dev* %58, %struct.i2c_msg* %61)
  %63 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %64 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %63, i32 0, i32 7
  store i64 %62, i64* %64, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %67 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %41
  %71 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %72 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %75 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %74, i32 0, i32 8
  store i64 %73, i64* %75, align 8
  %76 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %77 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %76, i32 0, i32 4
  store i32 2, i32* %77, align 8
  %78 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %79 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %80, %81
  %83 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %84 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  br label %96

85:                                               ; preds = %41
  %86 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %87 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %93 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %92, i32 0, i32 8
  store i64 %91, i64* %93, align 8
  %94 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %95 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %94, i32 0, i32 5
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %85, %70
  %97 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %101, %96
  %106 = phi i1 [ false, %96 ], [ %104, %101 ]
  %107 = zext i1 %106 to i32
  %108 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %109 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %115 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub i32 %116, 1
  %118 = icmp ult i32 %113, %117
  br label %119

119:                                              ; preds = %112, %105
  %120 = phi i1 [ true, %105 ], [ %118, %112 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @qup_i2c_conf_xfer_v2(%struct.qup_i2c_dev* %97, i32 %98, i32 %107, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %195

127:                                              ; preds = %119
  %128 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %129 = call i64 @qup_i2c_check_msg_len(%struct.i2c_msg* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %176

131:                                              ; preds = %127
  %132 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %133 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %176

136:                                              ; preds = %131
  %137 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %138 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %176, label %141

141:                                              ; preds = %136
  %142 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = load i32, i32* @EPROTO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  br label %195

152:                                              ; preds = %141
  %153 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %159 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  %160 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %161 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @qup_i2c_xfer_v2_msg(%struct.qup_i2c_dev* %162, i32 %163, i32 1)
  store i32 %164, i32* %8, align 4
  %165 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %166 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %152
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %4, align 4
  br label %195

171:                                              ; preds = %152
  %172 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %173 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %171, %136, %131, %127
  %177 = load i32, i32* %9, align 4
  %178 = load i32*, i32** %13, align 8
  %179 = zext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %13, align 8
  %181 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %5, align 8
  %182 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %12, align 8
  %185 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = sub nsw i64 %187, %183
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 8
  br label %190

190:                                              ; preds = %176
  %191 = load i32, i32* %10, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %35

193:                                              ; preds = %35
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %193, %169, %149, %125
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @qup_i2c_set_blk_data(%struct.qup_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i32 @qup_i2c_get_data_len(%struct.qup_i2c_dev*) #1

declare dso_local i64 @qup_i2c_set_tags(i32, %struct.qup_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i32 @qup_i2c_conf_xfer_v2(%struct.qup_i2c_dev*, i32, i32, i32) #1

declare dso_local i64 @qup_i2c_check_msg_len(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
