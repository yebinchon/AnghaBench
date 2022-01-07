; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_process_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_process_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i32, i32, i64 }
%struct.i2c_request_transaction_data = type { i32, i32, i32, i32*, i64 }

@I2C_CHANNEL_OPERATION_ENGINE_BUSY = common dso_local global i32 0, align 4
@DCE_I2C_TRANSACTION_ACTION_I2C_WRITE = common dso_local global i32 0, align 4
@DCE_I2C_TRANSACTION_ACTION_I2C_READ = common dso_local global i32 0, align 4
@DC_I2C_TRANSACTION0 = common dso_local global i32 0, align 4
@DC_I2C_STOP_ON_NACK0 = common dso_local global i32 0, align 4
@DC_I2C_START0 = common dso_local global i32 0, align 4
@DC_I2C_RW0 = common dso_local global i32 0, align 4
@DC_I2C_COUNT0 = common dso_local global i32 0, align 4
@DC_I2C_STOP0 = common dso_local global i32 0, align 4
@DC_I2C_TRANSACTION1 = common dso_local global i32 0, align 4
@DC_I2C_TRANSACTION2 = common dso_local global i32 0, align 4
@DC_I2C_TRANSACTION3 = common dso_local global i32 0, align 4
@DC_I2C_DATA = common dso_local global i32 0, align 4
@DC_I2C_DATA_RW = common dso_local global i32 0, align 4
@DC_I2C_INDEX = common dso_local global i32 0, align 4
@DC_I2C_INDEX_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_i2c_hw*, %struct.i2c_request_transaction_data*)* @process_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_transaction(%struct.dce_i2c_hw* %0, %struct.i2c_request_transaction_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dce_i2c_hw*, align 8
  %5 = alloca %struct.i2c_request_transaction_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %4, align 8
  store %struct.i2c_request_transaction_data* %1, %struct.i2c_request_transaction_data** %5, align 8
  %10 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %11 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %16 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %17 = call i64 @is_hw_busy(%struct.dce_i2c_hw* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @I2C_CHANNEL_OPERATION_ENGINE_BUSY, align 4
  %21 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %3, align 4
  br label %198

23:                                               ; preds = %2
  %24 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %25 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_WRITE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_READ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %34, %28, %23
  %42 = phi i1 [ true, %28 ], [ true, %23 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %45 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %127 [
    i32 0, label %47
    i32 1, label %67
    i32 2, label %87
    i32 3, label %107
  ]

47:                                               ; preds = %41
  %48 = load i32, i32* @DC_I2C_TRANSACTION0, align 4
  %49 = load i32, i32* @DC_I2C_STOP_ON_NACK0, align 4
  %50 = load i32, i32* @DC_I2C_START0, align 4
  %51 = load i32, i32* @DC_I2C_RW0, align 4
  %52 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_READ, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 0, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* @DC_I2C_COUNT0, align 4
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @DC_I2C_STOP0, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = call i32 @REG_UPDATE_5(i32 %48, i32 %49, i32 1, i32 %50, i32 1, i32 %51, i32 %58, i32 %59, i64 %60, i32 %61, i32 %65)
  br label %128

67:                                               ; preds = %41
  %68 = load i32, i32* @DC_I2C_TRANSACTION1, align 4
  %69 = load i32, i32* @DC_I2C_STOP_ON_NACK0, align 4
  %70 = load i32, i32* @DC_I2C_START0, align 4
  %71 = load i32, i32* @DC_I2C_RW0, align 4
  %72 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_READ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 0, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* @DC_I2C_COUNT0, align 4
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* @DC_I2C_STOP0, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = call i32 @REG_UPDATE_5(i32 %68, i32 %69, i32 1, i32 %70, i32 1, i32 %71, i32 %78, i32 %79, i64 %80, i32 %81, i32 %85)
  br label %128

87:                                               ; preds = %41
  %88 = load i32, i32* @DC_I2C_TRANSACTION2, align 4
  %89 = load i32, i32* @DC_I2C_STOP_ON_NACK0, align 4
  %90 = load i32, i32* @DC_I2C_START0, align 4
  %91 = load i32, i32* @DC_I2C_RW0, align 4
  %92 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %93 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_READ, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 0, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* @DC_I2C_COUNT0, align 4
  %100 = load i64, i64* %6, align 8
  %101 = load i32, i32* @DC_I2C_STOP0, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  %106 = call i32 @REG_UPDATE_5(i32 %88, i32 %89, i32 1, i32 %90, i32 1, i32 %91, i32 %98, i32 %99, i64 %100, i32 %101, i32 %105)
  br label %128

107:                                              ; preds = %41
  %108 = load i32, i32* @DC_I2C_TRANSACTION3, align 4
  %109 = load i32, i32* @DC_I2C_STOP_ON_NACK0, align 4
  %110 = load i32, i32* @DC_I2C_START0, align 4
  %111 = load i32, i32* @DC_I2C_RW0, align 4
  %112 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %113 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_READ, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 0, %116
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* @DC_I2C_COUNT0, align 4
  %120 = load i64, i64* %6, align 8
  %121 = load i32, i32* @DC_I2C_STOP0, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 1, i32 0
  %126 = call i32 @REG_UPDATE_5(i32 %108, i32 %109, i32 1, i32 %110, i32 1, i32 %111, i32 %118, i32 %119, i64 %120, i32 %121, i32 %125)
  br label %128

127:                                              ; preds = %41
  br label %128

128:                                              ; preds = %127, %107, %87, %67, %47
  %129 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %130 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load i32, i32* @DC_I2C_DATA, align 4
  %135 = load i32, i32* @DC_I2C_DATA_RW, align 4
  %136 = load i32, i32* @DC_I2C_DATA, align 4
  %137 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %138 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @DC_I2C_INDEX, align 4
  %141 = load i32, i32* @DC_I2C_INDEX_WRITE, align 4
  %142 = call i64 @REG_SET_4(i32 %134, i32 0, i32 %135, i32 0, i32 %136, i32 %139, i32 %140, i32 0, i32 %141, i32 1)
  store i64 %142, i64* %9, align 8
  %143 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %144 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %143, i32 0, i32 2
  store i64 0, i64* %144, align 8
  br label %153

145:                                              ; preds = %128
  %146 = load i32, i32* @DC_I2C_DATA, align 4
  %147 = load i32, i32* @DC_I2C_DATA_RW, align 4
  %148 = load i32, i32* @DC_I2C_DATA, align 4
  %149 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %150 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @REG_SET_2(i32 %146, i64 0, i32 %147, i32 0, i32 %148, i32 %151)
  store i64 %152, i64* %9, align 8
  br label %153

153:                                              ; preds = %145, %133
  %154 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %155 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %5, align 8
  %159 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_READ, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %184, label %164

164:                                              ; preds = %153
  br label %165

165:                                              ; preds = %168, %164
  %166 = load i64, i64* %6, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %165
  %169 = load i32, i32* @DC_I2C_DATA, align 4
  %170 = load i64, i64* %9, align 8
  %171 = load i32, i32* @DC_I2C_INDEX_WRITE, align 4
  %172 = load i32, i32* @DC_I2C_DATA, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %7, align 8
  %175 = load i32, i32* %173, align 4
  %176 = call i64 @REG_SET_2(i32 %169, i64 %170, i32 %171, i32 0, i32 %172, i32 %175)
  %177 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %178 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %178, align 8
  %181 = load i64, i64* %6, align 8
  %182 = add nsw i64 %181, -1
  store i64 %182, i64* %6, align 8
  br label %165

183:                                              ; preds = %165
  br label %184

184:                                              ; preds = %183, %153
  %185 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %186 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  %189 = load i64, i64* %6, align 8
  %190 = add nsw i64 %189, 1
  %191 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %192 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %190
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 4
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %184, %19
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i64 @is_hw_busy(%struct.dce_i2c_hw*) #1

declare dso_local i32 @REG_UPDATE_5(i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i64 @REG_SET_4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @REG_SET_2(i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
