; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_set_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.stu300_dev = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@stu300_clktable = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"too %s clock rate requested (%lu Hz).\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_OAR2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Clock rate %lu Hz, I2C bus speed %d Hz virtbase %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"too low clock rate (%lu Hz).\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"too high clock rate (%lu Hz).\0A\00", align 1
@I2C_CCR_CC_MASK = common dso_local global i32 0, align 4
@I2C_CCR_FMSM = common dso_local global i32 0, align 4
@I2C_CCR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"set clock divider to 0x%08x, Fast Mode I2C\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"set clock divider to 0x%08x, Standard Mode I2C\0A\00", align 1
@I2C_ECCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stu300_dev*, i64)* @stu300_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_set_clk(%struct.stu300_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stu300_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stu300_dev* %0, %struct.stu300_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stu300_clktable, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %10)
  %12 = sub nsw i32 %11, 1
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stu300_clktable, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %20, %21
  br label %23

23:                                               ; preds = %14, %8
  %24 = phi i1 [ false, %8 ], [ %22, %14 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %8

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stu300_clktable, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %38 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %45 = load i64, i64* %5, align 8
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %44, i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %175

49:                                               ; preds = %28
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stu300_clktable, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %57 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @I2C_OAR2, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @stu300_wr8(i32 %55, i64 %60)
  %62 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %63 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %5, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %69 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %72 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %65, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %70, i64 %73)
  %75 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %76 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 100000
  br i1 %78, label %79, label %90

79:                                               ; preds = %49
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %82 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = udiv i64 %80, %84
  %86 = sub i64 %85, 9
  %87 = udiv i64 %86, 3
  %88 = add i64 %87, 1
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %101

90:                                               ; preds = %49
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %93 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = udiv i64 %91, %95
  %97 = sub i64 %96, 7
  %98 = udiv i64 %97, 2
  %99 = add i64 %98, 1
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %90, %79
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %106 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %5, align 8
  %110 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %175

113:                                              ; preds = %101
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, -4096
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %119 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %5, align 8
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %122)
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %175

126:                                              ; preds = %113
  %127 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %128 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %129, 100000
  br i1 %130, label %131, label %149

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @I2C_CCR_CC_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @I2C_CCR_FMSM, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %138 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @I2C_CCR, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @stu300_wr8(i32 %136, i64 %141)
  %143 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %144 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %6, align 4
  %148 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %146, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %147)
  br label %165

149:                                              ; preds = %126
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @I2C_CCR_CC_MASK, align 4
  %152 = and i32 %150, %151
  %153 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %154 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @I2C_CCR, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @stu300_wr8(i32 %152, i64 %157)
  %159 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %160 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %6, align 4
  %164 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %162, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %149, %131
  %166 = load i32, i32* %6, align 4
  %167 = ashr i32 %166, 7
  %168 = and i32 %167, 31
  %169 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %170 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @I2C_ECCR, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @stu300_wr8(i32 %168, i64 %173)
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %165, %117, %104, %36
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @stu300_wr8(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
