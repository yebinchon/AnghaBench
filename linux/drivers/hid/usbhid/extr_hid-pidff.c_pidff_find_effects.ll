; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_find_effects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_find_effects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_device = type { i32*, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.input_dev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"effect type number %d is invalid\0A\00", align 1
@PID_CONSTANT = common dso_local global i64 0, align 8
@FF_CONSTANT = common dso_local global i32 0, align 4
@PID_RAMP = common dso_local global i64 0, align 8
@FF_RAMP = common dso_local global i32 0, align 4
@PID_SQUARE = common dso_local global i64 0, align 8
@FF_SQUARE = common dso_local global i32 0, align 4
@FF_PERIODIC = common dso_local global i32 0, align 4
@PID_SINE = common dso_local global i64 0, align 8
@FF_SINE = common dso_local global i32 0, align 4
@PID_TRIANGLE = common dso_local global i64 0, align 8
@FF_TRIANGLE = common dso_local global i32 0, align 4
@PID_SAW_UP = common dso_local global i64 0, align 8
@FF_SAW_UP = common dso_local global i32 0, align 4
@PID_SAW_DOWN = common dso_local global i64 0, align 8
@FF_SAW_DOWN = common dso_local global i32 0, align 4
@PID_SPRING = common dso_local global i64 0, align 8
@FF_SPRING = common dso_local global i32 0, align 4
@PID_DAMPER = common dso_local global i64 0, align 8
@FF_DAMPER = common dso_local global i32 0, align 4
@PID_INERTIA = common dso_local global i64 0, align 8
@FF_INERTIA = common dso_local global i32 0, align 4
@PID_FRICTION = common dso_local global i64 0, align 8
@FF_FRICTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pidff_device*, %struct.input_dev*)* @pidff_find_effects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidff_find_effects(%struct.pidff_device* %0, %struct.input_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pidff_device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pidff_device* %0, %struct.pidff_device** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %48, %2
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 4
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %14 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %21 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %31 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %29, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %12
  %42 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %43 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @hid_err(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %3, align 4
  br label %231

47:                                               ; preds = %12
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %8

51:                                               ; preds = %8
  %52 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %53 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @PID_CONSTANT, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load i32, i32* @FF_CONSTANT, align 4
  %61 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @set_bit(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %51
  %66 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %67 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @PID_RAMP, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32, i32* @FF_RAMP, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @set_bit(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %65
  %80 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %81 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @PID_SQUARE, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %79
  %88 = load i32, i32* @FF_SQUARE, align 4
  %89 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @set_bit(i32 %88, i32 %91)
  %93 = load i32, i32* @FF_PERIODIC, align 4
  %94 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @set_bit(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %87, %79
  %99 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %100 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @PID_SINE, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = load i32, i32* @FF_SINE, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @set_bit(i32 %107, i32 %110)
  %112 = load i32, i32* @FF_PERIODIC, align 4
  %113 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @set_bit(i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %106, %98
  %118 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %119 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @PID_TRIANGLE, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %117
  %126 = load i32, i32* @FF_TRIANGLE, align 4
  %127 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %128 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @set_bit(i32 %126, i32 %129)
  %131 = load i32, i32* @FF_PERIODIC, align 4
  %132 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %133 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @set_bit(i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %125, %117
  %137 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %138 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @PID_SAW_UP, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %136
  %145 = load i32, i32* @FF_SAW_UP, align 4
  %146 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %147 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @set_bit(i32 %145, i32 %148)
  %150 = load i32, i32* @FF_PERIODIC, align 4
  %151 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %152 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @set_bit(i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %144, %136
  %156 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %157 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @PID_SAW_DOWN, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %155
  %164 = load i32, i32* @FF_SAW_DOWN, align 4
  %165 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %166 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @set_bit(i32 %164, i32 %167)
  %169 = load i32, i32* @FF_PERIODIC, align 4
  %170 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %171 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @set_bit(i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %163, %155
  %175 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %176 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @PID_SPRING, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %174
  %183 = load i32, i32* @FF_SPRING, align 4
  %184 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %185 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @set_bit(i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %182, %174
  %189 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %190 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* @PID_DAMPER, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %188
  %197 = load i32, i32* @FF_DAMPER, align 4
  %198 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %199 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @set_bit(i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %196, %188
  %203 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %204 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @PID_INERTIA, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %202
  %211 = load i32, i32* @FF_INERTIA, align 4
  %212 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %213 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @set_bit(i32 %211, i32 %214)
  br label %216

216:                                              ; preds = %210, %202
  %217 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %218 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* @PID_FRICTION, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %216
  %225 = load i32, i32* @FF_FRICTION, align 4
  %226 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %227 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @set_bit(i32 %225, i32 %228)
  br label %230

230:                                              ; preds = %224, %216
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %230, %41
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32 @hid_err(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
