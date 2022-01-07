; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_grip_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_grip_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.gameport_driver = type { i32 }
%struct.grip_mp = type { %struct.TYPE_2__**, %struct.gameport* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GAMEPORT_MODE_RAW = common dso_local global i32 0, align 4
@grip_poll = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, %struct.gameport_driver*)* @grip_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grip_connect(%struct.gameport* %0, %struct.gameport_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca %struct.gameport_driver*, align 8
  %6 = alloca %struct.grip_mp*, align 8
  %7 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store %struct.gameport_driver* %1, %struct.gameport_driver** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.grip_mp* @kzalloc(i32 16, i32 %8)
  store %struct.grip_mp* %9, %struct.grip_mp** %6, align 8
  %10 = icmp ne %struct.grip_mp* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %89

14:                                               ; preds = %2
  %15 = load %struct.gameport*, %struct.gameport** %4, align 8
  %16 = load %struct.grip_mp*, %struct.grip_mp** %6, align 8
  %17 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %16, i32 0, i32 1
  store %struct.gameport* %15, %struct.gameport** %17, align 8
  %18 = load %struct.gameport*, %struct.gameport** %4, align 8
  %19 = load %struct.grip_mp*, %struct.grip_mp** %6, align 8
  %20 = call i32 @gameport_set_drvdata(%struct.gameport* %18, %struct.grip_mp* %19)
  %21 = load %struct.gameport*, %struct.gameport** %4, align 8
  %22 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %23 = load i32, i32* @GAMEPORT_MODE_RAW, align 4
  %24 = call i32 @gameport_open(%struct.gameport* %21, %struct.gameport_driver* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %83

28:                                               ; preds = %14
  %29 = load %struct.gameport*, %struct.gameport** %4, align 8
  %30 = load i32, i32* @grip_poll, align 4
  %31 = call i32 @gameport_set_poll_handler(%struct.gameport* %29, i32 %30)
  %32 = load %struct.gameport*, %struct.gameport** %4, align 8
  %33 = call i32 @gameport_set_poll_interval(%struct.gameport* %32, i32 20)
  %34 = load %struct.grip_mp*, %struct.grip_mp** %6, align 8
  %35 = call i32 @multiport_init(%struct.grip_mp* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %80

40:                                               ; preds = %28
  %41 = load %struct.grip_mp*, %struct.grip_mp** %6, align 8
  %42 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %40
  %50 = load %struct.grip_mp*, %struct.grip_mp** %6, align 8
  %51 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %49
  %59 = load %struct.grip_mp*, %struct.grip_mp** %6, align 8
  %60 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %61, i64 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %58
  %68 = load %struct.grip_mp*, %struct.grip_mp** %6, align 8
  %69 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %70, i64 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %80

79:                                               ; preds = %67, %58, %49, %40
  store i32 0, i32* %3, align 4
  br label %89

80:                                               ; preds = %76, %37
  %81 = load %struct.gameport*, %struct.gameport** %4, align 8
  %82 = call i32 @gameport_close(%struct.gameport* %81)
  br label %83

83:                                               ; preds = %80, %27
  %84 = load %struct.gameport*, %struct.gameport** %4, align 8
  %85 = call i32 @gameport_set_drvdata(%struct.gameport* %84, %struct.grip_mp* null)
  %86 = load %struct.grip_mp*, %struct.grip_mp** %6, align 8
  %87 = call i32 @kfree(%struct.grip_mp* %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %79, %11
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.grip_mp* @kzalloc(i32, i32) #1

declare dso_local i32 @gameport_set_drvdata(%struct.gameport*, %struct.grip_mp*) #1

declare dso_local i32 @gameport_open(%struct.gameport*, %struct.gameport_driver*, i32) #1

declare dso_local i32 @gameport_set_poll_handler(%struct.gameport*, i32) #1

declare dso_local i32 @gameport_set_poll_interval(%struct.gameport*, i32) #1

declare dso_local i32 @multiport_init(%struct.grip_mp*) #1

declare dso_local i32 @gameport_close(%struct.gameport*) #1

declare dso_local i32 @kfree(%struct.grip_mp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
