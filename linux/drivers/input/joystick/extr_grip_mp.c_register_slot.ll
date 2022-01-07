; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_register_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_register_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grip_mp = type { %struct.TYPE_6__*, %struct.grip_port** }
%struct.TYPE_6__ = type { i32 }
%struct.grip_port = type { i64, i32, i64, %struct.input_dev* }
%struct.input_dev = type { i32*, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@grip_name = common dso_local global i32* null, align 8
@BUS_GAMEPORT = common dso_local global i32 0, align 4
@GAMEPORT_ID_VENDOR_GRAVIS = common dso_local global i32 0, align 4
@grip_open = common dso_local global i32 0, align 4
@grip_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@grip_abs = common dso_local global i32** null, align 8
@grip_btn = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.grip_mp*)* @register_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_slot(i32 %0, %struct.grip_mp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.grip_mp*, align 8
  %6 = alloca %struct.grip_port*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.grip_mp* %1, %struct.grip_mp** %5, align 8
  %11 = load %struct.grip_mp*, %struct.grip_mp** %5, align 8
  %12 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %11, i32 0, i32 1
  %13 = load %struct.grip_port**, %struct.grip_port*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.grip_port*, %struct.grip_port** %13, i64 %15
  %17 = load %struct.grip_port*, %struct.grip_port** %16, align 8
  store %struct.grip_port* %17, %struct.grip_port** %6, align 8
  %18 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %18, %struct.input_dev** %7, align 8
  %19 = load %struct.grip_port*, %struct.grip_port** %6, align 8
  %20 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %19, i32 0, i32 3
  store %struct.input_dev* %18, %struct.input_dev** %20, align 8
  %21 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %22 = icmp ne %struct.input_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %149

26:                                               ; preds = %2
  %27 = load i32*, i32** @grip_name, align 8
  %28 = load %struct.grip_port*, %struct.grip_port** %6, align 8
  %29 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @BUS_GAMEPORT, align 4
  %36 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @GAMEPORT_ID_VENDOR_GRAVIS, align 4
  %40 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.grip_port*, %struct.grip_port** %6, align 8
  %44 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 256, %45
  %47 = trunc i64 %46 to i32
  %48 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 256, i32* %53, align 4
  %54 = load %struct.grip_mp*, %struct.grip_mp** %5, align 8
  %55 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32* %57, i32** %60, align 8
  %61 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %62 = load %struct.grip_mp*, %struct.grip_mp** %5, align 8
  %63 = call i32 @input_set_drvdata(%struct.input_dev* %61, %struct.grip_mp* %62)
  %64 = load i32, i32* @grip_open, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @grip_close, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @EV_KEY, align 4
  %71 = call i32 @BIT_MASK(i32 %70)
  %72 = load i32, i32* @EV_ABS, align 4
  %73 = call i32 @BIT_MASK(i32 %72)
  %74 = or i32 %71, %73
  %75 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %95, %26
  %80 = load i32**, i32*** @grip_abs, align 8
  %81 = load %struct.grip_port*, %struct.grip_port** %6, align 8
  %82 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32*, i32** %80, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %79
  %92 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @input_set_abs_params(%struct.input_dev* %92, i32 %93, i32 -1, i32 1, i32 0, i32 0)
  br label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %79

98:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %121, %98
  %100 = load i32**, i32*** @grip_btn, align 8
  %101 = load %struct.grip_port*, %struct.grip_port** %6, align 8
  %102 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32*, i32** %100, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %9, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %99
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @set_bit(i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %114, %111
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %99

124:                                              ; preds = %99
  %125 = load %struct.grip_port*, %struct.grip_port** %6, align 8
  %126 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %125, i32 0, i32 3
  %127 = load %struct.input_dev*, %struct.input_dev** %126, align 8
  %128 = call i32 @input_register_device(%struct.input_dev* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load %struct.grip_port*, %struct.grip_port** %6, align 8
  %133 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %132, i32 0, i32 3
  %134 = load %struct.input_dev*, %struct.input_dev** %133, align 8
  %135 = call i32 @input_free_device(%struct.input_dev* %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %3, align 4
  br label %149

137:                                              ; preds = %124
  %138 = load %struct.grip_port*, %struct.grip_port** %6, align 8
  %139 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %138, i32 0, i32 1
  store i32 1, i32* %139, align 8
  %140 = load %struct.grip_port*, %struct.grip_port** %6, align 8
  %141 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load %struct.grip_mp*, %struct.grip_mp** %5, align 8
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @report_slot(%struct.grip_mp* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %137
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %131, %23
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.grip_mp*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @report_slot(%struct.grip_mp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
