; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_register_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_register_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_controller = type { i32, %struct.TYPE_5__, %struct.TYPE_4__** }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hsi_register_controller(%struct.hsi_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hsi_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hsi_controller* %0, %struct.hsi_controller** %3, align 8
  %6 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %7 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %6, i32 0, i32 1
  %8 = call i32 @device_add(%struct.TYPE_5__* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %71

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %45, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %17 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %22 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %21, i32 0, i32 1
  %23 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %24 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %33 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @device_add(%struct.TYPE_5__* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  br label %51

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %14

48:                                               ; preds = %14
  %49 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %50 = call i32 @hsi_scan_board_info(%struct.hsi_controller* %49)
  store i32 0, i32* %2, align 4
  br label %71

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %56, %51
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %4, align 4
  %55 = icmp ugt i32 %53, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %58 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %59, i64 %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @device_del(%struct.TYPE_5__* %64)
  br label %52

66:                                               ; preds = %52
  %67 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %68 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %67, i32 0, i32 1
  %69 = call i32 @device_del(%struct.TYPE_5__* %68)
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %66, %48, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @device_add(%struct.TYPE_5__*) #1

declare dso_local i32 @hsi_scan_board_info(%struct.hsi_controller*) #1

declare dso_local i32 @device_del(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
