; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_get_manifest_size_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_get_manifest_size_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gb_connection* }
%struct.gb_connection = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.gb_control_get_manifest_size_response = type { i32 }

@GB_CONTROL_TYPE_GET_MANIFEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to get manifest size: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_control_get_manifest_size_operation(%struct.gb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_interface*, align 8
  %4 = alloca %struct.gb_control_get_manifest_size_response, align 4
  %5 = alloca %struct.gb_connection*, align 8
  %6 = alloca i32, align 4
  store %struct.gb_interface* %0, %struct.gb_interface** %3, align 8
  %7 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %8 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  store %struct.gb_connection* %11, %struct.gb_connection** %5, align 8
  %12 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %13 = load i32, i32* @GB_CONTROL_TYPE_GET_MANIFEST_SIZE, align 4
  %14 = call i32 @gb_operation_sync(%struct.gb_connection* %12, i32 %13, i32* null, i32 0, %struct.gb_control_get_manifest_size_response* %4, i32 4)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %19 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.gb_control_get_manifest_size_response, %struct.gb_control_get_manifest_size_response* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, i32*, i32, %struct.gb_control_get_manifest_size_response*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
