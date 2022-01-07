; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_add_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_add_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_smbus_cmi = type { i32, i32, i32, %struct.TYPE_6__*, %struct.acpi_handle* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.acpi_handle = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_4__ = type { %union.acpi_object* }
%struct.TYPE_5__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to evaluate %s: %i\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid argument type\0A\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"SMBus CMI Version %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unsupported CMI method: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_smbus_cmi*, i8*)* @acpi_smbus_cmi_add_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_smbus_cmi_add_cap(%struct.acpi_smbus_cmi* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_smbus_cmi*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %struct.acpi_handle*, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca i32, align 4
  store %struct.acpi_smbus_cmi* %0, %struct.acpi_smbus_cmi** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %11 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %union.acpi_object*
  store %union.acpi_object* %13, %union.acpi_object** %10, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %16, i32 0, i32 4
  %18 = load %struct.acpi_handle*, %struct.acpi_handle** %17, align 8
  store %struct.acpi_handle* %18, %struct.acpi_handle** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i8* %19, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %103, label %27

27:                                               ; preds = %2
  %28 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %28, i32 0, i32 4
  %30 = load %struct.acpi_handle*, %struct.acpi_handle** %29, align 8
  %31 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @acpi_evaluate_object(%struct.acpi_handle* %30, i32 %35, i32* null, %struct.acpi_buffer* %6)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %27
  %41 = load %struct.acpi_handle*, %struct.acpi_handle** %7, align 8
  %42 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (%struct.acpi_handle*, i8*, ...) @acpi_handle_err(%struct.acpi_handle* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %134

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %53 = load %union.acpi_object*, %union.acpi_object** %52, align 8
  store %union.acpi_object* %53, %union.acpi_object** %8, align 8
  %54 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %55 = icmp ne %union.acpi_object* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %58 = bitcast %union.acpi_object* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %union.acpi_object*, %union.acpi_object** %65, align 8
  store %union.acpi_object* %66, %union.acpi_object** %8, align 8
  br label %75

67:                                               ; preds = %56, %51
  %68 = load %struct.acpi_handle*, %struct.acpi_handle** %7, align 8
  %69 = call i32 (%struct.acpi_handle*, i8*, ...) @acpi_handle_err(%struct.acpi_handle* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %71 = load %union.acpi_object*, %union.acpi_object** %70, align 8
  %72 = call i32 @kfree(%union.acpi_object* %71)
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %134

75:                                               ; preds = %62
  %76 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %77 = bitcast %union.acpi_object* %76 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.acpi_handle*, %struct.acpi_handle** %7, align 8
  %83 = call i32 (%struct.acpi_handle*, i8*, ...) @acpi_handle_err(%struct.acpi_handle* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %84 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %85 = load %union.acpi_object*, %union.acpi_object** %84, align 8
  %86 = call i32 @kfree(%union.acpi_object* %85)
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %134

89:                                               ; preds = %75
  %90 = load %struct.acpi_handle*, %struct.acpi_handle** %7, align 8
  %91 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %92 = bitcast %union.acpi_object* %91 to %struct.TYPE_5__*
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 (%struct.acpi_handle*, i8*, ...) @acpi_handle_debug(%struct.acpi_handle* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %99 = load %union.acpi_object*, %union.acpi_object** %98, align 8
  %100 = call i32 @kfree(%union.acpi_object* %99)
  %101 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %102 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %133

103:                                              ; preds = %2
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %106 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %105, i32 0, i32 3
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @strcmp(i8* %104, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %103
  %113 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %114 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  br label %132

115:                                              ; preds = %103
  %116 = load i8*, i8** %5, align 8
  %117 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %118 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %117, i32 0, i32 3
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @strcmp(i8* %116, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %115
  %125 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %126 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %125, i32 0, i32 2
  store i32 1, i32* %126, align 8
  br label %131

127:                                              ; preds = %115
  %128 = load %struct.acpi_handle*, %struct.acpi_handle** %7, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = call i32 (%struct.acpi_handle*, i8*, ...) @acpi_handle_debug(%struct.acpi_handle* %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %127, %124
  br label %132

132:                                              ; preds = %131, %112
  br label %133

133:                                              ; preds = %132, %97
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %81, %67, %40
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @acpi_evaluate_object(%struct.acpi_handle*, i32, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_handle_err(%struct.acpi_handle*, i8*, ...) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i32 @acpi_handle_debug(%struct.acpi_handle*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
