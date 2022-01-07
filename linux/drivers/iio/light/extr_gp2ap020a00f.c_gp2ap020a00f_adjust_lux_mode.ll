; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_adjust_lux_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_adjust_lux_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gp2ap020a00f_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GP2AP020A00F_FLAG_LUX_MODE_HI = common dso_local global i32 0, align 4
@GP2AP020A00F_RANGE_A_x128 = common dso_local global i32 0, align 4
@GP2AP020A00F_RANGE_A_x8 = common dso_local global i32 0, align 4
@GP2AP020A00F_THRESH_TH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Clearing als threshold register failed.\0A\00", align 1
@GP2AP020A00F_THRESH_TL = common dso_local global i32 0, align 4
@GP2AP020A00F_OP_REG = common dso_local global i32 0, align 4
@GP2AP020A00F_OP3_MASK = common dso_local global i32 0, align 4
@GP2AP020A00F_OP3_SHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Shutting down the device failed.\0A\00", align 1
@GP2AP020A00F_ALS_REG = common dso_local global i32 0, align 4
@GP2AP020A00F_RANGE_A_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Adjusting device lux mode failed.\0A\00", align 1
@GP2AP020A00F_OP3_OPERATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Powering up the device failed.\0A\00", align 1
@GP2AP020A00F_FLAG_ALS_RISING_EV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Adjusting als threshold value failed.\0A\00", align 1
@GP2AP020A00F_FLAG_ALS_FALLING_EV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gp2ap020a00f_data*, i32)* @gp2ap020a00f_adjust_lux_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_adjust_lux_mode(%struct.gp2ap020a00f_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gp2ap020a00f_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gp2ap020a00f_data* %0, %struct.gp2ap020a00f_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 255, i32* %6, align 4
  %8 = load i32, i32* @GP2AP020A00F_FLAG_LUX_MODE_HI, align 4
  %9 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %10 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 16000
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* @GP2AP020A00F_FLAG_LUX_MODE_HI, align 4
  %18 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %19 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %18, i32 0, i32 1
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load i32, i32* @GP2AP020A00F_RANGE_A_x128, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %16, %13
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 1000
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @GP2AP020A00F_FLAG_LUX_MODE_HI, align 4
  %28 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %29 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %28, i32 0, i32 1
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load i32, i32* @GP2AP020A00F_RANGE_A_x8, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %26, %23
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 255
  br i1 %35, label %36, label %147

36:                                               ; preds = %33
  %37 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %38 = load i32, i32* @GP2AP020A00F_THRESH_TH, align 4
  %39 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %37, i32 %38, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %44 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

48:                                               ; preds = %36
  %49 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %50 = load i32, i32* @GP2AP020A00F_THRESH_TL, align 4
  %51 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %49, i32 %50, i32 0)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %56 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

60:                                               ; preds = %48
  %61 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %62 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GP2AP020A00F_OP_REG, align 4
  %65 = load i32, i32* @GP2AP020A00F_OP3_MASK, align 4
  %66 = load i32, i32* @GP2AP020A00F_OP3_SHUTDOWN, align 4
  %67 = call i32 @regmap_update_bits(i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %72 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

76:                                               ; preds = %60
  %77 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %78 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @GP2AP020A00F_ALS_REG, align 4
  %81 = load i32, i32* @GP2AP020A00F_RANGE_A_MASK, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %88 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

92:                                               ; preds = %76
  %93 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %94 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @GP2AP020A00F_OP_REG, align 4
  %97 = load i32, i32* @GP2AP020A00F_OP3_MASK, align 4
  %98 = load i32, i32* @GP2AP020A00F_OP3_OPERATION, align 4
  %99 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %92
  %103 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %104 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

108:                                              ; preds = %92
  %109 = load i32, i32* @GP2AP020A00F_FLAG_ALS_RISING_EV, align 4
  %110 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %111 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %110, i32 0, i32 1
  %112 = call i64 @test_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %116 = load i32, i32* @GP2AP020A00F_THRESH_TH, align 4
  %117 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %115, i32 %116, i32 1)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %122 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %108
  %128 = load i32, i32* @GP2AP020A00F_FLAG_ALS_FALLING_EV, align 4
  %129 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %130 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %129, i32 0, i32 1
  %131 = call i64 @test_bit(i32 %128, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %135 = load i32, i32* @GP2AP020A00F_THRESH_TL, align 4
  %136 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %134, i32 %135, i32 1)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %141 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = call i32 @dev_err(i32* %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145, %127
  store i32 1, i32* %3, align 4
  br label %148

147:                                              ; preds = %33
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %146, %139, %120, %102, %86, %70, %54, %42
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
