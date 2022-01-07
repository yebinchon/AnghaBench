; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_fsia6b.c_fsia6b_serio_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_fsia6b.c_fsia6b_serio_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.serio_driver = type { i32 }
%struct.fsia6b = type { %struct.input_dev*, i32, %struct.TYPE_5__ }
%struct.input_dev = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@DRIVER_DESC = common dso_local global i32 0, align 4
@BUS_RS232 = common dso_local global i32 0, align 4
@SERIO_FSIA6B = common dso_local global i32 0, align 4
@IBUS_SERVO_COUNT = common dso_local global i32 0, align 4
@fsia6b_axes = common dso_local global i32* null, align 8
@switch_config = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Invalid switch configuration supplied for fsia6b.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @fsia6b_serio_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsia6b_serio_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.fsia6b*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.fsia6b* @kzalloc(i32 40, i32 %12)
  store %struct.fsia6b* %13, %struct.fsia6b** %6, align 8
  %14 = load %struct.fsia6b*, %struct.fsia6b** %6, align 8
  %15 = icmp ne %struct.fsia6b* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %180

19:                                               ; preds = %2
  %20 = load %struct.fsia6b*, %struct.fsia6b** %6, align 8
  %21 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.fsia6b*, %struct.fsia6b** %6, align 8
  %24 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @SYNC, align 4
  %27 = load %struct.fsia6b*, %struct.fsia6b** %6, align 8
  %28 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.serio*, %struct.serio** %4, align 8
  %31 = load %struct.fsia6b*, %struct.fsia6b** %6, align 8
  %32 = call i32 @serio_set_drvdata(%struct.serio* %30, %struct.fsia6b* %31)
  %33 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %33, %struct.input_dev** %7, align 8
  %34 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %35 = icmp ne %struct.input_dev* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %19
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %174

39:                                               ; preds = %19
  %40 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %41 = load %struct.fsia6b*, %struct.fsia6b** %6, align 8
  %42 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %41, i32 0, i32 0
  store %struct.input_dev* %40, %struct.input_dev** %42, align 8
  %43 = load %struct.fsia6b*, %struct.fsia6b** %6, align 8
  %44 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.serio*, %struct.serio** %4, align 8
  %47 = getelementptr inbounds %struct.serio, %struct.serio* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @snprintf(i32 %45, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @DRIVER_DESC, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.fsia6b*, %struct.fsia6b** %6, align 8
  %54 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @BUS_RS232, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @SERIO_FSIA6B, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.serio*, %struct.serio** %4, align 8
  %67 = getelementptr inbounds %struct.serio, %struct.serio* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 256, i32* %75, align 8
  %76 = load %struct.serio*, %struct.serio** %4, align 8
  %77 = getelementptr inbounds %struct.serio, %struct.serio* %76, i32 0, i32 1
  %78 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32* %77, i32** %80, align 8
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %93, %39
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @IBUS_SERVO_COUNT, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %87 = load i32*, i32** @fsia6b_axes, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @input_set_abs_params(%struct.input_dev* %86, i32 %91, i32 1000, i32 2000, i32 2, i32 2)
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %81

96:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %149, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @IBUS_SERVO_COUNT, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %152

101:                                              ; preds = %97
  %102 = load i8*, i8** @switch_config, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp slt i32 %107, 48
  br i1 %108, label %117, label %109

109:                                              ; preds = %101
  %110 = load i8*, i8** @switch_config, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp sgt i32 %115, 51
  br i1 %116, label %117, label %125

117:                                              ; preds = %109, %101
  %118 = load %struct.fsia6b*, %struct.fsia6b** %6, align 8
  %119 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %118, i32 0, i32 0
  %120 = load %struct.input_dev*, %struct.input_dev** %119, align 8
  %121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 0
  %122 = call i32 @dev_err(%struct.TYPE_8__* %121, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %8, align 4
  br label %171

125:                                              ; preds = %109
  store i32 49, i32* %10, align 4
  br label %126

126:                                              ; preds = %145, %125
  %127 = load i32, i32* %10, align 4
  %128 = load i8*, i8** @switch_config, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sle i32 %127, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %126
  %136 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %137 = load i32, i32* @EV_KEY, align 4
  %138 = load i64, i64* @BTN_0, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = call i32 @input_set_capability(%struct.input_dev* %136, i32 %137, i64 %141)
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %135
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %126

148:                                              ; preds = %126
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %97

152:                                              ; preds = %97
  %153 = load %struct.serio*, %struct.serio** %4, align 8
  %154 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %155 = call i32 @serio_open(%struct.serio* %153, %struct.serio_driver* %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %171

159:                                              ; preds = %152
  %160 = load %struct.fsia6b*, %struct.fsia6b** %6, align 8
  %161 = getelementptr inbounds %struct.fsia6b, %struct.fsia6b* %160, i32 0, i32 0
  %162 = load %struct.input_dev*, %struct.input_dev** %161, align 8
  %163 = call i32 @input_register_device(%struct.input_dev* %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %168

167:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %180

168:                                              ; preds = %166
  %169 = load %struct.serio*, %struct.serio** %4, align 8
  %170 = call i32 @serio_close(%struct.serio* %169)
  br label %171

171:                                              ; preds = %168, %158, %117
  %172 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %173 = call i32 @input_free_device(%struct.input_dev* %172)
  br label %174

174:                                              ; preds = %171, %36
  %175 = load %struct.serio*, %struct.serio** %4, align 8
  %176 = call i32 @serio_set_drvdata(%struct.serio* %175, %struct.fsia6b* null)
  %177 = load %struct.fsia6b*, %struct.fsia6b** %6, align 8
  %178 = call i32 @kfree(%struct.fsia6b* %177)
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %174, %167, %16
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.fsia6b* @kzalloc(i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.fsia6b*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i64) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.fsia6b*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
