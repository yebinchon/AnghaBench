; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_create_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_create_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.gb_bundle = type { %struct.gb_interface* }
%struct.gb_interface = type { i32 }

@GB_CONNECTION_FLAG_CORE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gb_connection* @gb_connection_create_flags(%struct.gb_bundle* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.gb_bundle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.gb_interface*, align 8
  store %struct.gb_bundle* %0, %struct.gb_bundle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load %struct.gb_bundle*, %struct.gb_bundle** %5, align 8
  %11 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %10, i32 0, i32 0
  %12 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  store %struct.gb_interface* %12, %struct.gb_interface** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @GB_CONNECTION_FLAG_CORE_MASK, align 8
  %15 = and i64 %13, %14
  %16 = call i64 @WARN_ON_ONCE(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i64, i64* @GB_CONNECTION_FLAG_CORE_MASK, align 8
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %8, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %18, %4
  %24 = load %struct.gb_interface*, %struct.gb_interface** %9, align 8
  %25 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.gb_interface*, %struct.gb_interface** %9, align 8
  %28 = load %struct.gb_bundle*, %struct.gb_bundle** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call %struct.gb_connection* @_gb_connection_create(i32 %26, i32 -1, %struct.gb_interface* %27, %struct.gb_bundle* %28, i32 %29, i32 %30, i64 %31)
  ret %struct.gb_connection* %32
}

declare dso_local i64 @WARN_ON_ONCE(i64) #1

declare dso_local %struct.gb_connection* @_gb_connection_create(i32, i32, %struct.gb_interface*, %struct.gb_bundle*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
