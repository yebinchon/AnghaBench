; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_magellan.c_magellan_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_magellan.c_magellan_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magellan = type { i8*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@magellan_axes = common dso_local global i32* null, align 8
@magellan_buttons = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.magellan*)* @magellan_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @magellan_process_packet(%struct.magellan* %0) #0 {
  %2 = alloca %struct.magellan*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.magellan* %0, %struct.magellan** %2, align 8
  %7 = load %struct.magellan*, %struct.magellan** %2, align 8
  %8 = getelementptr inbounds %struct.magellan, %struct.magellan* %7, i32 0, i32 2
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %3, align 8
  %10 = load %struct.magellan*, %struct.magellan** %2, align 8
  %11 = getelementptr inbounds %struct.magellan, %struct.magellan* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load %struct.magellan*, %struct.magellan** %2, align 8
  %14 = getelementptr inbounds %struct.magellan, %struct.magellan* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %142

18:                                               ; preds = %1
  %19 = load %struct.magellan*, %struct.magellan** %2, align 8
  %20 = getelementptr inbounds %struct.magellan, %struct.magellan* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  switch i32 %24, label %139 [
    i32 100, label %25
    i32 107, label %92
  ]

25:                                               ; preds = %18
  %26 = load %struct.magellan*, %struct.magellan** %2, align 8
  %27 = getelementptr inbounds %struct.magellan, %struct.magellan* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 25
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %142

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @magellan_crunch_nibbles(i8* %32, i32 24)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %142

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %88, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %40, label %91

40:                                               ; preds = %37
  %41 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %42 = load i32*, i32** @magellan_axes, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 %48, 2
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 12
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 %57, 2
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 8
  %65 = or i32 %55, %64
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 %67, 2
  %69 = add nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 4
  %75 = or i32 %65, %74
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = shl i32 %77, 2
  %79 = add nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %75, %83
  %85 = sub nsw i32 %84, 32768
  %86 = trunc i32 %85 to i8
  %87 = call i32 @input_report_abs(%struct.input_dev* %41, i32 %46, i8 zeroext %86)
  br label %88

88:                                               ; preds = %40
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %37

91:                                               ; preds = %37
  br label %139

92:                                               ; preds = %18
  %93 = load %struct.magellan*, %struct.magellan** %2, align 8
  %94 = getelementptr inbounds %struct.magellan, %struct.magellan* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 4
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %142

98:                                               ; preds = %92
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @magellan_crunch_nibbles(i8* %99, i32 3)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %142

103:                                              ; preds = %98
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = shl i32 %107, 1
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 5
  %114 = or i32 %108, %113
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = or i32 %114, %118
  store i32 %119, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %135, %103
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 9
  br i1 %122, label %123, label %138

123:                                              ; preds = %120
  %124 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %125 = load i32*, i32** @magellan_buttons, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %5, align 4
  %132 = ashr i32 %130, %131
  %133 = and i32 %132, 1
  %134 = call i32 @input_report_key(%struct.input_dev* %124, i32 %129, i32 %133)
  br label %135

135:                                              ; preds = %123
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %120

138:                                              ; preds = %120
  br label %139

139:                                              ; preds = %18, %138, %91
  %140 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %141 = call i32 @input_sync(%struct.input_dev* %140)
  br label %142

142:                                              ; preds = %139, %102, %97, %35, %30, %17
  ret void
}

declare dso_local i32 @magellan_crunch_nibbles(i8*, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
