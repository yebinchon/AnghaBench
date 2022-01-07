; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_xfer_get_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_xfer_get_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_xfer = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i8*, i8* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.scmi_info = type { %struct.TYPE_7__*, %struct.device*, %struct.scmi_xfers_info }
%struct.TYPE_7__ = type { i64 }
%struct.device = type { i32 }
%struct.scmi_xfers_info = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to get free message slot(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle* %0, i8* %1, i8* %2, i64 %3, i64 %4, %struct.scmi_xfer** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.scmi_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.scmi_xfer**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.scmi_xfer*, align 8
  %16 = alloca %struct.scmi_info*, align 8
  %17 = alloca %struct.scmi_xfers_info*, align 8
  %18 = alloca %struct.device*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.scmi_xfer** %5, %struct.scmi_xfer*** %13, align 8
  %19 = load %struct.scmi_handle*, %struct.scmi_handle** %8, align 8
  %20 = call %struct.scmi_info* @handle_to_scmi_info(%struct.scmi_handle* %19)
  store %struct.scmi_info* %20, %struct.scmi_info** %16, align 8
  %21 = load %struct.scmi_info*, %struct.scmi_info** %16, align 8
  %22 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %21, i32 0, i32 2
  store %struct.scmi_xfers_info* %22, %struct.scmi_xfers_info** %17, align 8
  %23 = load %struct.scmi_info*, %struct.scmi_info** %16, align 8
  %24 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %23, i32 0, i32 1
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %18, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.scmi_info*, %struct.scmi_info** %16, align 8
  %28 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %26, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %6
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.scmi_info*, %struct.scmi_info** %16, align 8
  %36 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %6
  %42 = load i32, i32* @ERANGE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %90

44:                                               ; preds = %33
  %45 = load %struct.scmi_handle*, %struct.scmi_handle** %8, align 8
  %46 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %17, align 8
  %47 = call %struct.scmi_xfer* @scmi_xfer_get(%struct.scmi_handle* %45, %struct.scmi_xfers_info* %46)
  store %struct.scmi_xfer* %47, %struct.scmi_xfer** %15, align 8
  %48 = load %struct.scmi_xfer*, %struct.scmi_xfer** %15, align 8
  %49 = call i64 @IS_ERR(%struct.scmi_xfer* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.scmi_xfer*, %struct.scmi_xfer** %15, align 8
  %53 = call i32 @PTR_ERR(%struct.scmi_xfer* %52)
  store i32 %53, i32* %14, align 4
  %54 = load %struct.device*, %struct.device** %18, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %7, align 4
  br label %90

58:                                               ; preds = %44
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.scmi_xfer*, %struct.scmi_xfer** %15, align 8
  %61 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %72

66:                                               ; preds = %58
  %67 = load %struct.scmi_info*, %struct.scmi_info** %16, align 8
  %68 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  br label %72

72:                                               ; preds = %66, %65
  %73 = phi i64 [ %63, %65 ], [ %71, %66 ]
  %74 = load %struct.scmi_xfer*, %struct.scmi_xfer** %15, align 8
  %75 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load %struct.scmi_xfer*, %struct.scmi_xfer** %15, align 8
  %79 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load %struct.scmi_xfer*, %struct.scmi_xfer** %15, align 8
  %83 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.scmi_xfer*, %struct.scmi_xfer** %15, align 8
  %86 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.scmi_xfer*, %struct.scmi_xfer** %15, align 8
  %89 = load %struct.scmi_xfer**, %struct.scmi_xfer*** %13, align 8
  store %struct.scmi_xfer* %88, %struct.scmi_xfer** %89, align 8
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %72, %51, %41
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.scmi_info* @handle_to_scmi_info(%struct.scmi_handle*) #1

declare dso_local %struct.scmi_xfer* @scmi_xfer_get(%struct.scmi_handle*, %struct.scmi_xfers_info*) #1

declare dso_local i64 @IS_ERR(%struct.scmi_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.scmi_xfer*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
