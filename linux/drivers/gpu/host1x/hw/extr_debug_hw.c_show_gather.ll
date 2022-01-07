; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw.c_show_gather.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw.c_show_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output = type { i32 }
%struct.host1x_cdma = type { i32 }

@INVALID_PAYLOAD = common dso_local global i32 0, align 4
@HOST1X_DEBUG_MAX_PAGE_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"[address mismatch]\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%08x: %08x: \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%08x%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"])\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.output*, i32, i32, %struct.host1x_cdma*, i32, i32*)* @show_gather to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_gather(%struct.output* %0, i32 %1, i32 %2, %struct.host1x_cdma* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.output*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.host1x_cdma*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.output* %0, %struct.output** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.host1x_cdma* %3, %struct.host1x_cdma** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %11, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* @INVALID_PAYLOAD, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @HOST1X_DEBUG_MAX_PAGE_OFFSET, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load %struct.output*, %struct.output** %7, align 8
  %28 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %72

29:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %69, %29
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %15, align 4
  %37 = mul i32 %36, 4
  %38 = add i32 %35, %37
  store i32 %38, i32* %17, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sdiv i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %15, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %34
  %51 = load %struct.output*, %struct.output** %7, align 8
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %18, align 4
  %54 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.output*, %struct.output** %7, align 8
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @show_channel_command(%struct.output* %55, i32 %56, i32* %16)
  store i32 %57, i32* %14, align 4
  br label %68

58:                                               ; preds = %34
  %59 = load %struct.output*, %struct.output** %7, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ugt i32 %61, 1
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %65 = call i32 @host1x_debug_cont(%struct.output* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8* %64)
  %66 = load i32, i32* %14, align 4
  %67 = add i32 %66, -1
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %58, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %15, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %15, align 4
  br label %30

72:                                               ; preds = %26, %30
  ret void
}

declare dso_local i32 @host1x_debug_output(%struct.output*, i8*, ...) #1

declare dso_local i32 @show_channel_command(%struct.output*, i32, i32*) #1

declare dso_local i32 @host1x_debug_cont(%struct.output*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
