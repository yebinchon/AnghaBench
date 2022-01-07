; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_ctrl_get_menu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_ctrl_get_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_mpeg_params = type { i32 }

@cx2341x_ctrl_get_menu.mpeg_stream_type_without_ts = internal constant [7 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [22 x i8] c"MPEG-2 Program Stream\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"MPEG-1 System Stream\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"MPEG-2 DVD-compatible Stream\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"MPEG-1 VCD-compatible Stream\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"MPEG-2 SVCD-compatible Stream\00", align 1
@cx2341x_ctrl_get_menu.mpeg_stream_type_with_ts = internal global [7 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str.6 = private unnamed_addr constant [24 x i8] c"MPEG-2 Transport Stream\00", align 1
@cx2341x_ctrl_get_menu.mpeg_audio_encoding_l2_ac3 = internal global [6 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str.7 = private unnamed_addr constant [18 x i8] c"MPEG-1/2 Layer II\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"AC-3\00", align 1
@CX2341X_CAP_HAS_TS = common dso_local global i32 0, align 4
@CX2341X_CAP_HAS_AC3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @cx2341x_ctrl_get_menu(%struct.cx2341x_mpeg_params* %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.cx2341x_mpeg_params*, align 8
  %5 = alloca i32, align 4
  store %struct.cx2341x_mpeg_params* %0, %struct.cx2341x_mpeg_params** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %33 [
    i32 128, label %7
    i32 136, label %16
    i32 135, label %29
    i32 134, label %29
    i32 130, label %30
    i32 132, label %30
    i32 133, label %30
    i32 129, label %30
    i32 131, label %30
  ]

7:                                                ; preds = %2
  %8 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %9 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CX2341X_CAP_HAS_TS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @cx2341x_ctrl_get_menu.mpeg_stream_type_with_ts, i64 0, i64 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @cx2341x_ctrl_get_menu.mpeg_stream_type_without_ts, i64 0, i64 0)
  store i8** %15, i8*** %3, align 8
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %18 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CX2341X_CAP_HAS_AC3, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = call i8** @v4l2_ctrl_get_menu(i32 %25)
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i8** [ getelementptr inbounds ([6 x i8*], [6 x i8*]* @cx2341x_ctrl_get_menu.mpeg_audio_encoding_l2_ac3, i64 0, i64 0), %23 ], [ %26, %24 ]
  store i8** %28, i8*** %3, align 8
  br label %36

29:                                               ; preds = %2, %2
  store i8** null, i8*** %3, align 8
  br label %36

30:                                               ; preds = %2, %2, %2, %2, %2
  %31 = load i32, i32* %5, align 4
  %32 = call i8** @cx2341x_get_menu(i32 %31)
  store i8** %32, i8*** %3, align 8
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = call i8** @v4l2_ctrl_get_menu(i32 %34)
  store i8** %35, i8*** %3, align 8
  br label %36

36:                                               ; preds = %33, %30, %29, %27, %7
  %37 = load i8**, i8*** %3, align 8
  ret i8** %37
}

declare dso_local i8** @v4l2_ctrl_get_menu(i32) #1

declare dso_local i8** @cx2341x_get_menu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
