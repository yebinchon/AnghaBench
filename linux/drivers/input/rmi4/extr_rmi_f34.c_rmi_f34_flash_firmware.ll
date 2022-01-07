; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34.c_rmi_f34_flash_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34.c_rmi_f34_flash_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f34_data = type { i32, i64, %struct.rmi_function* }
%struct.rmi_function = type { i32 }
%struct.rmi_f34_firmware = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Erasing firmware...\0A\00", align 1
@F34_ERASE_ALL = common dso_local global i32 0, align 4
@F34_ERASE_WAIT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Writing firmware (%d bytes)...\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Erasing config...\0A\00", align 1
@F34_ERASE_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Writing config (%d bytes)...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f34_data*, %struct.rmi_f34_firmware*)* @rmi_f34_flash_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f34_flash_firmware(%struct.f34_data* %0, %struct.rmi_f34_firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f34_data*, align 8
  %5 = alloca %struct.rmi_f34_firmware*, align 8
  %6 = alloca %struct.rmi_function*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.f34_data* %0, %struct.f34_data** %4, align 8
  store %struct.rmi_f34_firmware* %1, %struct.rmi_f34_firmware** %5, align 8
  %10 = load %struct.f34_data*, %struct.f34_data** %4, align 8
  %11 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %10, i32 0, i32 2
  %12 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  store %struct.rmi_function* %12, %struct.rmi_function** %6, align 8
  %13 = load %struct.rmi_f34_firmware*, %struct.rmi_f34_firmware** %5, align 8
  %14 = getelementptr inbounds %struct.rmi_f34_firmware, %struct.rmi_f34_firmware* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.rmi_f34_firmware*, %struct.rmi_f34_firmware** %5, align 8
  %18 = getelementptr inbounds %struct.rmi_f34_firmware, %struct.rmi_f34_firmware* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.f34_data*, %struct.f34_data** %4, align 8
  %22 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = load %struct.f34_data*, %struct.f34_data** %4, align 8
  %27 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %2
  %31 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %32 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_info(i32* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.f34_data*, %struct.f34_data** %4, align 8
  %35 = load i32, i32* @F34_ERASE_ALL, align 4
  %36 = load i32, i32* @F34_ERASE_WAIT_MS, align 4
  %37 = call i32 @rmi_f34_command(%struct.f34_data* %34, i32 %35, i32 %36, i32 1)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %95

42:                                               ; preds = %30
  %43 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %44 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32*, i8*, ...) @dev_info(i32* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.f34_data*, %struct.f34_data** %4, align 8
  %48 = load %struct.rmi_f34_firmware*, %struct.rmi_f34_firmware** %5, align 8
  %49 = getelementptr inbounds %struct.rmi_f34_firmware, %struct.rmi_f34_firmware* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @rmi_f34_write_firmware(%struct.f34_data* %47, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %95

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %60
  %64 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %65 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_info(i32* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.f34_data*, %struct.f34_data** %4, align 8
  %68 = load i32, i32* @F34_ERASE_CONFIG, align 4
  %69 = load i32, i32* @F34_ERASE_WAIT_MS, align 4
  %70 = call i32 @rmi_f34_command(%struct.f34_data* %67, i32 %68, i32 %69, i32 1)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %95

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %60
  %77 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %78 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %77, i32 0, i32 0
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32*, i8*, ...) @dev_info(i32* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load %struct.f34_data*, %struct.f34_data** %4, align 8
  %82 = load %struct.rmi_f34_firmware*, %struct.rmi_f34_firmware** %5, align 8
  %83 = getelementptr inbounds %struct.rmi_f34_firmware, %struct.rmi_f34_firmware* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @rmi_f34_write_config(%struct.f34_data* %81, i32* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %95

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93, %57
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %91, %73, %54, %40
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @rmi_f34_command(%struct.f34_data*, i32, i32, i32) #1

declare dso_local i32 @rmi_f34_write_firmware(%struct.f34_data*, i32*) #1

declare dso_local i32 @rmi_f34_write_config(%struct.f34_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
