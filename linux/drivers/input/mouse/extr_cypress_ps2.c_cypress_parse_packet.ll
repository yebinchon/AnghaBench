; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_parse_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8* }
%struct.cytp_data = type { i32 }
%struct.cytp_report_data = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8, i8, i8 }

@ABS_MULTIFINGER_TAP = common dso_local global i8 0, align 1
@CYTP_BIT_ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_LEFT_BIT = common dso_local global i8 0, align 1
@BTN_RIGHT_BIT = common dso_local global i8 0, align 1
@CYTP_MAX_MT_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, %struct.cytp_data*, %struct.cytp_report_data*)* @cypress_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_parse_packet(%struct.psmouse* %0, %struct.cytp_data* %1, %struct.cytp_report_data* %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca %struct.cytp_data*, align 8
  %6 = alloca %struct.cytp_report_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store %struct.cytp_data* %1, %struct.cytp_data** %5, align 8
  store %struct.cytp_report_data* %2, %struct.cytp_report_data** %6, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %8, align 1
  %15 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %16 = call i32 @memset(%struct.cytp_report_data* %15, i32 0, i32 32)
  %17 = load i8, i8* %8, align 1
  %18 = call i32 @cypress_get_finger_count(i8 zeroext %17)
  %19 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %20 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @ABS_MULTIFINGER_TAP, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %30 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %32 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %86

35:                                               ; preds = %3
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 112
  %41 = shl i32 %40, 4
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %41, %45
  %47 = trunc i32 %46 to i8
  %48 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %49 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %48, i32 0, i32 5
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8 %47, i8* %52, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 7
  %58 = shl i32 %57, 8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %58, %62
  %64 = trunc i32 %63 to i8
  %65 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %66 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i8 %64, i8* %69, align 1
  %70 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %71 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CYTP_BIT_ABS_PRESSURE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %35
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  %79 = load i8, i8* %78, align 1
  %80 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %81 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %80, i32 0, i32 5
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i8 %79, i8* %84, align 1
  br label %85

85:                                               ; preds = %76, %35
  br label %196

86:                                               ; preds = %3
  %87 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %88 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %89, 2
  br i1 %90, label %91, label %195

91:                                               ; preds = %86
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 112
  %97 = shl i32 %96, 4
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %97, %101
  %103 = trunc i32 %102 to i8
  %104 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %105 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %104, i32 0, i32 5
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i8 %103, i8* %108, align 1
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 7
  %114 = shl i32 %113, 8
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = or i32 %114, %118
  %120 = trunc i32 %119 to i8
  %121 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %122 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %121, i32 0, i32 5
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i8 %120, i8* %125, align 1
  %126 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %127 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @CYTP_BIT_ABS_PRESSURE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %91
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 4
  %135 = load i8, i8* %134, align 1
  %136 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %137 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %136, i32 0, i32 5
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  store i8 %135, i8* %140, align 1
  br label %141

141:                                              ; preds = %132, %91
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 5
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = and i32 %145, 240
  %147 = shl i32 %146, 4
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 6
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %147, %151
  %153 = trunc i32 %152 to i8
  %154 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %155 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %154, i32 0, i32 5
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i8 %153, i8* %158, align 1
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 5
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %162, 15
  %164 = shl i32 %163, 8
  %165 = load i8*, i8** %7, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 7
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = or i32 %164, %168
  %170 = trunc i32 %169 to i8
  %171 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %172 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %171, i32 0, i32 5
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  store i8 %170, i8* %175, align 1
  %176 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %177 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @CYTP_BIT_ABS_PRESSURE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %141
  %183 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %184 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %183, i32 0, i32 5
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load i8, i8* %187, align 1
  %189 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %190 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %189, i32 0, i32 5
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 1
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 2
  store i8 %188, i8* %193, align 1
  br label %194

194:                                              ; preds = %182, %141
  br label %195

195:                                              ; preds = %194, %86
  br label %196

196:                                              ; preds = %195, %85
  %197 = load i8, i8* %8, align 1
  %198 = zext i8 %197 to i32
  %199 = load i8, i8* @BTN_LEFT_BIT, align 1
  %200 = zext i8 %199 to i32
  %201 = and i32 %198, %200
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 1, i32 0
  %205 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %206 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  %207 = load i8, i8* %8, align 1
  %208 = zext i8 %207 to i32
  %209 = load i8, i8* @BTN_RIGHT_BIT, align 1
  %210 = zext i8 %209 to i32
  %211 = and i32 %208, %210
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i32 1, i32 0
  %215 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %216 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %218 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %196
  %222 = load %struct.cytp_report_data*, %struct.cytp_report_data** %6, align 8
  %223 = getelementptr inbounds %struct.cytp_report_data, %struct.cytp_report_data* %222, i32 0, i32 2
  store i32 0, i32* %223, align 8
  br label %224

224:                                              ; preds = %221, %196
  ret i32 0
}

declare dso_local i32 @memset(%struct.cytp_report_data*, i32, i32) #1

declare dso_local i32 @cypress_get_finger_count(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
