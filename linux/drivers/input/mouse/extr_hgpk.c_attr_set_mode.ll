; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_attr_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_attr_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.input_dev*, %struct.hgpk_data* }
%struct.input_dev = type { i32 }
%struct.hgpk_data = type { i32 }

@HGPK_MODE_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@PSMOUSE_INITIALIZING = common dso_local global i32 0, align 4
@PSMOUSE_CMD_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.psmouse*, i8*, i8*, i64)* @attr_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @attr_set_mode(%struct.psmouse* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hgpk_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.input_dev*, align 8
  %14 = alloca %struct.input_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %17 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 1
  %18 = load %struct.hgpk_data*, %struct.hgpk_data** %17, align 8
  store %struct.hgpk_data* %18, %struct.hgpk_data** %10, align 8
  %19 = load %struct.hgpk_data*, %struct.hgpk_data** %10, align 8
  %20 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @hgpk_mode_from_name(i8* %22, i64 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %26 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %25, i32 0, i32 0
  %27 = load %struct.input_dev*, %struct.input_dev** %26, align 8
  store %struct.input_dev* %27, %struct.input_dev** %13, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @HGPK_MODE_INVALID, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %89

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %5, align 8
  br label %89

40:                                               ; preds = %34
  %41 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %41, %struct.input_dev** %14, align 8
  %42 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %43 = icmp ne %struct.input_dev* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* @ENOMEM, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %5, align 8
  br label %89

47:                                               ; preds = %40
  %48 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %49 = load i32, i32* @PSMOUSE_INITIALIZING, align 4
  %50 = call i32 @psmouse_set_state(%struct.psmouse* %48, i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.hgpk_data*, %struct.hgpk_data** %10, align 8
  %53 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %55 = call i32 @hgpk_reset_device(%struct.psmouse* %54, i32 0)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %79

59:                                               ; preds = %47
  %60 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %61 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @hgpk_setup_input_device(%struct.input_dev* %60, %struct.input_dev* %61, i32 %62)
  %64 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %65 = load i32, i32* @PSMOUSE_CMD_MODE, align 4
  %66 = call i32 @psmouse_set_state(%struct.psmouse* %64, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %68 = call i32 @input_register_device(%struct.input_dev* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %79

72:                                               ; preds = %59
  %73 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %74 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %75 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %74, i32 0, i32 0
  store %struct.input_dev* %73, %struct.input_dev** %75, align 8
  %76 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %77 = call i32 @input_unregister_device(%struct.input_dev* %76)
  %78 = load i64, i64* %9, align 8
  store i64 %78, i64* %5, align 8
  br label %89

79:                                               ; preds = %71, %58
  %80 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %81 = call i32 @input_free_device(%struct.input_dev* %80)
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.hgpk_data*, %struct.hgpk_data** %10, align 8
  %84 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %86 = call i32 @hgpk_reset_device(%struct.psmouse* %85, i32 0)
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %79, %72, %44, %38, %31
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local i32 @hgpk_mode_from_name(i8*, i64) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i32 @hgpk_reset_device(%struct.psmouse*, i32) #1

declare dso_local i32 @hgpk_setup_input_device(%struct.input_dev*, %struct.input_dev*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
