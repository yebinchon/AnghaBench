; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_logips2pp.c_ps2pp_process_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_logips2pp.c_ps2pp_process_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_SIDE = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@BTN_TASK = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Received PS2++ packet #%x, but don't know how to handle.\0A\00", align 1
@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @ps2pp_process_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2pp_process_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 2
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %4, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %17, i32* %2, align 4
  br label %169

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 72
  %23 = icmp eq i32 %22, 72
  br i1 %23, label %24, label %161

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %161

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 48
  %39 = or i32 %34, %38
  switch i32 %39, label %143 [
    i32 13, label %40
    i32 14, label %75
    i32 15, label %116
  ]

40:                                               ; preds = %30
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 128
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @REL_HWHEEL, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @REL_WHEEL, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sign_extend32(i32 %55, i32 3)
  %57 = sub nsw i32 0, %56
  %58 = call i32 @input_report_rel(%struct.input_dev* %41, i32 %52, i32 %57)
  %59 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %60 = load i32, i32* @BTN_SIDE, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BIT(i32 4)
  %65 = and i32 %63, %64
  %66 = call i32 @input_report_key(%struct.input_dev* %59, i32 %60, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %68 = load i32, i32* @BTN_EXTRA, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @BIT(i32 5)
  %73 = and i32 %71, %72
  %74 = call i32 @input_report_key(%struct.input_dev* %67, i32 %68, i32 %73)
  br label %155

75:                                               ; preds = %30
  %76 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %77 = load i32, i32* @BTN_SIDE, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BIT(i32 0)
  %82 = and i32 %80, %81
  %83 = call i32 @input_report_key(%struct.input_dev* %76, i32 %77, i32 %82)
  %84 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %85 = load i32, i32* @BTN_EXTRA, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @BIT(i32 1)
  %90 = and i32 %88, %89
  %91 = call i32 @input_report_key(%struct.input_dev* %84, i32 %85, i32 %90)
  %92 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %93 = load i32, i32* @BTN_TASK, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @BIT(i32 2)
  %98 = and i32 %96, %97
  %99 = call i32 @input_report_key(%struct.input_dev* %92, i32 %93, i32 %98)
  %100 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %101 = load i32, i32* @BTN_BACK, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @BIT(i32 3)
  %106 = and i32 %104, %105
  %107 = call i32 @input_report_key(%struct.input_dev* %100, i32 %101, i32 %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %109 = load i32, i32* @BTN_FORWARD, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @BIT(i32 4)
  %114 = and i32 %112, %113
  %115 = call i32 @input_report_key(%struct.input_dev* %108, i32 %109, i32 %114)
  br label %155

116:                                              ; preds = %30
  %117 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* @REL_HWHEEL, align 4
  br label %127

125:                                              ; preds = %116
  %126 = load i32, i32* @REL_WHEEL, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 4
  %133 = call i32 @sign_extend32(i32 %132, i32 3)
  %134 = sub nsw i32 0, %133
  %135 = call i32 @input_report_rel(%struct.input_dev* %117, i32 %128, i32 %134)
  %136 = load i32*, i32** %5, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @BIT(i32 3)
  %140 = or i32 %138, %139
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %140, i32* %142, align 4
  br label %155

143:                                              ; preds = %30
  %144 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, 4
  %149 = load i32*, i32** %5, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 48
  %153 = or i32 %148, %152
  %154 = call i32 @psmouse_dbg(%struct.psmouse* %144, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %143, %127, %75, %51
  %156 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %157 = load i32*, i32** %5, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @psmouse_report_standard_buttons(%struct.input_dev* %156, i32 %159)
  br label %165

161:                                              ; preds = %24, %18
  %162 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @psmouse_report_standard_packet(%struct.input_dev* %162, i32* %163)
  br label %165

165:                                              ; preds = %161, %155
  %166 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %167 = call i32 @input_sync(%struct.input_dev* %166)
  %168 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %165, %16
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32) #1

declare dso_local i32 @psmouse_report_standard_buttons(%struct.input_dev*, i32) #1

declare dso_local i32 @psmouse_report_standard_packet(%struct.input_dev*, i32*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
