; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-packets.c_iforce_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-packets.c_iforce_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_RUDDER = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i32 0, align 4
@ABS_GAS = common dso_local global i32 0, align 4
@ABS_BRAKE = common dso_local global i32 0, align 4
@BTN_DEAD = common dso_local global i32 0, align 4
@FF_CORE_IS_PLAYED = common dso_local global i32 0, align 4
@FF_STATUS_PLAYING = common dso_local global i32 0, align 4
@FF_STATUS_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iforce_process_packet(%struct.iforce* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.iforce*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iforce* %0, %struct.iforce** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.iforce*, %struct.iforce** %5, align 8
  %13 = getelementptr inbounds %struct.iforce, %struct.iforce* %12, i32 0, i32 1
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %155 [
    i32 1, label %16
    i32 3, label %57
    i32 2, label %82
  ]

16:                                               ; preds = %4
  %17 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %18 = load i32, i32* @ABS_X, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @get_unaligned_le16(i32* %19)
  %21 = call i32 @input_report_abs(%struct.input_dev* %17, i32 %18, i32 %20)
  %22 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %23 = load i32, i32* @ABS_Y, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = call i32 @get_unaligned_le16(i32* %25)
  %27 = call i32 @input_report_abs(%struct.input_dev* %22, i32 %23, i32 %26)
  %28 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %29 = load i32, i32* @ABS_THROTTLE, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 255, %32
  %34 = call i32 @input_report_abs(%struct.input_dev* %28, i32 %29, i32 %33)
  %35 = load i64, i64* %8, align 8
  %36 = icmp uge i64 %35, 8
  br i1 %36, label %37, label %51

37:                                               ; preds = %16
  %38 = load i32, i32* @ABS_RUDDER, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @test_bit(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %46 = load i32, i32* @ABS_RUDDER, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @input_report_abs(%struct.input_dev* %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %44, %37, %16
  %52 = load %struct.iforce*, %struct.iforce** %5, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @iforce_report_hats_buttons(%struct.iforce* %52, i32* %53)
  %55 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %56 = call i32 @input_sync(%struct.input_dev* %55)
  br label %155

57:                                               ; preds = %4
  %58 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %59 = load i32, i32* @ABS_WHEEL, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @get_unaligned_le16(i32* %60)
  %62 = call i32 @input_report_abs(%struct.input_dev* %58, i32 %59, i32 %61)
  %63 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %64 = load i32, i32* @ABS_GAS, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 255, %67
  %69 = call i32 @input_report_abs(%struct.input_dev* %63, i32 %64, i32 %68)
  %70 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %71 = load i32, i32* @ABS_BRAKE, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 255, %74
  %76 = call i32 @input_report_abs(%struct.input_dev* %70, i32 %71, i32 %75)
  %77 = load %struct.iforce*, %struct.iforce** %5, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @iforce_report_hats_buttons(%struct.iforce* %77, i32* %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %81 = call i32 @input_sync(%struct.input_dev* %80)
  br label %155

82:                                               ; preds = %4
  %83 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %84 = load i32, i32* @BTN_DEAD, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 2
  %89 = call i32 @input_report_key(%struct.input_dev* %83, i32 %84, i32 %88)
  %90 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %91 = call i32 @input_sync(%struct.input_dev* %90)
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 127
  store i32 %95, i32* %10, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 128
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %82
  %102 = load i32, i32* @FF_CORE_IS_PLAYED, align 4
  %103 = load %struct.iforce*, %struct.iforce** %5, align 8
  %104 = getelementptr inbounds %struct.iforce, %struct.iforce* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @test_and_set_bit(i32 %102, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %101
  %114 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @FF_STATUS_PLAYING, align 4
  %117 = call i32 @input_report_ff_status(%struct.input_dev* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %101
  br label %137

119:                                              ; preds = %82
  %120 = load i32, i32* @FF_CORE_IS_PLAYED, align 4
  %121 = load %struct.iforce*, %struct.iforce** %5, align 8
  %122 = getelementptr inbounds %struct.iforce, %struct.iforce* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @test_and_clear_bit(i32 %120, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %119
  %132 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @FF_STATUS_STOPPED, align 4
  %135 = call i32 @input_report_ff_status(%struct.input_dev* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %119
  br label %137

137:                                              ; preds = %136, %118
  store i32 3, i32* %11, align 4
  br label %138

138:                                              ; preds = %151, %137
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %8, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = load %struct.iforce*, %struct.iforce** %5, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = call i32 @get_unaligned_le16(i32* %148)
  %150 = call i32 @mark_core_as_ready(%struct.iforce* %144, i32 %149)
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 2
  store i32 %153, i32* %11, align 4
  br label %138

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %4, %154, %57, %51
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @iforce_report_hats_buttons(%struct.iforce*, i32*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @input_report_ff_status(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @mark_core_as_ready(%struct.iforce*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
