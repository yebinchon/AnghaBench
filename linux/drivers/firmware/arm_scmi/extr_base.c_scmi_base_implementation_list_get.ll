; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_base.c_scmi_base_implementation_list_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_base.c_scmi_base_implementation_list_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.device* }
%struct.device = type { i32 }
%struct.scmi_xfer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@BASE_DISCOVER_LIST_PROTOCOLS = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_BASE = common dso_local global i32 0, align 4
@MAX_PROTOCOLS_IMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No. of Protocol > MAX_PROTOCOLS_IMP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32*)* @scmi_base_implementation_list_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_base_implementation_list_get(%struct.scmi_handle* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scmi_xfer*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %16 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %14, align 8
  %18 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %19 = load i32, i32* @BASE_DISCOVER_LIST_PROTOCOLS, align 4
  %20 = load i32, i32* @SCMI_PROTOCOL_BASE, align 4
  %21 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %18, i32 %19, i32 %20, i32 4, i32 0, %struct.scmi_xfer** %9)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %94

26:                                               ; preds = %2
  %27 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %28 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %10, align 8
  %31 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %32 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %11, align 8
  %35 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %36 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32* %39, i32** %6, align 8
  br label %40

40:                                               ; preds = %86, %26
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %45 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %46 = call i32 @scmi_do_xfer(%struct.scmi_handle* %44, %struct.scmi_xfer* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %89

50:                                               ; preds = %40
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* @MAX_PROTOCOLS_IMP, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.device*, %struct.device** %14, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %89

62:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %79, %62
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %63

82:                                               ; preds = %63
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %40, label %89

89:                                               ; preds = %86, %59, %49
  %90 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %91 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %92 = call i32 @scmi_xfer_put(%struct.scmi_handle* %90, %struct.scmi_xfer* %91)
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %89, %24
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
