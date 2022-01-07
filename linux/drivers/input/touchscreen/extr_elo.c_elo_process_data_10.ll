; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elo.c_elo_process_data_10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elo.c_elo_process_data_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elo = type { i8*, i64, i32, i8, i32, i32, %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@ELO10_LEAD_BYTE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [29 x i8] c"unsynchronized data: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"bad checksum: 0x%02x, expected 0x%02x\0A\00", align 1
@ELO10_TOUCH_PACKET = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unexpected packet: 0x%02x\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ELO10_PRESSURE = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ELO10_TOUCH = common dso_local global i32 0, align 4
@ELO10_ACK_PACKET = common dso_local global i32 0, align 4
@ELO10_PACKET_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elo*, i8)* @elo_process_data_10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elo_process_data_10(%struct.elo* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.elo*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.input_dev*, align 8
  store %struct.elo* %0, %struct.elo** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.elo*, %struct.elo** %3, align 8
  %7 = getelementptr inbounds %struct.elo, %struct.elo* %6, i32 0, i32 7
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %5, align 8
  %9 = load i8, i8* %4, align 1
  %10 = load %struct.elo*, %struct.elo** %3, align 8
  %11 = getelementptr inbounds %struct.elo, %struct.elo* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.elo*, %struct.elo** %3, align 8
  %14 = getelementptr inbounds %struct.elo, %struct.elo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8 %9, i8* %16, align 1
  %17 = load %struct.elo*, %struct.elo** %3, align 8
  %18 = getelementptr inbounds %struct.elo, %struct.elo* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %18, align 8
  switch i64 %19, label %223 [
    i64 0, label %21
    i64 9, label %39
  ]

21:                                               ; preds = %2
  %22 = load %struct.elo*, %struct.elo** %3, align 8
  %23 = getelementptr inbounds %struct.elo, %struct.elo* %22, i32 0, i32 2
  store i32 170, i32* %23, align 8
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @ELO10_LEAD_BYTE, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.elo*, %struct.elo** %3, align 8
  %31 = getelementptr inbounds %struct.elo, %struct.elo* %30, i32 0, i32 6
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8, i8* %4, align 1
  %35 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 zeroext %34)
  %36 = load %struct.elo*, %struct.elo** %3, align 8
  %37 = getelementptr inbounds %struct.elo, %struct.elo* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %21
  br label %223

39:                                               ; preds = %2
  %40 = load %struct.elo*, %struct.elo** %3, align 8
  %41 = getelementptr inbounds %struct.elo, %struct.elo* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = load %struct.elo*, %struct.elo** %3, align 8
  %45 = getelementptr inbounds %struct.elo, %struct.elo* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.elo*, %struct.elo** %3, align 8
  %50 = getelementptr inbounds %struct.elo, %struct.elo* %49, i32 0, i32 6
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8, i8* %4, align 1
  %54 = load %struct.elo*, %struct.elo** %3, align 8
  %55 = getelementptr inbounds %struct.elo, %struct.elo* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %53, i32 %56)
  br label %223

58:                                               ; preds = %39
  %59 = load %struct.elo*, %struct.elo** %3, align 8
  %60 = getelementptr inbounds %struct.elo, %struct.elo* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load %struct.elo*, %struct.elo** %3, align 8
  %66 = getelementptr inbounds %struct.elo, %struct.elo* %65, i32 0, i32 3
  %67 = load i8, i8* %66, align 4
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %64, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %58
  %71 = load %struct.elo*, %struct.elo** %3, align 8
  %72 = getelementptr inbounds %struct.elo, %struct.elo* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @ELO10_TOUCH_PACKET, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %70
  %81 = load %struct.elo*, %struct.elo** %3, align 8
  %82 = getelementptr inbounds %struct.elo, %struct.elo* %81, i32 0, i32 6
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.elo*, %struct.elo** %3, align 8
  %86 = getelementptr inbounds %struct.elo, %struct.elo* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %89)
  br label %91

91:                                               ; preds = %80, %70
  br label %223

92:                                               ; preds = %58
  %93 = load %struct.elo*, %struct.elo** %3, align 8
  %94 = getelementptr inbounds %struct.elo, %struct.elo* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @ELO10_TOUCH_PACKET, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %98, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @likely(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %181

105:                                              ; preds = %92
  %106 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %107 = load i32, i32* @ABS_X, align 4
  %108 = load %struct.elo*, %struct.elo** %3, align 8
  %109 = getelementptr inbounds %struct.elo, %struct.elo* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 4
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl i32 %113, 8
  %115 = load %struct.elo*, %struct.elo** %3, align 8
  %116 = getelementptr inbounds %struct.elo, %struct.elo* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %114, %120
  %122 = call i32 @input_report_abs(%struct.input_dev* %106, i32 %107, i32 %121)
  %123 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %124 = load i32, i32* @ABS_Y, align 4
  %125 = load %struct.elo*, %struct.elo** %3, align 8
  %126 = getelementptr inbounds %struct.elo, %struct.elo* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 6
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = shl i32 %130, 8
  %132 = load %struct.elo*, %struct.elo** %3, align 8
  %133 = getelementptr inbounds %struct.elo, %struct.elo* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 5
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %131, %137
  %139 = call i32 @input_report_abs(%struct.input_dev* %123, i32 %124, i32 %138)
  %140 = load %struct.elo*, %struct.elo** %3, align 8
  %141 = getelementptr inbounds %struct.elo, %struct.elo* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = load i32, i32* @ELO10_PRESSURE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %105
  %150 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %151 = load i32, i32* @ABS_PRESSURE, align 4
  %152 = load %struct.elo*, %struct.elo** %3, align 8
  %153 = getelementptr inbounds %struct.elo, %struct.elo* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 8
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = shl i32 %157, 8
  %159 = load %struct.elo*, %struct.elo** %3, align 8
  %160 = getelementptr inbounds %struct.elo, %struct.elo* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 7
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = or i32 %158, %164
  %166 = call i32 @input_report_abs(%struct.input_dev* %150, i32 %151, i32 %165)
  br label %167

167:                                              ; preds = %149, %105
  %168 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %169 = load i32, i32* @BTN_TOUCH, align 4
  %170 = load %struct.elo*, %struct.elo** %3, align 8
  %171 = getelementptr inbounds %struct.elo, %struct.elo* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 2
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = load i32, i32* @ELO10_TOUCH, align 4
  %177 = and i32 %175, %176
  %178 = call i32 @input_report_key(%struct.input_dev* %168, i32 %169, i32 %177)
  %179 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %180 = call i32 @input_sync(%struct.input_dev* %179)
  br label %222

181:                                              ; preds = %92
  %182 = load %struct.elo*, %struct.elo** %3, align 8
  %183 = getelementptr inbounds %struct.elo, %struct.elo* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = load i32, i32* @ELO10_ACK_PACKET, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %206

190:                                              ; preds = %181
  %191 = load %struct.elo*, %struct.elo** %3, align 8
  %192 = getelementptr inbounds %struct.elo, %struct.elo* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %196, 48
  br i1 %197, label %198, label %202

198:                                              ; preds = %190
  %199 = load i8, i8* @ELO10_TOUCH_PACKET, align 1
  %200 = load %struct.elo*, %struct.elo** %3, align 8
  %201 = getelementptr inbounds %struct.elo, %struct.elo* %200, i32 0, i32 3
  store i8 %199, i8* %201, align 4
  br label %202

202:                                              ; preds = %198, %190
  %203 = load %struct.elo*, %struct.elo** %3, align 8
  %204 = getelementptr inbounds %struct.elo, %struct.elo* %203, i32 0, i32 5
  %205 = call i32 @complete(i32* %204)
  br label %221

206:                                              ; preds = %181
  %207 = load %struct.elo*, %struct.elo** %3, align 8
  %208 = getelementptr inbounds %struct.elo, %struct.elo* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.elo*, %struct.elo** %3, align 8
  %211 = getelementptr inbounds %struct.elo, %struct.elo* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = bitcast i8* %213 to i32*
  %215 = load i32, i32* @ELO10_PACKET_LEN, align 4
  %216 = call i32 @memcpy(i32 %209, i32* %214, i32 %215)
  %217 = load i32, i32* @ELO10_ACK_PACKET, align 4
  %218 = trunc i32 %217 to i8
  %219 = load %struct.elo*, %struct.elo** %3, align 8
  %220 = getelementptr inbounds %struct.elo, %struct.elo* %219, i32 0, i32 3
  store i8 %218, i8* %220, align 4
  br label %221

221:                                              ; preds = %206, %202
  br label %222

222:                                              ; preds = %221, %167
  br label %223

223:                                              ; preds = %2, %222, %91, %48, %38
  %224 = load i8, i8* %4, align 1
  %225 = zext i8 %224 to i32
  %226 = load %struct.elo*, %struct.elo** %3, align 8
  %227 = getelementptr inbounds %struct.elo, %struct.elo* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, %225
  store i32 %229, i32* %227, align 8
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
