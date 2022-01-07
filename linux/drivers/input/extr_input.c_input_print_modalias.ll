; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_print_modalias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_print_modalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"input:b%04Xv%04Xp%04Xe%04X-\00", align 1
@EV_MAX = common dso_local global i32 0, align 4
@KEY_MIN_INTERESTING = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@REL_MAX = common dso_local global i32 0, align 4
@ABS_MAX = common dso_local global i32 0, align 4
@MSC_MAX = common dso_local global i32 0, align 4
@LED_MAX = common dso_local global i32 0, align 4
@SND_MAX = common dso_local global i32 0, align 4
@FF_MAX = common dso_local global i32 0, align 4
@SW_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.input_dev*, i32)* @input_print_modalias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_print_modalias(i8* %0, i32 %1, %struct.input_dev* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.input_dev* %2, %struct.input_dev** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @max(i32 %11, i32 0)
  %13 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %10, i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %24, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EV_MAX, align 4
  %41 = call i64 @input_print_modalias_bits(i8* %33, i32 %36, i8 signext 101, i32 %39, i32 0, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @KEY_MIN_INTERESTING, align 4
  %57 = load i32, i32* @KEY_MAX, align 4
  %58 = call i64 @input_print_modalias_bits(i8* %49, i32 %52, i8 signext 107, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @REL_MAX, align 4
  %74 = call i64 @input_print_modalias_bits(i8* %66, i32 %69, i8 signext 114, i32 %72, i32 0, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ABS_MAX, align 4
  %90 = call i64 @input_print_modalias_bits(i8* %82, i32 %85, i8 signext 97, i32 %88, i32 0, i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %9, align 4
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %103 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MSC_MAX, align 4
  %106 = call i64 @input_print_modalias_bits(i8* %98, i32 %101, i8 signext 109, i32 %104, i32 0, i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %9, align 4
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %119 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @LED_MAX, align 4
  %122 = call i64 @input_print_modalias_bits(i8* %114, i32 %117, i8 signext 108, i32 %120, i32 0, i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %9, align 4
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %9, align 4
  %133 = sub nsw i32 %131, %132
  %134 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %135 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SND_MAX, align 4
  %138 = call i64 @input_print_modalias_bits(i8* %130, i32 %133, i8 signext 115, i32 %136, i32 0, i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %9, align 4
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %9, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %151 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @FF_MAX, align 4
  %154 = call i64 @input_print_modalias_bits(i8* %146, i32 %149, i8 signext 102, i32 %152, i32 0, i32 %153)
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %9, align 4
  %159 = load i8*, i8** %5, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %9, align 4
  %165 = sub nsw i32 %163, %164
  %166 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %167 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SW_MAX, align 4
  %170 = call i64 @input_print_modalias_bits(i8* %162, i32 %165, i8 signext 119, i32 %168, i32 0, i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %4
  %178 = load i8*, i8** %5, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %9, align 4
  %184 = sub nsw i32 %182, %183
  %185 = call i32 @max(i32 %184, i32 0)
  %186 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %181, i32 %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %177, %4
  %190 = load i32, i32* %9, align 4
  ret i32 %190
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @input_print_modalias_bits(i8*, i32, i8 signext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
