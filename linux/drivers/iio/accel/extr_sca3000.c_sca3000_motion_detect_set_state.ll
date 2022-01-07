; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_motion_detect_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_motion_detect_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sca3000_state = type { i32*, i64 }

@SCA3000_REG_CTRL_SEL_MD_CTRL = common dso_local global i32 0, align 4
@sca3000_addresses = common dso_local global i32** null, align 8
@SCA3000_REG_MODE_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_MODE_MASK = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_MEAS_MODE_MOT_DET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @sca3000_motion_detect_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_motion_detect_set_state(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sca3000_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.sca3000_state* %12, %struct.sca3000_state** %8, align 8
  %13 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %14 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %15 = call i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %159

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = load i32**, i32*** @sca3000_addresses, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %25, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %24
  %36 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %37 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32**, i32*** @sca3000_addresses, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %38, %45
  %47 = call i32 @sca3000_write_ctrl_reg(%struct.sca3000_state* %36, i32 %37, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %159

52:                                               ; preds = %35
  %53 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %54 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %95

57:                                               ; preds = %24, %20
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %94, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = load i32**, i32*** @sca3000_addresses, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %61, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %60
  %72 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %73 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32**, i32*** @sca3000_addresses, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %74, %82
  %84 = call i32 @sca3000_write_ctrl_reg(%struct.sca3000_state* %72, i32 %73, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %159

89:                                               ; preds = %71
  %90 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %91 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, -1
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %89, %60, %57
  br label %95

95:                                               ; preds = %94, %52
  %96 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %97 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %98 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %96, i32 %97, i32 1)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %159

103:                                              ; preds = %95
  %104 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %105 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %103
  %109 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %110 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SCA3000_REG_MODE_MODE_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @SCA3000_REG_MODE_MEAS_MODE_MOT_DET, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %108
  %119 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %120 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %121 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %122 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SCA3000_REG_MODE_MODE_MASK, align 4
  %127 = xor i32 %126, -1
  %128 = and i32 %125, %127
  %129 = load i32, i32* @SCA3000_REG_MODE_MEAS_MODE_MOT_DET, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @sca3000_write_reg(%struct.sca3000_state* %119, i32 %120, i32 %130)
  store i32 %131, i32* %4, align 4
  br label %159

132:                                              ; preds = %108, %103
  %133 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %134 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %158, label %137

137:                                              ; preds = %132
  %138 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %139 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SCA3000_REG_MODE_MODE_MASK, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* @SCA3000_REG_MODE_MEAS_MODE_MOT_DET, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %137
  %148 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %149 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %150 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %151 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @SCA3000_REG_MODE_MODE_MASK, align 4
  %156 = and i32 %154, %155
  %157 = call i32 @sca3000_write_reg(%struct.sca3000_state* %148, i32 %149, i32 %156)
  store i32 %157, i32* %4, align 4
  br label %159

158:                                              ; preds = %137, %132
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %147, %118, %101, %87, %50, %18
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @sca3000_read_ctrl_reg(%struct.sca3000_state*, i32) #1

declare dso_local i32 @sca3000_write_ctrl_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
