; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_upload_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_upload_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { i64, i32 }
%struct.iforce = type { %struct.iforce_core_effect* }
%struct.iforce_core_effect = type { i32 }

@FF_CORE_IS_USED = common dso_local global i32 0, align 4
@FF_CORE_UPDATE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)* @iforce_upload_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iforce_upload_effect(%struct.input_dev* %0, %struct.ff_effect* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca %struct.iforce*, align 8
  %9 = alloca %struct.iforce_core_effect*, align 8
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = call %struct.iforce* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.iforce* %12, %struct.iforce** %8, align 8
  %13 = load %struct.iforce*, %struct.iforce** %8, align 8
  %14 = getelementptr inbounds %struct.iforce, %struct.iforce* %13, i32 0, i32 0
  %15 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %14, align 8
  %16 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %17 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %15, i64 %18
  store %struct.iforce_core_effect* %19, %struct.iforce_core_effect** %9, align 8
  %20 = load i32, i32* @FF_CORE_IS_USED, align 4
  %21 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %9, align 8
  %22 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @__test_and_set_bit(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load i32, i32* @FF_CORE_UPDATE, align 4
  %28 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %9, align 8
  %29 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @test_bit(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %70

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %39 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %56 [
    i32 129, label %41
    i32 131, label %46
    i32 128, label %51
    i32 130, label %51
  ]

41:                                               ; preds = %37
  %42 = load %struct.iforce*, %struct.iforce** %8, align 8
  %43 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %44 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %45 = call i32 @iforce_upload_periodic(%struct.iforce* %42, %struct.ff_effect* %43, %struct.ff_effect* %44)
  store i32 %45, i32* %10, align 4
  br label %59

46:                                               ; preds = %37
  %47 = load %struct.iforce*, %struct.iforce** %8, align 8
  %48 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %49 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %50 = call i32 @iforce_upload_constant(%struct.iforce* %47, %struct.ff_effect* %48, %struct.ff_effect* %49)
  store i32 %50, i32* %10, align 4
  br label %59

51:                                               ; preds = %37, %37
  %52 = load %struct.iforce*, %struct.iforce** %8, align 8
  %53 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %54 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %55 = call i32 @iforce_upload_condition(%struct.iforce* %52, %struct.ff_effect* %53, %struct.ff_effect* %54)
  store i32 %55, i32* %10, align 4
  br label %59

56:                                               ; preds = %37
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %70

59:                                               ; preds = %51, %46, %41
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* @FF_CORE_UPDATE, align 4
  %64 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %9, align 8
  %65 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_bit(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %56, %33
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.iforce* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i64 @__test_and_set_bit(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @iforce_upload_periodic(%struct.iforce*, %struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @iforce_upload_constant(%struct.iforce*, %struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @iforce_upload_condition(%struct.iforce*, %struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
