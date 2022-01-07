; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.gpu_i2c_dev = type { i32, i64 }

@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_MST_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"i2c stop failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @gpu_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpu_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpu_i2c_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %15 = call %struct.gpu_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %14)
  store %struct.gpu_i2c_dev* %15, %struct.gpu_i2c_dev** %7, align 8
  store i32 1, i32* %10, align 4
  %16 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %7, align 8
  %17 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pm_runtime_get_sync(i32 %18)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %119, %3
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %122

24:                                               ; preds = %20
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i64 %27
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @I2C_M_RD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %24
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 %37
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %7, align 8
  %42 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @I2C_MST_ADDR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %7, align 8
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i64 %50
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i64 %56
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gpu_i2c_read(%struct.gpu_i2c_dev* %47, i32* %53, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %34
  br label %130

64:                                               ; preds = %34
  br label %118

65:                                               ; preds = %24
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i64 %68
  %70 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %7, align 8
  %72 = call i32 @gpu_i2c_start(%struct.gpu_i2c_dev* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %75
  br label %130

80:                                               ; preds = %65
  %81 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @gpu_i2c_write(%struct.gpu_i2c_dev* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %130

87:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %114, %87
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i64 %92
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %89, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %88
  %98 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %7, align 8
  %99 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i64 %101
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @gpu_i2c_write(%struct.gpu_i2c_dev* %98, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %97
  br label %130

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %88

117:                                              ; preds = %88
  br label %118

118:                                              ; preds = %117, %64
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %20

122:                                              ; preds = %20
  store i32 0, i32* %10, align 4
  %123 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %7, align 8
  %124 = call i32 @gpu_i2c_stop(%struct.gpu_i2c_dev* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %128, %127, %112, %86, %79, %63
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %7, align 8
  %135 = call i32 @gpu_i2c_stop(%struct.gpu_i2c_dev* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %7, align 8
  %140 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @dev_err(i32 %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %138, %133
  br label %145

145:                                              ; preds = %144, %130
  %146 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %7, align 8
  %147 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @pm_runtime_mark_last_busy(i32 %148)
  %150 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %7, align 8
  %151 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @pm_runtime_put_autosuspend(i32 %152)
  %154 = load i32, i32* %8, align 4
  ret i32 %154
}

declare dso_local %struct.gpu_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @gpu_i2c_read(%struct.gpu_i2c_dev*, i32*, i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @gpu_i2c_start(%struct.gpu_i2c_dev*) #1

declare dso_local i32 @gpu_i2c_write(%struct.gpu_i2c_dev*, i32) #1

declare dso_local i32 @gpu_i2c_stop(%struct.gpu_i2c_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
