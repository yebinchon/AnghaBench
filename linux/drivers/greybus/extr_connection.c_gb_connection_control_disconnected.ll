; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_control_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_control_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.gb_control* }
%struct.gb_control = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to disconnect cport: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_connection*)* @gb_connection_control_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_connection_control_disconnected(%struct.gb_connection* %0) #0 {
  %2 = alloca %struct.gb_connection*, align 8
  %3 = alloca %struct.gb_control*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %2, align 8
  %6 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %7 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %10 = call i64 @gb_connection_is_static(%struct.gb_connection* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %15 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.gb_control*, %struct.gb_control** %17, align 8
  store %struct.gb_control* %18, %struct.gb_control** %3, align 8
  %19 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %20 = call i64 @gb_connection_is_control(%struct.gb_connection* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %24 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %29 = call i32 @gb_control_mode_switch_operation(%struct.gb_control* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %48

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %22
  br label %48

35:                                               ; preds = %13
  %36 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @gb_control_disconnected_operation(%struct.gb_control* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %43 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_warn(i32* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %12, %32, %34, %41, %35
  ret void
}

declare dso_local i64 @gb_connection_is_static(%struct.gb_connection*) #1

declare dso_local i64 @gb_connection_is_control(%struct.gb_connection*) #1

declare dso_local i32 @gb_control_mode_switch_operation(%struct.gb_control*) #1

declare dso_local i32 @gb_control_disconnected_operation(%struct.gb_control*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
