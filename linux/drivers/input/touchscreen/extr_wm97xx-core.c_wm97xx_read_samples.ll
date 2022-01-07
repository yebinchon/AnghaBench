; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_read_samples.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_read_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.wm97xx*, %struct.wm97xx_data*)* }
%struct.wm97xx_data = type { i32, i32, i32 }
%struct.TYPE_3__ = type { {}*, i64 }

@RC_PENUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pen up\0A\00", align 1
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@RC_AGAIN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@RC_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"pen down: x=%x:%d, y=%x:%d, pressure=%x:%d\0A\00", align 1
@abs_x = common dso_local global i32* null, align 8
@abs_y = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Measurement out of range, dropping it\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@RC_PENDOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"pen down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*)* @wm97xx_read_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_read_samples(%struct.wm97xx* %0) #0 {
  %2 = alloca %struct.wm97xx*, align 8
  %3 = alloca %struct.wm97xx_data, align 4
  %4 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %2, align 8
  %5 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %6 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %5, i32 0, i32 3
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %9 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %8, i32 0, i32 7
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %14 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %13, i32 0, i32 7
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %21 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %20, i32 0, i32 7
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.wm97xx*)**
  %25 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %24, align 8
  %26 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %27 = call i32 %25(%struct.wm97xx* %26)
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %12, %1
  %29 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %30 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %29, i32 0, i32 6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.wm97xx*, %struct.wm97xx_data*)*, i32 (%struct.wm97xx*, %struct.wm97xx_data*)** %32, align 8
  %34 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %35 = call i32 %33(%struct.wm97xx* %34, %struct.wm97xx_data* %3)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %19
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @RC_PENUP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %36
  %42 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %43 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %48 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %50 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %54 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ABS_PRESSURE, align 4
  %57 = call i32 @input_report_abs(i32 %55, i32 %56, i32 0)
  %58 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %59 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BTN_TOUCH, align 4
  %62 = call i32 @input_report_key(i32 %60, i32 %61, i32 0)
  %63 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %64 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @input_sync(i32 %65)
  br label %86

67:                                               ; preds = %41
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @RC_AGAIN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %67
  %73 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %74 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @HZ, align 4
  %77 = sdiv i32 %76, 10
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %81 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %79, %72
  br label %85

85:                                               ; preds = %84, %67
  br label %86

86:                                               ; preds = %85, %46
  br label %212

87:                                               ; preds = %36
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @RC_VALID, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %193

92:                                               ; preds = %87
  %93 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %94 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 12
  %99 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 4095
  %102 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 12
  %105 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 4095
  %108 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 12
  %111 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 4095
  %114 = call i32 (i32, i8*, ...) @dev_dbg(i32 %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %101, i32 %104, i32 %107, i32 %110, i32 %113)
  %115 = load i32*, i32** @abs_x, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 4095
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %146, label %122

122:                                              ; preds = %92
  %123 = load i32*, i32** @abs_x, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 4095
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %146, label %130

130:                                              ; preds = %122
  %131 = load i32*, i32** @abs_y, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 4095
  %137 = icmp sgt i32 %133, %136
  br i1 %137, label %146, label %138

138:                                              ; preds = %130
  %139 = load i32*, i32** @abs_y, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 4095
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %138, %130, %122, %92
  %147 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %148 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, i8*, ...) @dev_dbg(i32 %149, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* @RC_AGAIN, align 4
  store i32 %151, i32* %4, align 4
  br label %213

152:                                              ; preds = %138
  %153 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %154 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @ABS_X, align 4
  %157 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 4095
  %160 = call i32 @input_report_abs(i32 %155, i32 %156, i32 %159)
  %161 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %162 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ABS_Y, align 4
  %165 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 4095
  %168 = call i32 @input_report_abs(i32 %163, i32 %164, i32 %167)
  %169 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %170 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ABS_PRESSURE, align 4
  %173 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 4095
  %176 = call i32 @input_report_abs(i32 %171, i32 %172, i32 %175)
  %177 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %178 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @BTN_TOUCH, align 4
  %181 = call i32 @input_report_key(i32 %179, i32 %180, i32 1)
  %182 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %183 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @input_sync(i32 %184)
  %186 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %187 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %189 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %192 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  br label %211

193:                                              ; preds = %87
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @RC_PENDOWN, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %193
  %199 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %200 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i32 (i32, i8*, ...) @dev_dbg(i32 %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %203 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %204 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  %205 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %206 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %209 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %198, %193
  br label %211

211:                                              ; preds = %210, %152
  br label %212

212:                                              ; preds = %211, %86
  br label %213

213:                                              ; preds = %212, %146
  %214 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %215 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %214, i32 0, i32 3
  %216 = call i32 @mutex_unlock(i32* %215)
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
