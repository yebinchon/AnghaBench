; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_protocol_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_protocol_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.clock_info*, i32*, i32 }
%struct.clock_info = type { i32, %struct.scmi_clock_info* }
%struct.scmi_clock_info = type { i32 }

@SCMI_PROTOCOL_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Clock Version %d.%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*)* @scmi_clock_protocol_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_clock_protocol_init(%struct.scmi_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scmi_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clock_info*, align 8
  %8 = alloca %struct.scmi_clock_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %3, align 8
  %9 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %10 = load i32, i32* @SCMI_PROTOCOL_CLOCK, align 4
  %11 = call i32 @scmi_version_get(%struct.scmi_handle* %9, i32 %10, i32* %4)
  %12 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %13 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @PROTOCOL_REV_MAJOR(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @PROTOCOL_REV_MINOR(i32 %17)
  %19 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %21 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.clock_info* @devm_kzalloc(i32 %22, i32 16, i32 %23)
  store %struct.clock_info* %24, %struct.clock_info** %7, align 8
  %25 = load %struct.clock_info*, %struct.clock_info** %7, align 8
  %26 = icmp ne %struct.clock_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %86

30:                                               ; preds = %1
  %31 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %32 = load %struct.clock_info*, %struct.clock_info** %7, align 8
  %33 = call i32 @scmi_clock_protocol_attributes_get(%struct.scmi_handle* %31, %struct.clock_info* %32)
  %34 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %35 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.clock_info*, %struct.clock_info** %7, align 8
  %38 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.scmi_clock_info* @devm_kcalloc(i32 %36, i32 %39, i32 4, i32 %40)
  %42 = load %struct.clock_info*, %struct.clock_info** %7, align 8
  %43 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %42, i32 0, i32 1
  store %struct.scmi_clock_info* %41, %struct.scmi_clock_info** %43, align 8
  %44 = load %struct.clock_info*, %struct.clock_info** %7, align 8
  %45 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %44, i32 0, i32 1
  %46 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %45, align 8
  %47 = icmp ne %struct.scmi_clock_info* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %30
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %86

51:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %77, %51
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.clock_info*, %struct.clock_info** %7, align 8
  %55 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %52
  %59 = load %struct.clock_info*, %struct.clock_info** %7, align 8
  %60 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %59, i32 0, i32 1
  %61 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %61, i64 %63
  store %struct.scmi_clock_info* %64, %struct.scmi_clock_info** %8, align 8
  %65 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %8, align 8
  %68 = call i32 @scmi_clock_attributes_get(%struct.scmi_handle* %65, i32 %66, %struct.scmi_clock_info* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %58
  %72 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %8, align 8
  %75 = call i32 @scmi_clock_describe_rates_get(%struct.scmi_handle* %72, i32 %73, %struct.scmi_clock_info* %74)
  br label %76

76:                                               ; preds = %71, %58
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %82 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %81, i32 0, i32 1
  store i32* @clk_ops, i32** %82, align 8
  %83 = load %struct.clock_info*, %struct.clock_info** %7, align 8
  %84 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %85 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %84, i32 0, i32 0
  store %struct.clock_info* %83, %struct.clock_info** %85, align 8
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %48, %27
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @scmi_version_get(%struct.scmi_handle*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @PROTOCOL_REV_MAJOR(i32) #1

declare dso_local i32 @PROTOCOL_REV_MINOR(i32) #1

declare dso_local %struct.clock_info* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @scmi_clock_protocol_attributes_get(%struct.scmi_handle*, %struct.clock_info*) #1

declare dso_local %struct.scmi_clock_info* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @scmi_clock_attributes_get(%struct.scmi_handle*, i32, %struct.scmi_clock_info*) #1

declare dso_local i32 @scmi_clock_describe_rates_get(%struct.scmi_handle*, i32, %struct.scmi_clock_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
