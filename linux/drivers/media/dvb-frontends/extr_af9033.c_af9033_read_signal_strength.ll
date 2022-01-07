; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9033_dev* }
%struct.af9033_dev = type { i32, i64, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@power_reference = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @af9033_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9033_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.af9033_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [7 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.af9033_dev*, %struct.af9033_dev** %16, align 8
  store %struct.af9033_dev* %17, %struct.af9033_dev** %6, align 8
  %18 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %19 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %18, i32 0, i32 3
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %7, align 8
  %21 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %22 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.dtv_frontend_properties* %23, %struct.dtv_frontend_properties** %8, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %28 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %2
  %32 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %33 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @regmap_read(i32 %34, i32 8388680, i32* %12)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %135

39:                                               ; preds = %31
  %40 = load i32, i32* %12, align 4
  %41 = mul i32 %40, 65535
  %42 = udiv i32 %41, 100
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  br label %134

44:                                               ; preds = %2
  %45 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %46 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @regmap_read(i32 %47, i32 8388855, i32* %12)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %135

52:                                               ; preds = %44
  %53 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %54 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 0
  %57 = call i32 @regmap_bulk_read(i32 %55, i32 8452352, i32* %56, i32 7)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %135

61:                                               ; preds = %52
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 %64, 300000000
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 7, i32* %13, align 4
  br label %68

67:                                               ; preds = %61
  store i32 4, i32* %13, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %12, align 4
  %70 = sub i32 %69, 100
  %71 = load i32, i32* %13, align 4
  %72 = sub i32 %70, %71
  %73 = load i32**, i32*** @power_reference, align 8
  %74 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = lshr i32 %75, 0
  %77 = and i32 %76, 3
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %73, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 6
  %82 = load i32, i32* %81, align 8
  %83 = lshr i32 %82, 0
  %84 = and i32 %83, 7
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sub i32 %72, %87
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, -15
  br i1 %90, label %91, label %92

91:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  br label %129

92:                                               ; preds = %68
  %93 = load i32, i32* %11, align 4
  %94 = icmp sge i32 %93, -15
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 15
  %101 = mul nsw i32 2, %100
  %102 = sdiv i32 %101, 3
  store i32 %102, i32* %10, align 4
  br label %128

103:                                              ; preds = %95, %92
  %104 = load i32, i32* %11, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 20
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = mul nsw i32 4, %110
  %112 = add nsw i32 %111, 10
  store i32 %112, i32* %10, align 4
  br label %127

113:                                              ; preds = %106, %103
  %114 = load i32, i32* %11, align 4
  %115 = icmp sge i32 %114, 20
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 35
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %120, 20
  %122 = mul nsw i32 2, %121
  %123 = sdiv i32 %122, 3
  %124 = add nsw i32 %123, 90
  store i32 %124, i32* %10, align 4
  br label %126

125:                                              ; preds = %116, %113
  store i32 100, i32* %10, align 4
  br label %126

126:                                              ; preds = %125, %119
  br label %127

127:                                              ; preds = %126, %109
  br label %128

128:                                              ; preds = %127, %98
  br label %129

129:                                              ; preds = %128, %91
  %130 = load i32, i32* %10, align 4
  %131 = mul nsw i32 %130, 65535
  %132 = sdiv i32 %131, 100
  %133 = load i32*, i32** %5, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %129, %39
  store i32 0, i32* %3, align 4
  br label %141

135:                                              ; preds = %60, %51, %38
  %136 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load i32, i32* %9, align 4
  %139 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %135, %134
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
