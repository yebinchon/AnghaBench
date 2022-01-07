; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_maplecontrol.c_probe_maple_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_maplecontrol.c_probe_maple_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.maple_device = type { %struct.maple_driver*, i32, i32, %struct.TYPE_4__ }
%struct.maple_driver = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.dc_pad = type { %struct.maple_device*, %struct.input_dev* }
%struct.input_dev = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i32*, i64*, i64*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, %struct.dc_pad* }

@probe_maple_controller.btn_bit = internal constant [32 x i16] [i16 133, i16 134, i16 135, i16 131, i16 -1, i16 -1, i16 -1, i16 -1, i16 128, i16 129, i16 130, i16 132, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@probe_maple_controller.abs_bit = internal constant [32 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 142, i16 142, i16 143, i16 143, i16 -1, i16 -1, i16 -1, i16 -1, i16 140, i16 140, i16 141, i16 141, i16 144, i16 145, i16 137, i16 136, i16 139, i16 138, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dc_pad_open = common dso_local global i32 0, align 4
@dc_pad_close = common dso_local global i32 0, align 4
@BTN_JOYSTICK = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_HAT3Y = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @probe_maple_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_maple_controller(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.maple_device*, align 8
  %5 = alloca %struct.maple_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_pad*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.maple_device* @to_maple_dev(%struct.device* %11)
  store %struct.maple_device* %12, %struct.maple_device** %4, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.maple_driver* @to_maple_driver(i32 %15)
  store %struct.maple_driver* %16, %struct.maple_driver** %5, align 8
  %17 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %18 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be32_to_cpu(i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.dc_pad* @kzalloc(i32 16, i32 %24)
  store %struct.dc_pad* %25, %struct.dc_pad** %8, align 8
  %26 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %26, %struct.input_dev** %9, align 8
  %27 = load %struct.dc_pad*, %struct.dc_pad** %8, align 8
  %28 = icmp ne %struct.dc_pad* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %31 = icmp ne %struct.input_dev* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %184

35:                                               ; preds = %29
  %36 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %37 = load %struct.dc_pad*, %struct.dc_pad** %8, align 8
  %38 = getelementptr inbounds %struct.dc_pad, %struct.dc_pad* %37, i32 0, i32 1
  store %struct.input_dev* %36, %struct.input_dev** %38, align 8
  %39 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %40 = load %struct.dc_pad*, %struct.dc_pad** %8, align 8
  %41 = getelementptr inbounds %struct.dc_pad, %struct.dc_pad* %40, i32 0, i32 0
  store %struct.maple_device* %39, %struct.maple_device** %41, align 8
  %42 = load i32, i32* @dc_pad_open, align 4
  %43 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %44 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @dc_pad_close, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %93, %35
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %96

51:                                               ; preds = %48
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = shl i32 1, %53
  %55 = sext i32 %54 to i64
  %56 = and i64 %52, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [32 x i16], [32 x i16]* @probe_maple_controller.btn_bit, i64 0, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [32 x i16], [32 x i16]* @probe_maple_controller.btn_bit, i64 0, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 5
  %72 = load i64*, i64** %71, align 8
  %73 = call i32 @__set_bit(i16 signext %69, i64* %72)
  br label %91

74:                                               ; preds = %58
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [32 x i16], [32 x i16]* @probe_maple_controller.abs_bit, i64 0, i64 %76
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i32
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [32 x i16], [32 x i16]* @probe_maple_controller.abs_bit, i64 0, i64 %83
  %85 = load i16, i16* %84, align 2
  %86 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 4
  %88 = load i64*, i64** %87, align 8
  %89 = call i32 @__set_bit(i16 signext %85, i64* %88)
  br label %90

90:                                               ; preds = %81, %74
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91, %51
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %48

96:                                               ; preds = %48
  %97 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 5
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* @BTN_JOYSTICK, align 4
  %101 = call i64 @BIT_WORD(i32 %100)
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %96
  %106 = load i32, i32* @EV_KEY, align 4
  %107 = call i32 @BIT_MASK(i32 %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %107
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %105, %96
  %115 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %116 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %115, i32 0, i32 4
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load i32, i32* @EV_ABS, align 4
  %123 = call i32 @BIT_MASK(i32 %122)
  %124 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %125 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %123
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %121, %114
  store i32 137, i32* %6, align 4
  br label %131

131:                                              ; preds = %138, %130
  %132 = load i32, i32* %6, align 4
  %133 = icmp sle i32 %132, 145
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @input_set_abs_params(%struct.input_dev* %135, i32 %136, i32 0, i32 255, i32 0, i32 0)
  br label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %131

141:                                              ; preds = %131
  store i32 143, i32* %6, align 4
  br label %142

142:                                              ; preds = %150, %141
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @ABS_HAT3Y, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @input_set_abs_params(%struct.input_dev* %147, i32 %148, i32 1, i32 -1, i32 0, i32 0)
  br label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %142

153:                                              ; preds = %142
  %154 = load %struct.dc_pad*, %struct.dc_pad** %8, align 8
  %155 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %156 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  store %struct.dc_pad* %154, %struct.dc_pad** %157, align 8
  %158 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %159 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %158, i32 0, i32 2
  %160 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %161 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  store i32* %159, i32** %162, align 8
  %163 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %164 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %167 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @BUS_HOST, align 4
  %169 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %170 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %173 = call i32 @input_register_device(%struct.input_dev* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %153
  br label %184

177:                                              ; preds = %153
  %178 = load %struct.maple_driver*, %struct.maple_driver** %5, align 8
  %179 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %180 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %179, i32 0, i32 0
  store %struct.maple_driver* %178, %struct.maple_driver** %180, align 8
  %181 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %182 = load %struct.dc_pad*, %struct.dc_pad** %8, align 8
  %183 = call i32 @maple_set_drvdata(%struct.maple_device* %181, %struct.dc_pad* %182)
  store i32 0, i32* %2, align 4
  br label %192

184:                                              ; preds = %176, %32
  %185 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %186 = call i32 @input_free_device(%struct.input_dev* %185)
  %187 = load %struct.dc_pad*, %struct.dc_pad** %8, align 8
  %188 = call i32 @kfree(%struct.dc_pad* %187)
  %189 = load %struct.maple_device*, %struct.maple_device** %4, align 8
  %190 = call i32 @maple_set_drvdata(%struct.maple_device* %189, %struct.dc_pad* null)
  %191 = load i32, i32* %7, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %184, %177
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.maple_device* @to_maple_dev(%struct.device*) #1

declare dso_local %struct.maple_driver* @to_maple_driver(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local %struct.dc_pad* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @__set_bit(i16 signext, i64*) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @maple_set_drvdata(%struct.maple_device*, %struct.dc_pad*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.dc_pad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
