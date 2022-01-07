; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-serio.c_iforce_serio_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-serio.c_iforce_serio_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.serio_driver = type { i32 }
%struct.iforce_serio = type { %struct.TYPE_2__, %struct.serio* }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iforce_serio_xport_ops = common dso_local global i32 0, align 4
@BUS_RS232 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @iforce_serio_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iforce_serio_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.iforce_serio*, align 8
  %7 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.iforce_serio* @kzalloc(i32 16, i32 %8)
  store %struct.iforce_serio* %9, %struct.iforce_serio** %6, align 8
  %10 = load %struct.iforce_serio*, %struct.iforce_serio** %6, align 8
  %11 = icmp ne %struct.iforce_serio* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.iforce_serio*, %struct.iforce_serio** %6, align 8
  %17 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* @iforce_serio_xport_ops, i32** %18, align 8
  %19 = load %struct.serio*, %struct.serio** %4, align 8
  %20 = load %struct.iforce_serio*, %struct.iforce_serio** %6, align 8
  %21 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %20, i32 0, i32 1
  store %struct.serio* %19, %struct.serio** %21, align 8
  %22 = load %struct.serio*, %struct.serio** %4, align 8
  %23 = load %struct.iforce_serio*, %struct.iforce_serio** %6, align 8
  %24 = call i32 @serio_set_drvdata(%struct.serio* %22, %struct.iforce_serio* %23)
  %25 = load %struct.serio*, %struct.serio** %4, align 8
  %26 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %27 = call i32 @serio_open(%struct.serio* %25, %struct.serio_driver* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %45

31:                                               ; preds = %15
  %32 = load %struct.serio*, %struct.serio** %4, align 8
  %33 = getelementptr inbounds %struct.serio, %struct.serio* %32, i32 0, i32 0
  %34 = load i32, i32* @BUS_RS232, align 4
  %35 = load %struct.iforce_serio*, %struct.iforce_serio** %6, align 8
  %36 = getelementptr inbounds %struct.iforce_serio, %struct.iforce_serio* %35, i32 0, i32 0
  %37 = call i32 @iforce_init_device(i32* %33, i32 %34, %struct.TYPE_2__* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %51

42:                                               ; preds = %40
  %43 = load %struct.serio*, %struct.serio** %4, align 8
  %44 = call i32 @serio_close(%struct.serio* %43)
  br label %45

45:                                               ; preds = %42, %30
  %46 = load %struct.serio*, %struct.serio** %4, align 8
  %47 = call i32 @serio_set_drvdata(%struct.serio* %46, %struct.iforce_serio* null)
  %48 = load %struct.iforce_serio*, %struct.iforce_serio** %6, align 8
  %49 = call i32 @kfree(%struct.iforce_serio* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %41, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.iforce_serio* @kzalloc(i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.iforce_serio*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @iforce_init_device(i32*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @kfree(%struct.iforce_serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
