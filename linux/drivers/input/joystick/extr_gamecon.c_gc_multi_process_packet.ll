; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_multi_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_multi_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { %struct.gc_pad*, i64* }
%struct.gc_pad = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@GC_MULTI2_LENGTH = common dso_local global i32 0, align 4
@GC_MULTI_LENGTH = common dso_local global i32 0, align 4
@GC_MAX_DEVICES = common dso_local global i32 0, align 4
@gc_status_bit = common dso_local global i32* null, align 8
@BTN_THUMB = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*)* @gc_multi_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_multi_process_packet(%struct.gc* %0) #0 {
  %2 = alloca %struct.gc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gc_pad*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gc* %0, %struct.gc** %2, align 8
  %10 = load i32, i32* @GC_MULTI2_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load %struct.gc*, %struct.gc** %2, align 8
  %15 = getelementptr inbounds %struct.gc, %struct.gc* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 128
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @GC_MULTI2_LENGTH, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @GC_MULTI_LENGTH, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %5, align 4
  %26 = load %struct.gc*, %struct.gc** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @gc_multi_read_packet(%struct.gc* %26, i32 %27, i8* %13)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %113, %24
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @GC_MAX_DEVICES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %116

33:                                               ; preds = %29
  %34 = load %struct.gc*, %struct.gc** %2, align 8
  %35 = getelementptr inbounds %struct.gc, %struct.gc* %34, i32 0, i32 0
  %36 = load %struct.gc_pad*, %struct.gc_pad** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %36, i64 %38
  store %struct.gc_pad* %39, %struct.gc_pad** %6, align 8
  %40 = load %struct.gc_pad*, %struct.gc_pad** %6, align 8
  %41 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %40, i32 0, i32 1
  %42 = load %struct.input_dev*, %struct.input_dev** %41, align 8
  store %struct.input_dev* %42, %struct.input_dev** %7, align 8
  %43 = load i32*, i32** @gc_status_bit, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.gc_pad*, %struct.gc_pad** %6, align 8
  %49 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %111 [
    i32 128, label %51
    i32 129, label %60
  ]

51:                                               ; preds = %33
  %52 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %53 = load i32, i32* @BTN_THUMB, align 4
  %54 = load i32, i32* %9, align 4
  %55 = getelementptr inbounds i8, i8* %13, i64 5
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %54, %57
  %59 = call i32 @input_report_key(%struct.input_dev* %52, i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %33, %51
  %61 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %62 = load i32, i32* @ABS_X, align 4
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds i8, i8* %13, i64 2
  %65 = load i8, i8* %64, align 2
  %66 = zext i8 %65 to i32
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds i8, i8* %13, i64 3
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = sub nsw i32 %70, %78
  %80 = call i32 @input_report_abs(%struct.input_dev* %61, i32 %62, i32 %79)
  %81 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %82 = load i32, i32* @ABS_Y, align 4
  %83 = load i32, i32* %9, align 4
  %84 = getelementptr inbounds i8, i8* %13, i64 0
  %85 = load i8, i8* %84, align 16
  %86 = zext i8 %85 to i32
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %9, align 4
  %92 = getelementptr inbounds i8, i8* %13, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = sub nsw i32 %90, %98
  %100 = call i32 @input_report_abs(%struct.input_dev* %81, i32 %82, i32 %99)
  %101 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %102 = load i32, i32* @BTN_TRIGGER, align 4
  %103 = load i32, i32* %9, align 4
  %104 = getelementptr inbounds i8, i8* %13, i64 4
  %105 = load i8, i8* %104, align 4
  %106 = zext i8 %105 to i32
  %107 = and i32 %103, %106
  %108 = call i32 @input_report_key(%struct.input_dev* %101, i32 %102, i32 %107)
  %109 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %110 = call i32 @input_sync(%struct.input_dev* %109)
  br label %112

111:                                              ; preds = %33
  br label %112

112:                                              ; preds = %111, %60
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %29

116:                                              ; preds = %29
  %117 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %117)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gc_multi_read_packet(%struct.gc*, i32, i8*) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #2

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
