; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_aux.c_edp_msg_fifo_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_aux.c_edp_msg_fifo_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_aux = type { i64 }
%struct.drm_dp_aux_msg = type { i32, i32*, i32, i32 }

@DP_AUX_NATIVE_WRITE = common dso_local global i32 0, align 4
@DP_AUX_NATIVE_READ = common dso_local global i32 0, align 4
@DP_AUX_I2C_READ = common dso_local global i32 0, align 4
@AUX_CMD_FIFO_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EDP_AUX_DATA_INDEX_WRITE = common dso_local global i32 0, align 4
@REG_EDP_AUX_DATA = common dso_local global i64 0, align 8
@EDP_AUX_TRANS_CTRL_I2C = common dso_local global i32 0, align 4
@EDP_AUX_TRANS_CTRL_GO = common dso_local global i32 0, align 4
@REG_EDP_AUX_TRANS_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edp_aux*, %struct.drm_dp_aux_msg*)* @edp_msg_fifo_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edp_msg_fifo_tx(%struct.edp_aux* %0, %struct.drm_dp_aux_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edp_aux*, align 8
  %5 = alloca %struct.drm_dp_aux_msg*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.edp_aux* %0, %struct.edp_aux** %4, align 8
  store %struct.drm_dp_aux_msg* %1, %struct.drm_dp_aux_msg** %5, align 8
  %13 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %14 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DP_AUX_NATIVE_WRITE, align 4
  %17 = load i32, i32* @DP_AUX_NATIVE_READ, align 4
  %18 = and i32 %16, %17
  %19 = and i32 %15, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %21 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DP_AUX_I2C_READ, align 4
  %24 = load i32, i32* @DP_AUX_NATIVE_READ, align 4
  %25 = and i32 %23, %24
  %26 = and i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %28 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %35 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %32
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @AUX_CMD_FIFO_LEN, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %135

45:                                               ; preds = %38
  %46 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %47 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 16
  %50 = and i32 %49, 15
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %50, i32* %51, align 16
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = call i32 @BIT(i32 4)
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 16
  br label %59

59:                                               ; preds = %54, %45
  %60 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %61 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %67 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 255
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %69, i32* %70, align 8
  %71 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %72 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = and i32 %74, 255
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %114, %59
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %117

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  br label %96

89:                                               ; preds = %81
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %91, 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  br label %96

96:                                               ; preds = %89, %84
  %97 = phi i32 [ %88, %84 ], [ %95, %89 ]
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @EDP_AUX_DATA_DATA(i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @EDP_AUX_DATA_INDEX_WRITE, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %96
  %107 = load %struct.edp_aux*, %struct.edp_aux** %4, align 8
  %108 = getelementptr inbounds %struct.edp_aux, %struct.edp_aux* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @REG_EDP_AUX_DATA, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @edp_write(i64 %111, i32 %112)
  br label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %77

117:                                              ; preds = %77
  store i32 0, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @EDP_AUX_TRANS_CTRL_I2C, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, i32* @EDP_AUX_TRANS_CTRL_GO, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load %struct.edp_aux*, %struct.edp_aux** %4, align 8
  %129 = getelementptr inbounds %struct.edp_aux, %struct.edp_aux* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @REG_EDP_AUX_TRANS_CTRL, align 8
  %132 = add nsw i64 %130, %131
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @edp_write(i64 %132, i32 %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %124, %42
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @EDP_AUX_DATA_DATA(i32) #1

declare dso_local i32 @edp_write(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
