; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_reset.c_scmi_reset_protocol_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_reset.c_scmi_reset_protocol_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.scmi_reset_info*, i32*, i32 }
%struct.scmi_reset_info = type { i32, %struct.reset_dom_info* }
%struct.reset_dom_info = type { i32 }

@SCMI_PROTOCOL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Reset Version %d.%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reset_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*)* @scmi_reset_protocol_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_reset_protocol_init(%struct.scmi_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scmi_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scmi_reset_info*, align 8
  %7 = alloca %struct.reset_dom_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %3, align 8
  %8 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %9 = load i32, i32* @SCMI_PROTOCOL_RESET, align 4
  %10 = call i32 @scmi_version_get(%struct.scmi_handle* %8, i32 %9, i32* %5)
  %11 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %12 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @PROTOCOL_REV_MAJOR(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PROTOCOL_REV_MINOR(i32 %16)
  %18 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %20 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.scmi_reset_info* @devm_kzalloc(i32 %21, i32 16, i32 %22)
  store %struct.scmi_reset_info* %23, %struct.scmi_reset_info** %6, align 8
  %24 = load %struct.scmi_reset_info*, %struct.scmi_reset_info** %6, align 8
  %25 = icmp ne %struct.scmi_reset_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %77

29:                                               ; preds = %1
  %30 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %31 = load %struct.scmi_reset_info*, %struct.scmi_reset_info** %6, align 8
  %32 = call i32 @scmi_reset_attributes_get(%struct.scmi_handle* %30, %struct.scmi_reset_info* %31)
  %33 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %34 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.scmi_reset_info*, %struct.scmi_reset_info** %6, align 8
  %37 = getelementptr inbounds %struct.scmi_reset_info, %struct.scmi_reset_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.reset_dom_info* @devm_kcalloc(i32 %35, i32 %38, i32 4, i32 %39)
  %41 = load %struct.scmi_reset_info*, %struct.scmi_reset_info** %6, align 8
  %42 = getelementptr inbounds %struct.scmi_reset_info, %struct.scmi_reset_info* %41, i32 0, i32 1
  store %struct.reset_dom_info* %40, %struct.reset_dom_info** %42, align 8
  %43 = load %struct.scmi_reset_info*, %struct.scmi_reset_info** %6, align 8
  %44 = getelementptr inbounds %struct.scmi_reset_info, %struct.scmi_reset_info* %43, i32 0, i32 1
  %45 = load %struct.reset_dom_info*, %struct.reset_dom_info** %44, align 8
  %46 = icmp ne %struct.reset_dom_info* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %29
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %77

50:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %68, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.scmi_reset_info*, %struct.scmi_reset_info** %6, align 8
  %54 = getelementptr inbounds %struct.scmi_reset_info, %struct.scmi_reset_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load %struct.scmi_reset_info*, %struct.scmi_reset_info** %6, align 8
  %59 = getelementptr inbounds %struct.scmi_reset_info, %struct.scmi_reset_info* %58, i32 0, i32 1
  %60 = load %struct.reset_dom_info*, %struct.reset_dom_info** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.reset_dom_info, %struct.reset_dom_info* %60, i64 %62
  store %struct.reset_dom_info* %63, %struct.reset_dom_info** %7, align 8
  %64 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.reset_dom_info*, %struct.reset_dom_info** %7, align 8
  %67 = call i32 @scmi_reset_domain_attributes_get(%struct.scmi_handle* %64, i32 %65, %struct.reset_dom_info* %66)
  br label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %73 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %72, i32 0, i32 1
  store i32* @reset_ops, i32** %73, align 8
  %74 = load %struct.scmi_reset_info*, %struct.scmi_reset_info** %6, align 8
  %75 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %76 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %75, i32 0, i32 0
  store %struct.scmi_reset_info* %74, %struct.scmi_reset_info** %76, align 8
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %71, %47, %26
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @scmi_version_get(%struct.scmi_handle*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @PROTOCOL_REV_MAJOR(i32) #1

declare dso_local i32 @PROTOCOL_REV_MINOR(i32) #1

declare dso_local %struct.scmi_reset_info* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @scmi_reset_attributes_get(%struct.scmi_handle*, %struct.scmi_reset_info*) #1

declare dso_local %struct.reset_dom_info* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @scmi_reset_domain_attributes_get(%struct.scmi_handle*, i32, %struct.reset_dom_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
