; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_maple_keyb.c_dc_scan_kbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_maple_keyb.c_dc_scan_kbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_kbd = type { i32*, i32*, i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unknown key (scancode %#x) released.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unknown key (scancode %#x) pressed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_kbd*)* @dc_scan_kbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_scan_kbd(%struct.dc_kbd* %0) #0 {
  %2 = alloca %struct.dc_kbd*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dc_kbd* %0, %struct.dc_kbd** %2, align 8
  %8 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %9 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %8, i32 0, i32 3
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %3, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %40, %1
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 224
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %18 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %25 = load i32, i32* @EV_MSC, align 4
  %26 = load i32, i32* @MSC_SCAN, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @input_event(%struct.input_dev* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %32 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %35, %36
  %38 = and i32 %37, 1
  %39 = call i32 @input_report_key(%struct.input_dev* %29, i32 %30, i32 %38)
  br label %40

40:                                               ; preds = %14
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %11

43:                                               ; preds = %11
  store i32 2, i32* %7, align 4
  br label %44

44:                                               ; preds = %148, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %151

47:                                               ; preds = %44
  %48 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %49 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %53 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @memchr(i32* %51, i32 %58, i32 6)
  store i8* %59, i8** %4, align 8
  %60 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %61 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 3
  br i1 %68, label %69, label %97

69:                                               ; preds = %47
  %70 = load i8*, i8** %4, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %97

72:                                               ; preds = %69
  %73 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %74 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %84 = load i32, i32* @EV_MSC, align 4
  %85 = load i32, i32* @MSC_SCAN, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @input_event(%struct.input_dev* %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @input_report_key(%struct.input_dev* %88, i32 %89, i32 0)
  br label %96

91:                                               ; preds = %72
  %92 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %93 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @dev_dbg(i32* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %82
  br label %97

97:                                               ; preds = %96, %69, %47
  %98 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %99 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %103 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @memchr(i32* %101, i32 %108, i32 6)
  store i8* %109, i8** %4, align 8
  %110 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %111 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp sgt i32 %117, 3
  br i1 %118, label %119, label %147

119:                                              ; preds = %97
  %120 = load i8*, i8** %4, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %147

122:                                              ; preds = %119
  %123 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %124 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %122
  %133 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %134 = load i32, i32* @EV_MSC, align 4
  %135 = load i32, i32* @MSC_SCAN, align 4
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @input_event(%struct.input_dev* %133, i32 %134, i32 %135, i32 %136)
  %138 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @input_report_key(%struct.input_dev* %138, i32 %139, i32 1)
  br label %146

141:                                              ; preds = %122
  %142 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %143 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %142, i32 0, i32 0
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @dev_dbg(i32* %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %141, %132
  br label %147

147:                                              ; preds = %146, %119, %97
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %44

151:                                              ; preds = %44
  %152 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %153 = call i32 @input_sync(%struct.input_dev* %152)
  %154 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %155 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.dc_kbd*, %struct.dc_kbd** %2, align 8
  %158 = getelementptr inbounds %struct.dc_kbd, %struct.dc_kbd* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @memcpy(i32* %156, i32* %159, i32 8)
  ret void
}

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i8* @memchr(i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
