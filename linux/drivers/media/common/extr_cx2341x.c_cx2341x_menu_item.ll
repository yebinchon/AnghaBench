; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_menu_item.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_menu_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_mpeg_params = type { i32 }
%struct.v4l2_ext_control = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cx2341x_mpeg_params*, i32)* @cx2341x_menu_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cx2341x_menu_item(%struct.cx2341x_mpeg_params* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cx2341x_mpeg_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.v4l2_ext_control, align 4
  store %struct.cx2341x_mpeg_params* %0, %struct.cx2341x_mpeg_params** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i8** @cx2341x_ctrl_get_menu(%struct.cx2341x_mpeg_params* %8, i32 %9)
  store i8** %10, i8*** %6, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = icmp eq i8** %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %44

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %7, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %18 = call i64 @cx2341x_get_ctrl(%struct.cx2341x_mpeg_params* %17, %struct.v4l2_ext_control* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %44

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %33, %21
  %23 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8**, i8*** %6, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %6, align 8
  br label %22

36:                                               ; preds = %31
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %44

41:                                               ; preds = %36
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %3, align 8
  br label %45

44:                                               ; preds = %40, %20, %13
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i8** @cx2341x_ctrl_get_menu(%struct.cx2341x_mpeg_params*, i32) #1

declare dso_local i64 @cx2341x_get_ctrl(%struct.cx2341x_mpeg_params*, %struct.v4l2_ext_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
