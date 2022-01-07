; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_cabc_available_modes_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_cabc_available_modes_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acx565akm_panel = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@acx565akm_cabc_modes = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @cabc_available_modes_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cabc_available_modes_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acx565akm_panel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.acx565akm_panel* @dev_get_drvdata(%struct.device* %11)
  store %struct.acx565akm_panel* %12, %struct.acx565akm_panel** %8, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %8, align 8
  %14 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i8**, i8*** @acx565akm_cabc_modes, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 (i8*, i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i64 %22, i64* %4, align 8
  br label %54

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i8**, i8*** @acx565akm_cabc_modes, align 8
  %27 = call i32 @ARRAY_SIZE(i8** %26)
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %37 = load i8**, i8*** @acx565akm_cabc_modes, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 (i8*, i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %41)
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  %52 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 10, i8* %52, align 1
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %48, %17
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local %struct.acx565akm_panel* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
