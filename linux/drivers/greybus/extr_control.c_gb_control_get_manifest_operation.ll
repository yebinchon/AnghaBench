; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_get_manifest_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_get_manifest_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gb_connection* }
%struct.gb_connection = type { i32 }

@GB_CONTROL_TYPE_GET_MANIFEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_control_get_manifest_operation(%struct.gb_interface* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.gb_interface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gb_connection*, align 8
  store %struct.gb_interface* %0, %struct.gb_interface** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.gb_interface*, %struct.gb_interface** %4, align 8
  %9 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.gb_connection*, %struct.gb_connection** %11, align 8
  store %struct.gb_connection* %12, %struct.gb_connection** %7, align 8
  %13 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %14 = load i32, i32* @GB_CONTROL_TYPE_GET_MANIFEST, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @gb_operation_sync(%struct.gb_connection* %13, i32 %14, i32* null, i32 0, i8* %15, i64 %16)
  ret i32 %17
}

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
