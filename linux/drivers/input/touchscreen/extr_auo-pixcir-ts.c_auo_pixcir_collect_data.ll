; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_collect_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_collect_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auo_pixcir_ts = type { %struct.auo_pixcir_ts_platdata*, %struct.i2c_client* }
%struct.auo_pixcir_ts_platdata = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.auo_point_t = type { i32, i32, i32, i32, i32 }

@AUO_PIXCIR_REG_X1_LSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to read coordinate, %d\0A\00", align 1
@AUO_PIXCIR_REG_TOUCHAREA_X1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not read touch area, %d\0A\00", align 1
@AUO_PIXCIR_REPORT_POINTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"coordinates (%d,%d) invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auo_pixcir_ts*, %struct.auo_point_t*)* @auo_pixcir_collect_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auo_pixcir_collect_data(%struct.auo_pixcir_ts* %0, %struct.auo_point_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auo_pixcir_ts*, align 8
  %5 = alloca %struct.auo_point_t*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.auo_pixcir_ts_platdata*, align 8
  %8 = alloca [8 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.auo_pixcir_ts* %0, %struct.auo_pixcir_ts** %4, align 8
  store %struct.auo_point_t* %1, %struct.auo_point_t** %5, align 8
  %12 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %4, align 8
  %13 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %12, i32 0, i32 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %6, align 8
  %15 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %4, align 8
  %16 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %15, i32 0, i32 0
  %17 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %16, align 8
  store %struct.auo_pixcir_ts_platdata* %17, %struct.auo_pixcir_ts_platdata** %7, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %19 = load i32, i32* @AUO_PIXCIR_REG_X1_LSB, align 4
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %21 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %18, i32 %19, i32 8, i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %3, align 4
  br label %190

30:                                               ; preds = %2
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = load i32, i32* @AUO_PIXCIR_REG_TOUCHAREA_X1, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %34 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %31, i32 %32, i32 4, i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %3, align 4
  br label %190

43:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %186, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @AUO_PIXCIR_REPORT_POINTS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %189

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 4, %49
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 4, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %55, %60
  %62 = load %struct.auo_point_t*, %struct.auo_point_t** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %62, i64 %64
  %66 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 4, %67
  %69 = add nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 4, %74
  %76 = add nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %73, %79
  %81 = load %struct.auo_point_t*, %struct.auo_point_t** %5, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %81, i64 %83
  %85 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %84, i32 0, i32 1
  store i32 %80, i32* %85, align 4
  %86 = load %struct.auo_point_t*, %struct.auo_point_t** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %86, i64 %88
  %90 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %7, align 8
  %93 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %48
  %97 = load %struct.auo_point_t*, %struct.auo_point_t** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %97, i64 %99
  %101 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %7, align 8
  %104 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %96, %48
  %108 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = load %struct.auo_point_t*, %struct.auo_point_t** %5, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %110, i64 %112
  %114 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.auo_point_t*, %struct.auo_point_t** %5, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %116, i64 %118
  %120 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_warn(i32* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %121)
  %123 = load %struct.auo_point_t*, %struct.auo_point_t** %5, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %123, i64 %125
  %127 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %126, i32 0, i32 1
  store i32 0, i32* %127, align 4
  %128 = load %struct.auo_point_t*, %struct.auo_point_t** %5, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %128, i64 %130
  %132 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %131, i32 0, i32 0
  store i32 0, i32* %132, align 4
  br label %133

133:                                              ; preds = %107, %96
  %134 = load i32, i32* %10, align 4
  %135 = mul nsw i32 2, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %10, align 4
  %140 = mul nsw i32 2, %139
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @max(i32 %138, i32 %144)
  %146 = load %struct.auo_point_t*, %struct.auo_point_t** %5, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %146, i64 %148
  %150 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %149, i32 0, i32 4
  store i32 %145, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  %152 = mul nsw i32 2, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %10, align 4
  %157 = mul nsw i32 2, %156
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @min(i32 %155, i32 %161)
  %163 = load %struct.auo_point_t*, %struct.auo_point_t** %5, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %163, i64 %165
  %167 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %166, i32 0, i32 3
  store i32 %162, i32* %167, align 4
  %168 = load i32, i32* %10, align 4
  %169 = mul nsw i32 2, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %10, align 4
  %174 = mul nsw i32 2, %173
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp sgt i32 %172, %178
  %180 = zext i1 %179 to i32
  %181 = load %struct.auo_point_t*, %struct.auo_point_t** %5, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %181, i64 %183
  %185 = getelementptr inbounds %struct.auo_point_t, %struct.auo_point_t* %184, i32 0, i32 2
  store i32 %180, i32* %185, align 4
  br label %186

186:                                              ; preds = %133
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %44

189:                                              ; preds = %44
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %37, %24
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
