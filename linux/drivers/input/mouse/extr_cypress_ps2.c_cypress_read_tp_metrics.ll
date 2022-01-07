; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_read_tp_metrics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_read_tp_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.cytp_data* }
%struct.cytp_data = type { i32, i32, i32, i32, i8, i8, i32, i32, i32 }

@CYTP_DEFAULT_WIDTH = common dso_local global i32 0, align 4
@CYTP_DEFAULT_HIGH = common dso_local global i32 0, align 4
@CYTP_ABS_MAX_X = common dso_local global i32 0, align 4
@CYTP_ABS_MAX_Y = common dso_local global i32 0, align 4
@CYTP_MIN_PRESSURE = common dso_local global i8 0, align 1
@CYTP_MAX_PRESSURE = common dso_local global i8 0, align 1
@CYTP_CMD_READ_TP_METRICS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TP_METRICS_BIT_1F_JITTER = common dso_local global i8 0, align 1
@TP_METRICS_BIT_1F_SPIKE = common dso_local global i8 0, align 1
@TP_METRICS_BIT_2F_JITTER = common dso_local global i8 0, align 1
@TP_METRICS_BIT_2F_SPIKE = common dso_local global i8 0, align 1
@TP_METRICS_BIT_ABS_PKT_FORMAT_SET = common dso_local global i8 0, align 1
@TP_METRICS_BIT_APA = common dso_local global i8 0, align 1
@TP_METRICS_BIT_MTG = common dso_local global i8 0, align 1
@TP_METRICS_BIT_PALM = common dso_local global i8 0, align 1
@TP_METRICS_BIT_STUBBORN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @cypress_read_tp_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_read_tp_metrics(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.cytp_data*, align 8
  %5 = alloca [8 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 0
  %8 = load %struct.cytp_data*, %struct.cytp_data** %7, align 8
  store %struct.cytp_data* %8, %struct.cytp_data** %4, align 8
  %9 = load i32, i32* @CYTP_DEFAULT_WIDTH, align 4
  %10 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %11 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @CYTP_DEFAULT_HIGH, align 4
  %13 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %14 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @CYTP_ABS_MAX_X, align 4
  %16 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %17 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @CYTP_ABS_MAX_Y, align 4
  %19 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %20 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i8, i8* @CYTP_MIN_PRESSURE, align 1
  %22 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %23 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %22, i32 0, i32 4
  store i8 %21, i8* %23, align 4
  %24 = load i8, i8* @CYTP_MAX_PRESSURE, align 1
  %25 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %26 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %25, i32 0, i32 5
  store i8 %24, i8* %26, align 1
  %27 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %28 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %31 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %29, %32
  %34 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %35 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %37 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %40 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %38, %41
  %43 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %44 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %46 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %160

50:                                               ; preds = %1
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %52 = call i32 @memset(i8* %51, i32 0, i32 8)
  %53 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %54 = load i32, i32* @CYTP_CMD_READ_TP_METRICS, align 4
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %56 = call i64 @cypress_send_ext_cmd(%struct.psmouse* %53, i32 %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %50
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 8
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %62, %65
  %67 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %68 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl i32 %71, 8
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %72, %75
  %77 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %78 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  %80 = load i8, i8* %79, align 1
  %81 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %82 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %81, i32 0, i32 4
  store i8 %80, i8* %82, align 4
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 5
  %84 = load i8, i8* %83, align 1
  %85 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %86 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %85, i32 0, i32 5
  store i8 %84, i8* %86, align 1
  br label %87

87:                                               ; preds = %58, %50
  %88 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %89 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %88, i32 0, i32 5
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %92, label %138

92:                                               ; preds = %87
  %93 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %94 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %93, i32 0, i32 5
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %98 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %97, i32 0, i32 4
  %99 = load i8, i8* %98, align 4
  %100 = zext i8 %99 to i32
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %138, label %102

102:                                              ; preds = %92
  %103 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %104 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %138

107:                                              ; preds = %102
  %108 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %109 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %107
  %113 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %114 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %112
  %118 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %119 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %122 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %138, label %125

125:                                              ; preds = %117
  %126 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %127 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %132 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %135 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %130, %125, %117, %112, %107, %102, %92, %87
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %160

141:                                              ; preds = %130
  %142 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %143 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %146 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sdiv i32 %144, %147
  %149 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %150 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 4
  %151 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %152 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %155 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %153, %156
  %158 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %159 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 4
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %141, %138, %49
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @cypress_send_ext_cmd(%struct.psmouse*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
