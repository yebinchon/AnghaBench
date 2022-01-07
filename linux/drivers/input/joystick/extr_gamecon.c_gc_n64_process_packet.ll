; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@GC_N64_LENGTH = common dso_local global i32 0, align 4
@GC_MAX_DEVICES = common dso_local global i32 0, align 4
@GC_N64 = common dso_local global i64 0, align 8
@gc_status_bit = common dso_local global i32* null, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@gc_n64_btn = common dso_local global i32* null, align 8
@gc_n64_bytes = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*)* @gc_n64_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_n64_process_packet(%struct.gc* %0) #0 {
  %2 = alloca %struct.gc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.gc* %0, %struct.gc** %2, align 8
  %11 = load i32, i32* @GC_N64_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load %struct.gc*, %struct.gc** %2, align 8
  %16 = call i32 @gc_n64_read_packet(%struct.gc* %15, i8* %14)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %180, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @GC_MAX_DEVICES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %183

21:                                               ; preds = %17
  %22 = load %struct.gc*, %struct.gc** %2, align 8
  %23 = getelementptr inbounds %struct.gc, %struct.gc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GC_N64, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %180

33:                                               ; preds = %21
  %34 = load %struct.gc*, %struct.gc** %2, align 8
  %35 = getelementptr inbounds %struct.gc, %struct.gc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.input_dev*, %struct.input_dev** %40, align 8
  store %struct.input_dev* %41, %struct.input_dev** %5, align 8
  %42 = load i32*, i32** @gc_status_bit, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = getelementptr inbounds i8, i8* %14, i64 8
  %49 = load i8, i8* %48, align 8
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds i8, i8* %14, i64 9
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %50, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %47, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %179

58:                                               ; preds = %33
  store i8 0, i8* %10, align 1
  store i8 0, i8* %9, align 1
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %97, %58
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %100

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 23, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %14, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load i32, i32* %7, align 4
  %74 = shl i32 1, %73
  %75 = load i8, i8* %9, align 1
  %76 = sext i8 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %9, align 1
  br label %79

79:                                               ; preds = %72, %62
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 31, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %14, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = load i32, i32* %7, align 4
  %91 = shl i32 1, %90
  %92 = load i8, i8* %10, align 1
  %93 = sext i8 %92 to i32
  %94 = or i32 %93, %91
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %10, align 1
  br label %96

96:                                               ; preds = %89, %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %59

100:                                              ; preds = %59
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = load i32, i32* @ABS_X, align 4
  %103 = load i8, i8* %9, align 1
  %104 = sext i8 %103 to i32
  %105 = call i32 @input_report_abs(%struct.input_dev* %101, i32 %102, i32 %104)
  %106 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %107 = load i32, i32* @ABS_Y, align 4
  %108 = load i8, i8* %10, align 1
  %109 = sext i8 %108 to i32
  %110 = sub nsw i32 0, %109
  %111 = call i32 @input_report_abs(%struct.input_dev* %106, i32 %107, i32 %110)
  %112 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %113 = load i32, i32* @ABS_HAT0X, align 4
  %114 = load i32, i32* %8, align 4
  %115 = getelementptr inbounds i8, i8* %14, i64 6
  %116 = load i8, i8* %115, align 2
  %117 = zext i8 %116 to i32
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %8, align 4
  %123 = getelementptr inbounds i8, i8* %14, i64 7
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = sub nsw i32 %121, %129
  %131 = call i32 @input_report_abs(%struct.input_dev* %112, i32 %113, i32 %130)
  %132 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %133 = load i32, i32* @ABS_HAT0Y, align 4
  %134 = load i32, i32* %8, align 4
  %135 = getelementptr inbounds i8, i8* %14, i64 4
  %136 = load i8, i8* %135, align 4
  %137 = zext i8 %136 to i32
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %8, align 4
  %143 = getelementptr inbounds i8, i8* %14, i64 5
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = sub nsw i32 %141, %149
  %151 = call i32 @input_report_abs(%struct.input_dev* %132, i32 %133, i32 %150)
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %173, %100
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 10
  br i1 %154, label %155, label %176

155:                                              ; preds = %152
  %156 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %157 = load i32*, i32** @gc_n64_btn, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i64*, i64** @gc_n64_bytes, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i8, i8* %14, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %162, %170
  %172 = call i32 @input_report_key(%struct.input_dev* %156, i32 %161, i32 %171)
  br label %173

173:                                              ; preds = %155
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %152

176:                                              ; preds = %152
  %177 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %178 = call i32 @input_sync(%struct.input_dev* %177)
  br label %179

179:                                              ; preds = %176, %33
  br label %180

180:                                              ; preds = %179, %32
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %17

183:                                              ; preds = %17
  %184 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %184)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gc_n64_read_packet(%struct.gc*, i8*) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
