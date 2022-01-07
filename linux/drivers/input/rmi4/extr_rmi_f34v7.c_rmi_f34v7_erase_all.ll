; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_erase_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_erase_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f34_data = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Erasing firmware...\0A\00", align 1
@v7_CMD_ERASE_UI_FIRMWARE = common dso_local global i32 0, align 4
@F34_ERASE_WAIT_MS = common dso_local global i32 0, align 4
@v7_UI_CONFIG_AREA = common dso_local global i32 0, align 4
@v7_DP_CONFIG_AREA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f34_data*)* @rmi_f34v7_erase_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f34v7_erase_all(%struct.f34_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f34_data*, align 8
  %4 = alloca i32, align 4
  store %struct.f34_data* %0, %struct.f34_data** %3, align 8
  %5 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %6 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @dev_info(i32* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %11 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = call i32 @init_completion(i32* %12)
  %14 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %15 = load i32, i32* @v7_CMD_ERASE_UI_FIRMWARE, align 4
  %16 = call i32 @rmi_f34v7_write_command(%struct.f34_data* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %79

21:                                               ; preds = %1
  %22 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %23 = load i32, i32* @F34_ERASE_WAIT_MS, align 4
  %24 = call i32 @rmi_f34v7_wait_for_idle(%struct.f34_data* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %79

29:                                               ; preds = %21
  %30 = load i32, i32* @v7_UI_CONFIG_AREA, align 4
  %31 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %32 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %35 = call i32 @rmi_f34v7_erase_config(%struct.f34_data* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %79

40:                                               ; preds = %29
  %41 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %42 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load i32, i32* @v7_DP_CONFIG_AREA, align 4
  %48 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %49 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %52 = call i32 @rmi_f34v7_erase_config(%struct.f34_data* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %79

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %60 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %66 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %72 = call i32 @rmi_f34v7_erase_guest_code(%struct.f34_data* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %79

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %64, %58
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %75, %55, %38, %27, %19
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @rmi_f34v7_write_command(%struct.f34_data*, i32) #1

declare dso_local i32 @rmi_f34v7_wait_for_idle(%struct.f34_data*, i32) #1

declare dso_local i32 @rmi_f34v7_erase_config(%struct.f34_data*) #1

declare dso_local i32 @rmi_f34v7_erase_guest_code(%struct.f34_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
