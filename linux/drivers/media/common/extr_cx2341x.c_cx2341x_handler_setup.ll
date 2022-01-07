; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_handler_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_handler_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_handler = type { i32, i32, i32, i32, i32, i32 }

@CX2341X_ENC_SET_OUTPUT_PORT = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_FRAME_RATE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i64 0, align 8
@CX2341X_ENC_SET_FRAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx2341x_handler_setup(%struct.cx2341x_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx2341x_handler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx2341x_handler* %0, %struct.cx2341x_handler** %3, align 8
  %7 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %8 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %11 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %14 = load i32, i32* @CX2341X_ENC_SET_OUTPUT_PORT, align 4
  %15 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %16 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %13, i32 %14, i32 2, i32 %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %1
  %24 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %25 = load i32, i32* @CX2341X_ENC_SET_FRAME_RATE, align 4
  %26 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %27 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %24, i32 %25, i32 1, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %60

34:                                               ; preds = %23
  %35 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %36 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @v4l2_ctrl_g_ctrl(i32 %37)
  %39 = load i64, i64* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = sdiv i32 %42, 2
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %48 = load i32, i32* @CX2341X_ENC_SET_FRAME_SIZE, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %47, i32 %48, i32 2, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %46
  %57 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %58 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %57, i32 0, i32 3
  %59 = call i32 @v4l2_ctrl_handler_setup(i32* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %54, %32, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @cx2341x_hdl_api(%struct.cx2341x_handler*, i32, i32, i32, ...) #1

declare dso_local i64 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
