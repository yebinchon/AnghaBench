; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_print_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_print_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LIMA_GP_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mali200\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mali300\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mali400\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mali450\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%s - %s version major %d minor %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lima_ip*)* @lima_gp_print_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_gp_print_version(%struct.lima_ip* %0) #0 {
  %2 = alloca %struct.lima_ip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.lima_ip* %0, %struct.lima_ip** %2, align 8
  %7 = load i32, i32* @LIMA_GP_VERSION, align 4
  %8 = call i32 @gp_read(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 16
  switch i32 %15, label %20 [
    i32 2567, label %16
    i32 3079, label %17
    i32 2823, label %18
    i32 3335, label %19
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %21

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %21

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %21

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %21

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16
  %22 = load %struct.lima_ip*, %struct.lima_ip** %2, align 8
  %23 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.lima_ip*, %struct.lima_ip** %2, align 8
  %28 = call i32 @lima_ip_name(%struct.lima_ip* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dev_info(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %28, i8* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @gp_read(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @lima_ip_name(%struct.lima_ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
