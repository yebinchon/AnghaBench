; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_erase_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_erase_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f34_data = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Erasing config...\0A\00", align 1
@v7_CMD_ERASE_UI_CONFIG = common dso_local global i32 0, align 4
@v7_CMD_ERASE_DISP_CONFIG = common dso_local global i32 0, align 4
@v7_CMD_ERASE_BL_CONFIG = common dso_local global i32 0, align 4
@F34_ERASE_WAIT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f34_data*)* @rmi_f34v7_erase_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f34v7_erase_config(%struct.f34_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f34_data*, align 8
  %4 = alloca i32, align 4
  store %struct.f34_data* %0, %struct.f34_data** %3, align 8
  %5 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %6 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @dev_info(i32* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %11 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = call i32 @init_completion(i32* %12)
  %14 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %15 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %45 [
    i32 128, label %18
    i32 129, label %27
    i32 130, label %36
  ]

18:                                               ; preds = %1
  %19 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %20 = load i32, i32* @v7_CMD_ERASE_UI_CONFIG, align 4
  %21 = call i32 @rmi_f34v7_write_command(%struct.f34_data* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %18
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %29 = load i32, i32* @v7_CMD_ERASE_DISP_CONFIG, align 4
  %30 = call i32 @rmi_f34v7_write_command(%struct.f34_data* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %54

35:                                               ; preds = %27
  br label %45

36:                                               ; preds = %1
  %37 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %38 = load i32, i32* @v7_CMD_ERASE_BL_CONFIG, align 4
  %39 = call i32 @rmi_f34v7_write_command(%struct.f34_data* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %54

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %1, %44, %35, %26
  %46 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %47 = load i32, i32* @F34_ERASE_WAIT_MS, align 4
  %48 = call i32 @rmi_f34v7_wait_for_idle(%struct.f34_data* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %51, %42, %33, %24
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @rmi_f34v7_write_command(%struct.f34_data*, i32) #1

declare dso_local i32 @rmi_f34v7_wait_for_idle(%struct.f34_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
