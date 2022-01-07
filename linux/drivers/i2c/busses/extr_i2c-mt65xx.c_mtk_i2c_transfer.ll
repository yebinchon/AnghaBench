; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i64, i32 }
%struct.mtk_i2c = type { i64, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@I2C_M_RD = common dso_local global i32 0, align 4
@MAX_FS_MODE_SPEED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"data buffer is NULL.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_MASTER_RD = common dso_local global i32 0, align 4
@I2C_MASTER_WR = common dso_local global i32 0, align 4
@I2C_MASTER_WRRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @mtk_i2c_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_i2c_transfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_i2c*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.mtk_i2c* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.mtk_i2c* %13, %struct.mtk_i2c** %10, align 8
  %14 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %15 = call i32 @mtk_i2c_clock_enable(%struct.mtk_i2c* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %150

20:                                               ; preds = %3
  %21 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %22 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %27 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %26, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  %28 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %29 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %65

35:                                               ; preds = %32
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i64 0
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @I2C_M_RD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %35
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 1
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @I2C_M_RD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %43
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 0
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i64 1
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %63 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %51, %43, %35
  br label %65

65:                                               ; preds = %64, %32, %20
  %66 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %67 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = icmp sge i32 %71, 2
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %75 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MAX_FS_MODE_SPEED, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %81 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  br label %85

82:                                               ; preds = %73, %70, %65
  %83 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %84 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %83, i32 0, i32 1
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %141, %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %9, align 4
  %89 = icmp ne i32 %87, 0
  br i1 %89, label %90, label %144

90:                                               ; preds = %86
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %97 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_dbg(i32 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %8, align 4
  br label %146

102:                                              ; preds = %90
  %103 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @I2C_M_RD, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* @I2C_MASTER_RD, align 4
  %111 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %112 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  br label %117

113:                                              ; preds = %102
  %114 = load i32, i32* @I2C_MASTER_WR, align 4
  %115 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %116 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %119 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %7, align 4
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* @I2C_MASTER_WRRD, align 4
  %127 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %128 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %125, %122
  br label %132

132:                                              ; preds = %131, %117
  %133 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %134 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @mtk_i2c_do_transfer(%struct.mtk_i2c* %133, %struct.i2c_msg* %134, i32 %135, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %146

141:                                              ; preds = %132
  %142 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i32 1
  store %struct.i2c_msg* %143, %struct.i2c_msg** %6, align 8
  br label %86

144:                                              ; preds = %86
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %144, %140, %95
  %147 = load %struct.mtk_i2c*, %struct.mtk_i2c** %10, align 8
  %148 = call i32 @mtk_i2c_clock_disable(%struct.mtk_i2c* %147)
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %146, %18
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.mtk_i2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mtk_i2c_clock_enable(%struct.mtk_i2c*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mtk_i2c_do_transfer(%struct.mtk_i2c*, %struct.i2c_msg*, i32, i32) #1

declare dso_local i32 @mtk_i2c_clock_disable(%struct.mtk_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
