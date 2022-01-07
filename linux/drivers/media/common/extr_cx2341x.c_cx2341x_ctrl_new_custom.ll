; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_ctrl_new_custom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_ctrl_new_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl_config = type { i64, i8*, i8*, i32, i8*, i8*, i8*, i32, i32*, i32, i32 }

@cx2341x_ops = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_ctrl* (%struct.v4l2_ctrl_handler*, i32, i8*, i8*, i8*, i8*)* @cx2341x_ctrl_new_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_ctrl* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.v4l2_ctrl_handler*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.v4l2_ctrl_config, align 8
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = call i32 @memset(%struct.v4l2_ctrl_config* %13, i32 0, i32 80)
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 10
  %17 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 0
  %18 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 9
  %19 = call i32 @cx2341x_ctrl_fill(i32 %15, i32* %16, i64* %17, i8** %9, i8** %10, i8** %11, i8** %12, i32* %18)
  %20 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 8
  store i32* @cx2341x_ops, i32** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 7
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 6
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 5
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 2
  store i8* null, i8** %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @cx2341x_get_menu(i32 %37)
  %39 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  br label %44

40:                                               ; preds = %6
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 2
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 1
  store i8* null, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %46 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %45, %struct.v4l2_ctrl_config* %13, i32* null)
  ret %struct.v4l2_ctrl* %46
}

declare dso_local i32 @memset(%struct.v4l2_ctrl_config*, i32, i32) #1

declare dso_local i32 @cx2341x_ctrl_fill(i32, i32*, i64*, i8**, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @cx2341x_get_menu(i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_config*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
