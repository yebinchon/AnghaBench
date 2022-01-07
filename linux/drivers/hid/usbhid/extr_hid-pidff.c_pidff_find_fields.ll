; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_find_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_find_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_usage = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hid_report = type { i32, %struct.TYPE_4__** }

@.str = private unnamed_addr constant [50 x i8] c"maxusage and report_count do not match, skipping\0A\00", align 1
@HID_UP_PID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"found %d at %d->%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to locate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pidff_usage*, i32*, %struct.hid_report*, i32, i32)* @pidff_find_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidff_find_fields(%struct.pidff_usage* %0, i32* %1, %struct.hid_report* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pidff_usage*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hid_report*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pidff_usage* %0, %struct.pidff_usage** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.hid_report* %2, %struct.hid_report** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %141, %5
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %144

20:                                               ; preds = %16
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %128, %20
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %24 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %131

27:                                               ; preds = %21
  %28 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %29 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %38 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %36, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %27
  %48 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %128

49:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %120, %49
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %53 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %51, %60
  br i1 %61, label %62, label %123

62:                                               ; preds = %50
  %63 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %64 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HID_UP_PID, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %77, %82
  %84 = icmp eq i32 %76, %83
  br i1 %84, label %85, label %119

85:                                               ; preds = %62
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i32 %88)
  %90 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %91 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %92, i64 %94
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load %struct.pidff_usage*, %struct.pidff_usage** %7, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %97, i64 %99
  %101 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %100, i32 0, i32 1
  store %struct.TYPE_4__* %96, %struct.TYPE_4__** %101, align 8
  %102 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %103 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %104, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load %struct.pidff_usage*, %struct.pidff_usage** %7, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %114, i64 %116
  %118 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %117, i32 0, i32 0
  store i32* %113, i32** %118, align 8
  store i32 1, i32* %15, align 4
  br label %123

119:                                              ; preds = %62
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %50

123:                                              ; preds = %85, %50
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %131

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %127, %47
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %21

131:                                              ; preds = %126, %21
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %14, align 4
  %139 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  store i32 -1, i32* %6, align 4
  br label %145

140:                                              ; preds = %134, %131
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %16

144:                                              ; preds = %16
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %144, %137
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
