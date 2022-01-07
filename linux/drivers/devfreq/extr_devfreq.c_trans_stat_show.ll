; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_trans_stat_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_trans_stat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.devfreq = type { i64, i32*, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"Not Supported.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"     From  :   To\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"           :\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%10lu\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"   time(ms)\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%10lu:\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%10u\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%10u\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Total transition : %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @trans_stat_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trans_stat_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.devfreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.devfreq* @to_devfreq(%struct.device* %13)
  store %struct.devfreq* %14, %struct.devfreq** %8, align 8
  %15 = load %struct.devfreq*, %struct.devfreq** %8, align 8
  %16 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.devfreq*, %struct.devfreq** %8, align 8
  %21 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.devfreq*, %struct.devfreq** %8, align 8
  %26 = load %struct.devfreq*, %struct.devfreq** %8, align 8
  %27 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @devfreq_update_status(%struct.devfreq* %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %189

32:                                               ; preds = %24, %3
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  br label %189

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %69, %38
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load %struct.devfreq*, %struct.devfreq** %8, align 8
  %58 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %52
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %48

72:                                               ; preds = %48
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %174, %72
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %177

84:                                               ; preds = %80
  %85 = load %struct.devfreq*, %struct.devfreq** %8, align 8
  %86 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %85, i32 0, i32 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.devfreq*, %struct.devfreq** %8, align 8
  %96 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %84
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %115

107:                                              ; preds = %84
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %107, %99
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load %struct.devfreq*, %struct.devfreq** %8, align 8
  %121 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %120, i32 0, i32 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, i8*, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %155, %115
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %132
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load %struct.devfreq*, %struct.devfreq** %8, align 8
  %142 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %12, align 4
  %146 = mul i32 %144, %145
  %147 = load i32, i32* %11, align 4
  %148 = add i32 %146, %147
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %143, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, i8*, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %136
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %132

158:                                              ; preds = %132
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load %struct.devfreq*, %struct.devfreq** %8, align 8
  %164 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @jiffies_to_msecs(i32 %169)
  %171 = call i32 (i8*, i8*, ...) @sprintf(i8* %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %158
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %80

177:                                              ; preds = %80
  %178 = load i8*, i8** %7, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load %struct.devfreq*, %struct.devfreq** %8, align 8
  %183 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i8*, i8*, ...) @sprintf(i8* %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %177, %35, %31
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local %struct.devfreq* @to_devfreq(%struct.device*) #1

declare dso_local i64 @devfreq_update_status(%struct.devfreq*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
