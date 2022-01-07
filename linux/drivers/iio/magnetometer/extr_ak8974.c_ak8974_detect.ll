; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8974 = type { i8*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AK8974_WHOAMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ami305\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ami306\00", align 1
@AMI305_VER = common dso_local global i32 0, align 4
@AMI305_SN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"detected %s, FW ver %02x, S/N: %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ak8974\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"detected AK8974\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"unsupported device (%02x) \00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AMI306_FINEOUTPUT_X = common dso_local global i32 0, align 4
@AMI306_OFFZERO_X = common dso_local global i32 0, align 4
@ak8974_detect.axis = internal constant [3 x i8] c"XYZ", align 1
@ak8974_detect.pgaxis = internal constant [6 x i8] c"ZYZXYX", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"factory calibration for axis %c: offz=%u sens=%u fine=%u pga%c=%u pga%c=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8974*)* @ak8974_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8974_detect(%struct.ak8974* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ak8974*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [9 x i32], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ak8974* %0, %struct.ak8974** %3, align 8
  %17 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %18 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AK8974_WHOAMI, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %4)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %156

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %65 [
    i32 128, label %28
    i32 129, label %29
    i32 130, label %59
  ]

28:                                               ; preds = %26
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %29

29:                                               ; preds = %26, %28
  %30 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %31 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AMI305_VER, align 4
  %34 = call i32 @regmap_read(i32 %32, i32 %33, i32* %7)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %156

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 127
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %43 = load i32, i32* @AMI305_SN, align 4
  %44 = call i32 @ak8974_get_u16_val(%struct.ak8974* %42, i32 %43, i32* %8)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %156

49:                                               ; preds = %39
  %50 = call i32 @add_device_randomness(i32* %8, i32 4)
  %51 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %52 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_info(i32* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %56, i32 %57)
  br label %74

59:                                               ; preds = %26
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  %60 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %61 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @dev_info(i32* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %74

65:                                               ; preds = %26
  %66 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %67 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %156

74:                                               ; preds = %59, %49
  %75 = load i8*, i8** %5, align 8
  %76 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %77 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %80 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 128
  br i1 %82, label %83, label %155

83:                                               ; preds = %74
  %84 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %85 = load i32, i32* @AMI306_FINEOUTPUT_X, align 4
  %86 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %87 = call i32 @ak8974_read_calib_data(%struct.ak8974* %84, i32 %85, i32* %86, i32 36)
  %88 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %89 = load i32, i32* @AMI306_OFFZERO_X, align 4
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %91 = call i32 @ak8974_read_calib_data(%struct.ak8974* %88, i32 %89, i32* %90, i32 12)
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %151, %83
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %154

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le16_to_cpu(i32 %99)
  %101 = and i32 %100, 127
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16_to_cpu(i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le16_to_cpu(i32 %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 6
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = lshr i32 %119, 8
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %15, align 4
  %122 = and i32 %121, 255
  store i32 %122, i32* %15, align 4
  %123 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %124 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [3 x i8], [3 x i8]* @ak8974_detect.axis, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [6 x i8], [6 x i8]* @ak8974_detect.pgaxis, i64 0, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %11, align 4
  %143 = mul nsw i32 %142, 2
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [6 x i8], [6 x i8]* @ak8974_detect.pgaxis, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = load i32, i32* %16, align 4
  %150 = call i32 (i32*, i8*, ...) @dev_info(i32* %126, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 %131, i32 %132, i32 %133, i32 %134, i32 %140, i32 %141, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %95
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %92

154:                                              ; preds = %92
  br label %155

155:                                              ; preds = %154, %74
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %65, %47, %37, %24
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ak8974_get_u16_val(%struct.ak8974*, i32, i32*) #1

declare dso_local i32 @add_device_randomness(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ak8974_read_calib_data(%struct.ak8974*, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
