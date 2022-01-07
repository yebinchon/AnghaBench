; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_process_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_process_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32*, i64, i64, i32, %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@psmouse_a4tech_2wheels = common dso_local global i32 0, align 4
@BTN_SIDE = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psmouse_process_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 5
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %4, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %17 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %21, i32* %2, align 4
  br label %171

22:                                               ; preds = %1
  %23 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %24 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %156 [
    i32 129, label %28
    i32 130, label %36
    i32 131, label %100
    i32 128, label %124
    i32 132, label %142
  ]

28:                                               ; preds = %22
  %29 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %30 = load i32, i32* @REL_WHEEL, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @input_report_rel(%struct.input_dev* %29, i32 %30, i32 %34)
  br label %157

36:                                               ; preds = %22
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 192
  switch i32 %40, label %99 [
    i32 128, label %41
    i32 64, label %50
    i32 0, label %59
    i32 192, label %59
  ]

41:                                               ; preds = %36
  %42 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %43 = load i32, i32* @REL_WHEEL, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sign_extend32(i32 %46, i32 5)
  %48 = sub nsw i32 0, %47
  %49 = call i32 @input_report_rel(%struct.input_dev* %42, i32 %43, i32 %48)
  br label %99

50:                                               ; preds = %36
  %51 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %52 = load i32, i32* @REL_HWHEEL, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sign_extend32(i32 %55, i32 5)
  %57 = sub nsw i32 0, %56
  %58 = call i32 @input_report_rel(%struct.input_dev* %51, i32 %52, i32 %57)
  br label %99

59:                                               ; preds = %36, %36
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sign_extend32(i32 %62, i32 3)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @psmouse_a4tech_2wheels, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @abs(i32 %67) #3
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %72 = load i32, i32* @REL_HWHEEL, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sdiv i32 %73, 2
  %75 = call i32 @input_report_rel(%struct.input_dev* %71, i32 %72, i32 %74)
  br label %82

76:                                               ; preds = %66, %59
  %77 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %78 = load i32, i32* @REL_WHEEL, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @input_report_rel(%struct.input_dev* %77, i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %84 = load i32, i32* @BTN_SIDE, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @BIT(i32 4)
  %89 = and i32 %87, %88
  %90 = call i32 @input_report_key(%struct.input_dev* %83, i32 %84, i32 %89)
  %91 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %92 = load i32, i32* @BTN_EXTRA, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @BIT(i32 5)
  %97 = and i32 %95, %96
  %98 = call i32 @input_report_key(%struct.input_dev* %91, i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %36, %82, %50, %41
  br label %157

100:                                              ; preds = %22
  %101 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %102 = load i32, i32* @REL_WHEEL, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 0, %105
  %107 = call i32 @input_report_rel(%struct.input_dev* %101, i32 %102, i32 %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %109 = load i32, i32* @BTN_SIDE, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @BIT(i32 6)
  %114 = and i32 %112, %113
  %115 = call i32 @input_report_key(%struct.input_dev* %108, i32 %109, i32 %114)
  %116 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %117 = load i32, i32* @BTN_EXTRA, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @BIT(i32 7)
  %122 = and i32 %120, %121
  %123 = call i32 @input_report_key(%struct.input_dev* %116, i32 %117, i32 %122)
  br label %157

124:                                              ; preds = %22
  %125 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %126 = load i32, i32* @BTN_EXTRA, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @BIT(i32 3)
  %131 = and i32 %129, %130
  %132 = call i32 @input_report_key(%struct.input_dev* %125, i32 %126, i32 %131)
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 64
  %137 = shl i32 %136, 1
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %157

142:                                              ; preds = %22
  %143 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %144 = load i32, i32* @BTN_SIDE, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @BIT(i32 3)
  %149 = and i32 %147, %148
  %150 = call i32 @input_report_key(%struct.input_dev* %143, i32 %144, i32 %149)
  %151 = call i32 @BIT(i32 3)
  %152 = load i32*, i32** %5, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %157

156:                                              ; preds = %22
  br label %157

157:                                              ; preds = %156, %142, %124, %100, %99, %28
  %158 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %159 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %5, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @psmouse_report_standard_packet(%struct.input_dev* %165, i32* %166)
  %168 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %169 = call i32 @input_sync(%struct.input_dev* %168)
  %170 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %157, %20
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @psmouse_report_standard_packet(%struct.input_dev*, i32*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
