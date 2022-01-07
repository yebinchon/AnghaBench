; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_cabc_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_cabc_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acx565akm_panel = type { i32, i32 }

@acx565akm_cabc_modes = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cabc_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cabc_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acx565akm_panel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.acx565akm_panel* @dev_get_drvdata(%struct.device* %14)
  store %struct.acx565akm_panel* %15, %struct.acx565akm_panel** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %56, %4
  %17 = load i32, i32* %11, align 4
  %18 = load i8**, i8*** @acx565akm_cabc_modes, align 8
  %19 = call i32 @ARRAY_SIZE(i8** %18)
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  %22 = load i8**, i8*** @acx565akm_cabc_modes, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* %9, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %21
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %39, %31, %21
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %56

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @strncmp(i8* %49, i8* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %59

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %16

59:                                               ; preds = %54, %16
  %60 = load i32, i32* %11, align 4
  %61 = load i8**, i8*** @acx565akm_cabc_modes, align 8
  %62 = call i32 @ARRAY_SIZE(i8** %61)
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i64, i64* @EINVAL, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %5, align 8
  br label %89

67:                                               ; preds = %59
  %68 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %10, align 8
  %69 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i64, i64* @EINVAL, align 8
  %77 = sub i64 0, %76
  store i64 %77, i64* %5, align 8
  br label %89

78:                                               ; preds = %72, %67
  %79 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %10, align 8
  %80 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %79, i32 0, i32 0
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @acx565akm_set_cabc_mode(%struct.acx565akm_panel* %82, i32 %83)
  %85 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %10, align 8
  %86 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i64, i64* %9, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %78, %75, %64
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local %struct.acx565akm_panel* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acx565akm_set_cabc_mode(%struct.acx565akm_panel*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
