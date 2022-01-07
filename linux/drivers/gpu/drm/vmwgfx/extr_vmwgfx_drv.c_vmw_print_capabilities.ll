; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_print_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_print_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Capabilities:\0A\00", align 1
@SVGA_CAP_RECT_COPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"  Rect copy.\0A\00", align 1
@SVGA_CAP_CURSOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"  Cursor.\0A\00", align 1
@SVGA_CAP_CURSOR_BYPASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"  Cursor bypass.\0A\00", align 1
@SVGA_CAP_CURSOR_BYPASS_2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"  Cursor bypass 2.\0A\00", align 1
@SVGA_CAP_8BIT_EMULATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"  8bit emulation.\0A\00", align 1
@SVGA_CAP_ALPHA_CURSOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"  Alpha cursor.\0A\00", align 1
@SVGA_CAP_3D = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"  3D.\0A\00", align 1
@SVGA_CAP_EXTENDED_FIFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"  Extended Fifo.\0A\00", align 1
@SVGA_CAP_MULTIMON = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"  Multimon.\0A\00", align 1
@SVGA_CAP_PITCHLOCK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"  Pitchlock.\0A\00", align 1
@SVGA_CAP_IRQMASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"  Irq mask.\0A\00", align 1
@SVGA_CAP_DISPLAY_TOPOLOGY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"  Display Topology.\0A\00", align 1
@SVGA_CAP_GMR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"  GMR.\0A\00", align 1
@SVGA_CAP_TRACES = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"  Traces.\0A\00", align 1
@SVGA_CAP_GMR2 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"  GMR2.\0A\00", align 1
@SVGA_CAP_SCREEN_OBJECT_2 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"  Screen Object 2.\0A\00", align 1
@SVGA_CAP_COMMAND_BUFFERS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"  Command Buffers.\0A\00", align 1
@SVGA_CAP_CMD_BUFFERS_2 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"  Command Buffers 2.\0A\00", align 1
@SVGA_CAP_GBOBJECTS = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [27 x i8] c"  Guest Backed Resources.\0A\00", align 1
@SVGA_CAP_DX = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"  DX Features.\0A\00", align 1
@SVGA_CAP_HP_CMD_QUEUE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"  HP Command Queue.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vmw_print_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_print_capabilities(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @SVGA_CAP_RECT_COPY, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @DRM_INFO(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SVGA_CAP_CURSOR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @DRM_INFO(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SVGA_CAP_CURSOR_BYPASS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @DRM_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SVGA_CAP_CURSOR_BYPASS_2, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @DRM_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @SVGA_CAP_8BIT_EMULATION, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @DRM_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @SVGA_CAP_ALPHA_CURSOR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @DRM_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @SVGA_CAP_3D, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @DRM_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @SVGA_CAP_EXTENDED_FIFO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @DRM_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @SVGA_CAP_MULTIMON, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @DRM_INFO(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @SVGA_CAP_PITCHLOCK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @DRM_INFO(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @SVGA_CAP_IRQMASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @DRM_INFO(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @SVGA_CAP_DISPLAY_TOPOLOGY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 @DRM_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @SVGA_CAP_GMR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 @DRM_INFO(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @SVGA_CAP_TRACES, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 @DRM_INFO(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @SVGA_CAP_GMR2, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 @DRM_INFO(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @SVGA_CAP_SCREEN_OBJECT_2, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 @DRM_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %108
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @SVGA_CAP_COMMAND_BUFFERS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call i32 @DRM_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %115
  %123 = load i32, i32* %2, align 4
  %124 = load i32, i32* @SVGA_CAP_CMD_BUFFERS_2, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = call i32 @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %122
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* @SVGA_CAP_GBOBJECTS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = call i32 @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %129
  %137 = load i32, i32* %2, align 4
  %138 = load i32, i32* @SVGA_CAP_DX, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = call i32 @DRM_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %136
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* @SVGA_CAP_HP_CMD_QUEUE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = call i32 @DRM_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %143
  ret void
}

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
