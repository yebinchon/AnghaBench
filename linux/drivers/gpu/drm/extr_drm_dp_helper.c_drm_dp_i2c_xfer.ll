; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.drm_dp_aux* }
%struct.drm_dp_aux = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32 }
%struct.drm_dp_aux_msg = type { i64, i32*, i32, i32 }

@dp_aux_i2c_transfer_size = common dso_local global i32 0, align 4
@DP_AUX_MAX_PAYLOAD_BYTES = common dso_local global i32 0, align 4
@DP_AUX_I2C_MOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @drm_dp_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_dp_aux*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_dp_aux_msg, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  %15 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %14, align 8
  store %struct.drm_dp_aux* %15, %struct.drm_dp_aux** %7, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @dp_aux_i2c_transfer_size, align 4
  %17 = load i32, i32* @DP_AUX_MAX_PAYLOAD_BYTES, align 4
  %18 = call i32 @clamp(i32 %16, i32 1, i32 %17)
  store i32 %18, i32* @dp_aux_i2c_transfer_size, align 4
  %19 = call i32 @memset(%struct.drm_dp_aux_msg* %11, i32 0, i32 24)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %106, %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %109

24:                                               ; preds = %20
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i64 %27
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 %34
  %36 = call i32 @drm_dp_i2c_msg_set_request(%struct.drm_dp_aux_msg* %11, %struct.i2c_msg* %35)
  %37 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %7, align 8
  %40 = call i32 @drm_dp_i2c_do_msg(%struct.drm_dp_aux* %39, %struct.drm_dp_aux_msg* %11)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i64 %43
  %45 = call i32 @drm_dp_i2c_msg_set_request(%struct.drm_dp_aux_msg* %11, %struct.i2c_msg* %44)
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %24
  br label %109

49:                                               ; preds = %24
  %50 = load i32, i32* @dp_aux_i2c_transfer_size, align 4
  store i32 %50, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %94, %49
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i64 %55
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %52, %58
  br i1 %59, label %60, label %101

60:                                               ; preds = %51
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 %63
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 1
  store i32* %69, i32** %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 %74
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sub i32 %77, %78
  %80 = call i64 @min(i32 %71, i32 %79)
  %81 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  %82 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %7, align 8
  %83 = call i32 @drm_dp_i2c_drain_msg(%struct.drm_dp_aux* %82, %struct.drm_dp_aux_msg* %11)
  store i32 %83, i32* %12, align 4
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i64 %86
  %88 = call i32 @drm_dp_i2c_msg_set_request(%struct.drm_dp_aux_msg* %11, %struct.i2c_msg* %87)
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %60
  br label %101

92:                                               ; preds = %60
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %9, align 4
  br label %51

101:                                              ; preds = %91, %51
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %109

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %20

109:                                              ; preds = %104, %48, %20
  %110 = load i32, i32* %12, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i32, i32* @DP_AUX_I2C_MOT, align 4
  %116 = xor i32 %115, -1
  %117 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %116
  store i32 %119, i32* %117, align 8
  %120 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 1
  store i32* null, i32** %120, align 8
  %121 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %11, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %7, align 8
  %123 = call i32 @drm_dp_i2c_do_msg(%struct.drm_dp_aux* %122, %struct.drm_dp_aux_msg* %11)
  %124 = load i32, i32* %12, align 4
  ret i32 %124
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.drm_dp_aux_msg*, i32, i32) #1

declare dso_local i32 @drm_dp_i2c_msg_set_request(%struct.drm_dp_aux_msg*, %struct.i2c_msg*) #1

declare dso_local i32 @drm_dp_i2c_do_msg(%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @drm_dp_i2c_drain_msg(%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
