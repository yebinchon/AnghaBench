; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_report_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_report_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads7846 = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.input_dev*, i64, %struct.ads7846_packet* }
%struct.TYPE_4__ = type { i32 }
%struct.input_dev = type { i32 }
%struct.ads7846_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64, i64 }

@MAX_12BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"x/y: %d/%d, PD %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ignored %d pressure %d\0A\00", align 1
@BTN_TOUCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"DOWN\0A\00", align 1
@ABS_PRESSURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"%4d/%4d/%4d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ads7846*)* @ads7846_report_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ads7846_report_state(%struct.ads7846* %0) #0 {
  %2 = alloca %struct.ads7846*, align 8
  %3 = alloca %struct.ads7846_packet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_dev*, align 8
  store %struct.ads7846* %0, %struct.ads7846** %2, align 8
  %10 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %11 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %10, i32 0, i32 8
  %12 = load %struct.ads7846_packet*, %struct.ads7846_packet** %11, align 8
  store %struct.ads7846_packet* %12, %struct.ads7846_packet** %3, align 8
  %13 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %14 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 7845
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.ads7846_packet*, %struct.ads7846_packet** %3, align 8
  %19 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ads7846_packet*, %struct.ads7846_packet** %3, align 8
  %25 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %47

30:                                               ; preds = %1
  %31 = load %struct.ads7846_packet*, %struct.ads7846_packet** %3, align 8
  %32 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %5, align 4
  %35 = load %struct.ads7846_packet*, %struct.ads7846_packet** %3, align 8
  %36 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ads7846_packet*, %struct.ads7846_packet** %3, align 8
  %40 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ads7846_packet*, %struct.ads7846_packet** %3, align 8
  %44 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %30, %17
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @MAX_12BIT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %54 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 7843
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %59 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %4, align 4
  br label %119

62:                                               ; preds = %52
  %63 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %64 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 7845
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %69 = call i64 @get_pendown_state(%struct.ads7846* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %73 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 2
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %71
  %78 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %79 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %78, i32 0, i32 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  br label %118

86:                                               ; preds = %62
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i1 [ false, %86 ], [ %91, %89 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @likely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %4, align 4
  %101 = sub i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %4, align 4
  %104 = mul i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %106 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = mul i32 %108, %107
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %4, align 4
  %112 = udiv i32 %111, %110
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = add i32 %113, 2047
  %115 = lshr i32 %114, 12
  store i32 %115, i32* %4, align 4
  br label %117

116:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %97
  br label %118

118:                                              ; preds = %117, %77
  br label %119

119:                                              ; preds = %118, %57
  %120 = load %struct.ads7846_packet*, %struct.ads7846_packet** %3, align 8
  %121 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %128 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ugt i32 %126, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %125, %119
  %132 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %133 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %132, i32 0, i32 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load %struct.ads7846_packet*, %struct.ads7846_packet** %3, align 8
  %137 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %139, i32 %140)
  br label %204

142:                                              ; preds = %125
  %143 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %144 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %149 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @udelay(i64 %150)
  %152 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %153 = call i64 @get_pendown_state(%struct.ads7846* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %147
  br label %157

157:                                              ; preds = %156, %142
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %204

160:                                              ; preds = %157
  %161 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %162 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %161, i32 0, i32 6
  %163 = load %struct.input_dev*, %struct.input_dev** %162, align 8
  store %struct.input_dev* %163, %struct.input_dev** %9, align 8
  %164 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %165 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %179, label %168

168:                                              ; preds = %160
  %169 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %170 = load i32, i32* @BTN_TOUCH, align 4
  %171 = call i32 @input_report_key(%struct.input_dev* %169, i32 %170, i32 1)
  %172 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %173 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %172, i32 0, i32 3
  store i32 1, i32* %173, align 4
  %174 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %175 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %174, i32 0, i32 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %179

179:                                              ; preds = %168, %160
  %180 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %181 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %182 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %181, i32 0, i32 5
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @touchscreen_report_pos(%struct.input_dev* %180, i32* %182, i32 %183, i32 %184, i32 0)
  %186 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %187 = load i32, i32* @ABS_PRESSURE, align 4
  %188 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %189 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %4, align 4
  %192 = sub i32 %190, %191
  %193 = call i32 @input_report_abs(%struct.input_dev* %186, i32 %187, i32 %192)
  %194 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %195 = call i32 @input_sync(%struct.input_dev* %194)
  %196 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %197 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %196, i32 0, i32 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %4, align 4
  %203 = call i32 (i32*, i8*, ...) @dev_vdbg(i32* %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %131, %179, %157
  ret void
}

declare dso_local i64 @get_pendown_state(%struct.ads7846*) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, ...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @touchscreen_report_pos(%struct.input_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
