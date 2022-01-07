; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw.c_show_channel_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw.c_show_channel_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"SETCL(class=%03x, offset=%03x, mask=%02x, [\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SETCL(class=%03x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"INCR(offset=%03x, [\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"])\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"NONINCR(offset=%03x, [\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"MASK(offset=%03x, mask=%03x, [\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"IMM(offset=%03x, data=%03x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"RESTART(offset=%08x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"GATHER(offset=%03x, insert=%d, type=%d, count=%04x, addr=[\00", align 1
@HOST1X_OPCODE_EXTEND_ACQUIRE_MLOCK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"ACQUIRE_MLOCK(index=%d)\0A\00", align 1
@HOST1X_OPCODE_EXTEND_RELEASE_MLOCK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"RELEASE_MLOCK(index=%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"EXTEND_UNKNOWN(%08x)\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@INVALID_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.output*, i32, i32*)* @show_channel_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_channel_command(%struct.output* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.output* %0, %struct.output** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 28
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  switch i32 %14, label %139 [
    i32 130, label %15
    i32 137, label %38
    i32 134, label %53
    i32 135, label %68
    i32 138, label %85
    i32 132, label %93
    i32 140, label %98
    i32 141, label %112
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 63
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.output*, %struct.output** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 6
  %24 = and i32 %23, 1023
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 4095
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @hweight8(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %142

32:                                               ; preds = %15
  %33 = load %struct.output*, %struct.output** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 6
  %36 = and i32 %35, 1023
  %37 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 0, i32* %4, align 4
  br label %142

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 65535
  store i32 %40, i32* %10, align 4
  %41 = load %struct.output*, %struct.output** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 16
  %44 = and i32 %43, 4095
  %45 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load %struct.output*, %struct.output** %5, align 8
  %50 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %38
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %142

53:                                               ; preds = %3
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 65535
  store i32 %55, i32* %10, align 4
  %56 = load %struct.output*, %struct.output** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 4095
  %60 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %53
  %64 = load %struct.output*, %struct.output** %5, align 8
  %65 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %53
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %142

68:                                               ; preds = %3
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 65535
  store i32 %70, i32* %8, align 4
  %71 = load %struct.output*, %struct.output** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = ashr i32 %72, 16
  %74 = and i32 %73, 4095
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load %struct.output*, %struct.output** %5, align 8
  %81 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %68
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @hweight16(i32 %83)
  store i32 %84, i32* %4, align 4
  br label %142

85:                                               ; preds = %3
  %86 = load %struct.output*, %struct.output** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = ashr i32 %87, 16
  %89 = and i32 %88, 4095
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 65535
  %92 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32 %91)
  store i32 0, i32* %4, align 4
  br label %142

93:                                               ; preds = %3
  %94 = load %struct.output*, %struct.output** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = shl i32 %95, 4
  %97 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  store i32 0, i32* %4, align 4
  br label %142

98:                                               ; preds = %3
  %99 = load %struct.output*, %struct.output** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = ashr i32 %100, 16
  %102 = and i32 %101, 4095
  %103 = load i32, i32* %6, align 4
  %104 = ashr i32 %103, 15
  %105 = and i32 %104, 1
  %106 = load i32, i32* %6, align 4
  %107 = ashr i32 %106, 14
  %108 = and i32 %107, 1
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 16383
  %111 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %102, i32 %105, i32 %108, i32 %110)
  store i32 1, i32* %4, align 4
  br label %142

112:                                              ; preds = %3
  %113 = load i32, i32* %6, align 4
  %114 = ashr i32 %113, 24
  %115 = and i32 %114, 15
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @HOST1X_OPCODE_EXTEND_ACQUIRE_MLOCK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.output*, %struct.output** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = and i32 %121, 255
  %123 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %122)
  br label %138

124:                                              ; preds = %112
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @HOST1X_OPCODE_EXTEND_RELEASE_MLOCK, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load %struct.output*, %struct.output** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, 255
  %132 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %131)
  br label %137

133:                                              ; preds = %124
  %134 = load %struct.output*, %struct.output** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %133, %128
  br label %138

138:                                              ; preds = %137, %119
  store i32 0, i32* %4, align 4
  br label %142

139:                                              ; preds = %3
  %140 = load %struct.output*, %struct.output** %5, align 8
  %141 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %139, %138, %98, %93, %85, %82, %66, %51, %32, %20
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @host1x_debug_cont(%struct.output*, i8*, ...) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @hweight16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
