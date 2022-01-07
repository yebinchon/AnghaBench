; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mousedev = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@mousedev_mix = common dso_local global %struct.mousedev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mousedev*)* @mousedev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousedev_destroy(%struct.mousedev* %0) #0 {
  %2 = alloca %struct.mousedev*, align 8
  store %struct.mousedev* %0, %struct.mousedev** %2, align 8
  %3 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %4 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %3, i32 0, i32 2
  %5 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %6 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %5, i32 0, i32 0
  %7 = call i32 @cdev_device_del(i32* %4, %struct.TYPE_3__* %6)
  %8 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %9 = call i32 @mousedev_cleanup(%struct.mousedev* %8)
  %10 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %11 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @MINOR(i32 %13)
  %15 = call i32 @input_free_minor(i32 %14)
  %16 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %17 = load %struct.mousedev*, %struct.mousedev** @mousedev_mix, align 8
  %18 = icmp ne %struct.mousedev* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %21 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %20, i32 0, i32 1
  %22 = call i32 @input_unregister_handle(i32* %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %25 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %24, i32 0, i32 0
  %26 = call i32 @put_device(%struct.TYPE_3__* %25)
  ret void
}

declare dso_local i32 @cdev_device_del(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @mousedev_cleanup(%struct.mousedev*) #1

declare dso_local i32 @input_free_minor(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @input_unregister_handle(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
