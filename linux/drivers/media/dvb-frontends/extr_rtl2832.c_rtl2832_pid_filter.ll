; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_pid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.rtl2832_dev* }
%struct.rtl2832_dev = type { i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"index=%d pid=%04x onoff=%d slave_ts=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32)* @rtl2832_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_pid_filter(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl2832_dev*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %15, align 8
  store %struct.rtl2832_dev* %16, %struct.rtl2832_dev** %10, align 8
  %17 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %18 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %17, i32 0, i32 3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %26 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i64 %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 8191
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 32
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %4
  store i32 0, i32* %5, align 4
  br label %135

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %41 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  br label %48

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %46 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %45, i32 0, i32 0
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %50 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 0
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %53, i32* %54, align 16
  %55 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %56 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %62 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %65, i32* %66, align 8
  %67 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %68 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 24
  %71 = and i32 %70, 255
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 %71, i32* %72, align 4
  %73 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %74 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %48
  %78 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %79 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %82 = call i32 @regmap_bulk_write(i32 %80, i32 34, i32* %81, i32 4)
  store i32 %82, i32* %12, align 4
  br label %89

83:                                               ; preds = %48
  %84 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %85 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %88 = call i32 @regmap_bulk_write(i32 %86, i32 98, i32* %87, i32 4)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %83, %77
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %129

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = ashr i32 %94, 8
  %96 = and i32 %95, 255
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %96, i32* %97, align 16
  %98 = load i32, i32* %8, align 4
  %99 = ashr i32 %98, 0
  %100 = and i32 %99, 255
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %100, i32* %101, align 4
  %102 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %103 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %93
  %107 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %108 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = mul nsw i32 2, %110
  %112 = add nsw i32 38, %111
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %114 = call i32 @regmap_bulk_write(i32 %109, i32 %112, i32* %113, i32 2)
  store i32 %114, i32* %12, align 4
  br label %124

115:                                              ; preds = %93
  %116 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %10, align 8
  %117 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = mul nsw i32 2, %119
  %121 = add nsw i32 102, %120
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %123 = call i32 @regmap_bulk_write(i32 %118, i32 %121, i32* %122, i32 2)
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %115, %106
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %129

128:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %135

129:                                              ; preds = %127, %92
  %130 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = load i32, i32* %12, align 4
  %133 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %129, %128, %34
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
