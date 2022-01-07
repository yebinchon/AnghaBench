; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_enter_flash_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_enter_flash_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f34_data = type { %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i32)* }

@v7_CMD_ENABLE_FLASH_PROG = common dso_local global i32 0, align 4
@F34_ENABLE_WAIT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f34_data*)* @rmi_f34v7_enter_flash_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f34v7_enter_flash_prog(%struct.f34_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f34_data*, align 8
  %4 = alloca i32, align 4
  store %struct.f34_data* %0, %struct.f34_data** %3, align 8
  %5 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %6 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %12, align 8
  %14 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %15 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %20 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %13(%struct.TYPE_8__* %18, i32 %23)
  %25 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %26 = call i32 @rmi_f34v7_read_flash_status(%struct.f34_data* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %59

31:                                               ; preds = %1
  %32 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %33 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %59

38:                                               ; preds = %31
  %39 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %40 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %44 = load i32, i32* @v7_CMD_ENABLE_FLASH_PROG, align 4
  %45 = call i32 @rmi_f34v7_write_command(%struct.f34_data* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %59

50:                                               ; preds = %38
  %51 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %52 = load i32, i32* @F34_ENABLE_WAIT_MS, align 4
  %53 = call i32 @rmi_f34v7_wait_for_idle(%struct.f34_data* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %56, %48, %37, %29
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @rmi_f34v7_read_flash_status(%struct.f34_data*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @rmi_f34v7_write_command(%struct.f34_data*, i32) #1

declare dso_local i32 @rmi_f34v7_wait_for_idle(%struct.f34_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
