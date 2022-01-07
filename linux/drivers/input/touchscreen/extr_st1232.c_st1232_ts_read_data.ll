; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_st1232.c_st1232_ts_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_st1232.c_st1232_ts_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st1232_ts_data = type { i32*, i32, %struct.TYPE_2__*, %struct.i2c_client*, %struct.st1232_ts_finger* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.i2c_client = type { i32, i32 }
%struct.st1232_ts_finger = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@I2C_M_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st1232_ts_data*)* @st1232_ts_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st1232_ts_read_data(%struct.st1232_ts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st1232_ts_data*, align 8
  %4 = alloca %struct.st1232_ts_finger*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca [2 x %struct.i2c_msg], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.st1232_ts_data* %0, %struct.st1232_ts_data** %3, align 8
  %12 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %3, align 8
  %13 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %12, i32 0, i32 4
  %14 = load %struct.st1232_ts_finger*, %struct.st1232_ts_finger** %13, align 8
  store %struct.st1232_ts_finger* %14, %struct.st1232_ts_finger** %4, align 8
  %15 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %3, align 8
  %16 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %15, i32 0, i32 3
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %5, align 8
  %18 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %3, align 8
  %19 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %3, align 8
  %24 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 2
  store i64 0, i64* %32, align 16
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 0
  store i32 1, i32* %34, align 16
  %35 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 1
  store i32* %10, i32** %36, align 8
  %37 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %3, align 8
  %38 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %37, i32 0, i32 3
  %39 = load %struct.i2c_client*, %struct.i2c_client** %38, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* @I2C_M_RD, align 8
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 16
  %47 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %3, align 8
  %48 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 16
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %59 = call i32 @i2c_transfer(i32 %57, %struct.i2c_msg* %58, i32 2)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %1
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %167

64:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %161, %64
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %3, align 8
  %68 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %66, %71
  br i1 %72, label %73, label %166

73:                                               ; preds = %65
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 7
  %82 = load %struct.st1232_ts_finger*, %struct.st1232_ts_finger** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %82, i64 %84
  %86 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 4
  %87 = load %struct.st1232_ts_finger*, %struct.st1232_ts_finger** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %87, i64 %89
  %91 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %160

94:                                               ; preds = %73
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 112
  %103 = shl i32 %102, 4
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %105, %106
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %104, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %103, %111
  %113 = load %struct.st1232_ts_finger*, %struct.st1232_ts_finger** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %113, i64 %115
  %117 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %116, i32 0, i32 1
  store i32 %112, i32* %117, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 7
  %126 = shl i32 %125, 8
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %128, %129
  %131 = add nsw i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %127, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %126, %134
  %136 = load %struct.st1232_ts_finger*, %struct.st1232_ts_finger** %4, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %136, i64 %138
  %140 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %139, i32 0, i32 2
  store i32 %135, i32* %140, align 4
  %141 = load %struct.st1232_ts_data*, %struct.st1232_ts_data** %3, align 8
  %142 = getelementptr inbounds %struct.st1232_ts_data, %struct.st1232_ts_data* %141, i32 0, i32 2
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %94
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 6
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.st1232_ts_finger*, %struct.st1232_ts_finger** %4, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %154, i64 %156
  %158 = getelementptr inbounds %struct.st1232_ts_finger, %struct.st1232_ts_finger* %157, i32 0, i32 3
  store i32 %153, i32* %158, align 4
  br label %159

159:                                              ; preds = %147, %94
  br label %160

160:                                              ; preds = %159, %73
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 3
  store i32 %165, i32* %9, align 4
  br label %65

166:                                              ; preds = %65
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %166, %62
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
