; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_submit_channel_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_submit_channel_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_aux = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.aux_request_transaction_data = type { i64, i64, i64, i64*, i32, i32 }
%struct.aux_engine_dce110 = type { i32 }

@AUX_TRANSACTION_TYPE_DP = common dso_local global i64 0, align 8
@I2CAUX_TRANSACTION_ACTION_DP_WRITE = common dso_local global i64 0, align 8
@AUX_TRANSACTION_TYPE_I2C = common dso_local global i64 0, align 8
@I2CAUX_TRANSACTION_ACTION_I2C_WRITE = common dso_local global i64 0, align 8
@I2CAUX_TRANSACTION_ACTION_I2C_WRITE_MOT = common dso_local global i64 0, align 8
@AUXN_IMPCAL = common dso_local global i32 0, align 4
@AUXN_CALOUT_ERROR_AK = common dso_local global i32 0, align 4
@AUXP_IMPCAL = common dso_local global i32 0, align 4
@AUXP_CALOUT_ERROR_AK = common dso_local global i32 0, align 4
@AUXN_IMPCAL_ENABLE = common dso_local global i32 0, align 4
@AUXN_IMPCAL_OVERRIDE_ENABLE = common dso_local global i32 0, align 4
@AUXP_IMPCAL_OVERRIDE_ENABLE = common dso_local global i32 0, align 4
@AUX_INTERRUPT_CONTROL = common dso_local global i32 0, align 4
@AUX_SW_DONE_ACK = common dso_local global i32 0, align 4
@AUX_SW_STATUS = common dso_local global i32 0, align 4
@AUX_SW_DONE = common dso_local global i32 0, align 4
@AUX_SW_CONTROL = common dso_local global i32 0, align 4
@AUX_SW_START_DELAY = common dso_local global i32 0, align 4
@AUX_SW_WR_BYTES = common dso_local global i32 0, align 4
@AUX_SW_DATA = common dso_local global i32 0, align 4
@AUX_SW_INDEX = common dso_local global i32 0, align 4
@AUX_SW_DATA_RW = common dso_local global i32 0, align 4
@AUX_SW_AUTOINCREMENT_DISABLE = common dso_local global i32 0, align 4
@AUX_SW_GO = common dso_local global i32 0, align 4
@EVENT_LOG_AUX_ORIGIN_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_aux*, %struct.aux_request_transaction_data*)* @submit_channel_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_channel_request(%struct.dce_aux* %0, %struct.aux_request_transaction_data* %1) #0 {
  %3 = alloca %struct.dce_aux*, align 8
  %4 = alloca %struct.aux_request_transaction_data*, align 8
  %5 = alloca %struct.aux_engine_dce110*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dce_aux* %0, %struct.dce_aux** %3, align 8
  store %struct.aux_request_transaction_data* %1, %struct.aux_request_transaction_data** %4, align 8
  %10 = load %struct.dce_aux*, %struct.dce_aux** %3, align 8
  %11 = call %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux* %10)
  store %struct.aux_engine_dce110* %11, %struct.aux_engine_dce110** %5, align 8
  %12 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %13 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AUX_TRANSACTION_TYPE_DP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %19 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @I2CAUX_TRANSACTION_ACTION_DP_WRITE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %45, label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %25 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AUX_TRANSACTION_TYPE_I2C, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %31 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @I2CAUX_TRANSACTION_ACTION_I2C_WRITE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %37 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @I2CAUX_TRANSACTION_ACTION_I2C_WRITE_MOT, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i1 [ true, %29 ], [ %40, %35 ]
  br label %43

43:                                               ; preds = %41, %23
  %44 = phi i1 [ false, %23 ], [ %42, %41 ]
  br label %45

45:                                               ; preds = %43, %17
  %46 = phi i1 [ true, %17 ], [ %44, %43 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @AUXN_IMPCAL, align 4
  %49 = call i64 @REG(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load i32, i32* @AUXN_IMPCAL, align 4
  %53 = load i32, i32* @AUXN_CALOUT_ERROR_AK, align 4
  %54 = load i32, i32* @AUXN_CALOUT_ERROR_AK, align 4
  %55 = call i32 @REG_UPDATE_SEQ_2(i32 %52, i32 %53, i32 1, i32 %54, i32 0)
  %56 = load i32, i32* @AUXP_IMPCAL, align 4
  %57 = load i32, i32* @AUXP_CALOUT_ERROR_AK, align 4
  %58 = load i32, i32* @AUXP_CALOUT_ERROR_AK, align 4
  %59 = call i32 @REG_UPDATE_SEQ_2(i32 %56, i32 %57, i32 1, i32 %58, i32 0)
  %60 = load i32, i32* @AUXN_IMPCAL, align 4
  %61 = load i32, i32* @AUXN_IMPCAL_ENABLE, align 4
  %62 = load i32, i32* @AUXN_IMPCAL_OVERRIDE_ENABLE, align 4
  %63 = call i32 @REG_UPDATE_SEQ_2(i32 %60, i32 %61, i32 1, i32 %62, i32 0)
  %64 = load i32, i32* @AUXP_IMPCAL, align 4
  %65 = load i32, i32* @AUXP_IMPCAL_OVERRIDE_ENABLE, align 4
  %66 = load i32, i32* @AUXP_IMPCAL_OVERRIDE_ENABLE, align 4
  %67 = call i32 @REG_UPDATE_SEQ_2(i32 %64, i32 %65, i32 1, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %51, %45
  %69 = load i32, i32* @AUX_INTERRUPT_CONTROL, align 4
  %70 = load i32, i32* @AUX_SW_DONE_ACK, align 4
  %71 = call i32 @REG_UPDATE(i32 %69, i32 %70, i32 1)
  %72 = load i32, i32* @AUX_SW_STATUS, align 4
  %73 = load i32, i32* @AUX_SW_DONE, align 4
  %74 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %5, align 8
  %75 = getelementptr inbounds %struct.aux_engine_dce110, %struct.aux_engine_dce110* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 10
  %78 = call i32 @REG_WAIT(i32 %72, i32 %73, i32 0, i32 10, i32 %77)
  %79 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %80 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 4, i32 3
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %68
  %89 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %90 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %7, align 8
  br label %94

94:                                               ; preds = %88, %68
  %95 = load i32, i32* @AUX_SW_CONTROL, align 4
  %96 = load i32, i32* @AUX_SW_START_DELAY, align 4
  %97 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %98 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AUX_SW_WR_BYTES, align 4
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @REG_UPDATE_2(i32 %95, i32 %96, i32 %99, i32 %100, i64 %101)
  %103 = load i32, i32* @AUX_SW_DATA, align 4
  %104 = load i32, i32* @AUX_SW_INDEX, align 4
  %105 = load i32, i32* @AUX_SW_DATA_RW, align 4
  %106 = load i32, i32* @AUX_SW_AUTOINCREMENT_DISABLE, align 4
  %107 = load i32, i32* @AUX_SW_DATA, align 4
  %108 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %109 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %112 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @COMPOSE_AUX_SW_DATA_16_20(i64 %110, i32 %113)
  %115 = call i64 @REG_UPDATE_4(i32 %103, i32 %104, i32 0, i32 %105, i32 0, i32 %106, i32 1, i32 %107, i32 %114)
  store i64 %115, i64* %6, align 8
  %116 = load i32, i32* @AUX_SW_DATA, align 4
  %117 = load i64, i64* %6, align 8
  %118 = load i32, i32* @AUX_SW_AUTOINCREMENT_DISABLE, align 4
  %119 = load i32, i32* @AUX_SW_DATA, align 4
  %120 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %121 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @COMPOSE_AUX_SW_DATA_8_15(i32 %122)
  %124 = call i64 @REG_SET_2(i32 %116, i64 %117, i32 %118, i32 0, i32 %119, i32 %123)
  store i64 %124, i64* %6, align 8
  %125 = load i32, i32* @AUX_SW_DATA, align 4
  %126 = load i64, i64* %6, align 8
  %127 = load i32, i32* @AUX_SW_DATA, align 4
  %128 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %129 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @COMPOSE_AUX_SW_DATA_0_7(i32 %130)
  %132 = call i64 @REG_SET(i32 %125, i64 %126, i32 %127, i64 %131)
  store i64 %132, i64* %6, align 8
  %133 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %134 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %94
  %138 = load i32, i32* @AUX_SW_DATA, align 4
  %139 = load i64, i64* %6, align 8
  %140 = load i32, i32* @AUX_SW_DATA, align 4
  %141 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %142 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %143, 1
  %145 = call i64 @REG_SET(i32 %138, i64 %139, i32 %140, i64 %144)
  store i64 %145, i64* %6, align 8
  br label %146

146:                                              ; preds = %137, %94
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %146
  store i64 0, i64* %9, align 8
  br label %150

150:                                              ; preds = %156, %149
  %151 = load i64, i64* %9, align 8
  %152 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %153 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ult i64 %151, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %150
  %157 = load i32, i32* @AUX_SW_DATA, align 4
  %158 = load i64, i64* %6, align 8
  %159 = load i32, i32* @AUX_SW_DATA, align 4
  %160 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %161 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %160, i32 0, i32 3
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* %9, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @REG_SET(i32 %157, i64 %158, i32 %159, i64 %165)
  store i64 %166, i64* %6, align 8
  %167 = load i64, i64* %9, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %9, align 8
  br label %150

169:                                              ; preds = %150
  br label %170

170:                                              ; preds = %169, %146
  %171 = load i32, i32* @AUX_SW_CONTROL, align 4
  %172 = load i32, i32* @AUX_SW_GO, align 4
  %173 = call i32 @REG_UPDATE(i32 %171, i32 %172, i32 1)
  %174 = load %struct.dce_aux*, %struct.dce_aux** %3, align 8
  %175 = getelementptr inbounds %struct.dce_aux, %struct.dce_aux* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @EVENT_LOG_AUX_ORIGIN_NATIVE, align 4
  %182 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %183 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %186 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %189 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.aux_request_transaction_data*, %struct.aux_request_transaction_data** %4, align 8
  %192 = getelementptr inbounds %struct.aux_request_transaction_data, %struct.aux_request_transaction_data* %191, i32 0, i32 3
  %193 = load i64*, i64** %192, align 8
  %194 = call i32 @EVENT_LOG_AUX_REQ(i32 %180, i32 %181, i64 %184, i32 %187, i64 %190, i64* %193)
  ret void
}

declare dso_local %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux*) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_UPDATE_SEQ_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i64) #1

declare dso_local i64 @REG_UPDATE_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @COMPOSE_AUX_SW_DATA_16_20(i64, i32) #1

declare dso_local i64 @REG_SET_2(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @COMPOSE_AUX_SW_DATA_8_15(i32) #1

declare dso_local i64 @REG_SET(i32, i64, i32, i64) #1

declare dso_local i64 @COMPOSE_AUX_SW_DATA_0_7(i32) #1

declare dso_local i32 @EVENT_LOG_AUX_REQ(i32, i32, i64, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
