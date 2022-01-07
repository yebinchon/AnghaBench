; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_discard_decay_hack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_discard_decay_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.hgpk_data* }
%struct.hgpk_data = type { i32, i32, i32, i32, i32, i32, i32 }

@recalib_delta = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"detected %dpx jump in x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"detected secondary %dpx jump in x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"detected %dpx jump in y\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"detected secondary %dpx jump in y\0A\00", align 1
@jumpy_delay = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"scheduling recalibration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32, i32)* @hgpk_discard_decay_hack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_discard_decay_hack(%struct.psmouse* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hgpk_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = load %struct.hgpk_data*, %struct.hgpk_data** %12, align 8
  store %struct.hgpk_data* %13, %struct.hgpk_data** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @abs(i32 %14) #3
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @abs(i32 %16) #3
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @recalib_delta, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @recalib_delta, align 4
  %24 = sdiv i32 %23, 2
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %27, 4
  %29 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %30 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %26, %3
  %34 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_warn(%struct.psmouse* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %39 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %75

40:                                               ; preds = %26, %21
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %43 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @approx_half(i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_warn(%struct.psmouse* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %53 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %55 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %74

58:                                               ; preds = %40
  %59 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %60 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %65 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %63, %58
  %70 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %71 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %73 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %72, i32 0, i32 2
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %47
  br label %75

75:                                               ; preds = %74, %33
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @recalib_delta, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @recalib_delta, align 4
  %82 = sdiv i32 %81, 2
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = sdiv i32 %85, 4
  %87 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %88 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %84, %75
  %92 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_warn(%struct.psmouse* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %97 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  br label %133

98:                                               ; preds = %84, %79
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %101 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @approx_half(i32 %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %98
  %106 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_warn(%struct.psmouse* %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %111 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %113 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %132

116:                                              ; preds = %98
  %117 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %118 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %123 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 1, i32* %10, align 4
  br label %127

127:                                              ; preds = %126, %121, %116
  %128 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %129 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %128, i32 0, i32 4
  store i32 0, i32* %129, align 4
  %130 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %131 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %130, i32 0, i32 5
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %105
  br label %133

133:                                              ; preds = %132, %91
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %136 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %139 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %133
  %143 = load i64, i64* @jumpy_delay, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %147 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_warn(%struct.psmouse* %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %148 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %149 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %150 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %149, i32 0, i32 6
  %151 = load i64, i64* @jumpy_delay, align 8
  %152 = call i32 @msecs_to_jiffies(i64 %151)
  %153 = call i32 @psmouse_queue_work(%struct.psmouse* %148, i32* %150, i32 %152)
  br label %154

154:                                              ; preds = %145, %142, %133
  %155 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %156 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  %161 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br label %164

164:                                              ; preds = %159, %154
  %165 = phi i1 [ true, %154 ], [ %163, %159 ]
  %166 = zext i1 %165 to i32
  ret i32 %166
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*, ...) #2

declare dso_local i64 @approx_half(i32, i32) #2

declare dso_local i32 @psmouse_queue_work(%struct.psmouse*, i32*, i32) #2

declare dso_local i32 @msecs_to_jiffies(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
