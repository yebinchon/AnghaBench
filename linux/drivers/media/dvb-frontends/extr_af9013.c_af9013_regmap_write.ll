; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_regmap_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_regmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.af9013_state = type { i64 }

@AF9013_TS_MODE_USB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @af9013_regmap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_regmap_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.af9013_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.i2c_client*
  store %struct.i2c_client* %18, %struct.i2c_client** %8, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %20 = call %struct.af9013_state* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.af9013_state* %20, %struct.af9013_state** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 0
  %38 = or i32 %32, %37
  store i32 %38, i32* %14, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32* %41, i32** %15, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %42, 3
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %16, align 4
  %45 = load %struct.af9013_state*, %struct.af9013_state** %9, align 8
  %46 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AF9013_TS_MODE_USB, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %3
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %51, 65280
  %53 = icmp ne i32 %52, 44544
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load i32, i32* %16, align 4
  %56 = sub i32 %55, 1
  %57 = shl i32 %56, 2
  %58 = or i32 0, %57
  %59 = or i32 %58, 2
  %60 = or i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @af9013_wregs(%struct.i2c_client* %61, i32 %62, i32 %63, i32* %64, i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %123

71:                                               ; preds = %54
  br label %122

72:                                               ; preds = %50, %3
  %73 = load i32, i32* %14, align 4
  %74 = icmp sge i32 %73, 20736
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %76, 36863
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load i32, i32* %16, align 4
  %80 = sub i32 %79, 1
  %81 = shl i32 %80, 2
  %82 = or i32 192, %81
  %83 = or i32 %82, 2
  %84 = or i32 %83, 1
  store i32 %84, i32* %12, align 4
  %85 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @af9013_wregs(%struct.i2c_client* %85, i32 %86, i32 %87, i32* %88, i32 %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  br label %123

95:                                               ; preds = %78
  br label %121

96:                                               ; preds = %75, %72
  store i32 3, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %117, %96
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32*, i32** %15, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @af9013_wregs(%struct.i2c_client* %102, i32 %103, i32 %106, i32* %110, i32 1, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %101
  br label %123

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %97

120:                                              ; preds = %97
  br label %121

121:                                              ; preds = %120, %95
  br label %122

122:                                              ; preds = %121, %71
  store i32 0, i32* %4, align 4
  br label %129

123:                                              ; preds = %115, %94, %70
  %124 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @dev_dbg(i32* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %123, %122
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.af9013_state* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @af9013_wregs(%struct.i2c_client*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
