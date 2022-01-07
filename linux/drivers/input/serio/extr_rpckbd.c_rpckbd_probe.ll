; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_rpckbd.c_rpckbd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_rpckbd.c_rpckbd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rpckbd_data = type { i32, i32, i32, i32, %struct.rpckbd_data*, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.serio = type { i32, i32, i32, i32, %struct.serio*, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__ }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SERIO_8042 = common dso_local global i32 0, align 4
@rpckbd_write = common dso_local global i32 0, align 4
@rpckbd_open = common dso_local global i32 0, align 4
@rpckbd_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"RiscPC PS/2 kbd port\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"rpckbd/serio0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpckbd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpckbd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rpckbd_data*, align 8
  %5 = alloca %struct.serio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i32 @platform_get_irq(%struct.platform_device* %8, i32 0)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  br label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %17 ]
  store i32 %21, i32* %2, align 4
  br label %98

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @platform_get_irq(%struct.platform_device* %23, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  br label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ]
  store i32 %36, i32* %2, align 4
  br label %98

37:                                               ; preds = %22
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.serio* @kzalloc(i32 48, i32 %38)
  store %struct.serio* %39, %struct.serio** %5, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.serio* @kzalloc(i32 48, i32 %40)
  %42 = bitcast %struct.serio* %41 to %struct.rpckbd_data*
  store %struct.rpckbd_data* %42, %struct.rpckbd_data** %4, align 8
  %43 = load %struct.serio*, %struct.serio** %5, align 8
  %44 = icmp ne %struct.serio* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.rpckbd_data*, %struct.rpckbd_data** %4, align 8
  %47 = icmp ne %struct.rpckbd_data* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45, %37
  %49 = load %struct.rpckbd_data*, %struct.rpckbd_data** %4, align 8
  %50 = bitcast %struct.rpckbd_data* %49 to %struct.serio*
  %51 = call i32 @kfree(%struct.serio* %50)
  %52 = load %struct.serio*, %struct.serio** %5, align 8
  %53 = call i32 @kfree(%struct.serio* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %98

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.rpckbd_data*, %struct.rpckbd_data** %4, align 8
  %59 = getelementptr inbounds %struct.rpckbd_data, %struct.rpckbd_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.rpckbd_data*, %struct.rpckbd_data** %4, align 8
  %62 = getelementptr inbounds %struct.rpckbd_data, %struct.rpckbd_data* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @SERIO_8042, align 4
  %64 = load %struct.serio*, %struct.serio** %5, align 8
  %65 = getelementptr inbounds %struct.serio, %struct.serio* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @rpckbd_write, align 4
  %68 = load %struct.serio*, %struct.serio** %5, align 8
  %69 = getelementptr inbounds %struct.serio, %struct.serio* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @rpckbd_open, align 4
  %71 = load %struct.serio*, %struct.serio** %5, align 8
  %72 = getelementptr inbounds %struct.serio, %struct.serio* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @rpckbd_close, align 4
  %74 = load %struct.serio*, %struct.serio** %5, align 8
  %75 = getelementptr inbounds %struct.serio, %struct.serio* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.serio*, %struct.serio** %5, align 8
  %79 = getelementptr inbounds %struct.serio, %struct.serio* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32* %77, i32** %80, align 8
  %81 = load %struct.rpckbd_data*, %struct.rpckbd_data** %4, align 8
  %82 = bitcast %struct.rpckbd_data* %81 to %struct.serio*
  %83 = load %struct.serio*, %struct.serio** %5, align 8
  %84 = getelementptr inbounds %struct.serio, %struct.serio* %83, i32 0, i32 4
  store %struct.serio* %82, %struct.serio** %84, align 8
  %85 = load %struct.serio*, %struct.serio** %5, align 8
  %86 = getelementptr inbounds %struct.serio, %struct.serio* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @strlcpy(i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 4)
  %89 = load %struct.serio*, %struct.serio** %5, align 8
  %90 = getelementptr inbounds %struct.serio, %struct.serio* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @strlcpy(i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load %struct.serio*, %struct.serio** %5, align 8
  %95 = call i32 @platform_set_drvdata(%struct.platform_device* %93, %struct.serio* %94)
  %96 = load %struct.serio*, %struct.serio** %5, align 8
  %97 = call i32 @serio_register_port(%struct.serio* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %56, %48, %35, %20
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.serio*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.serio*) #1

declare dso_local i32 @serio_register_port(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
