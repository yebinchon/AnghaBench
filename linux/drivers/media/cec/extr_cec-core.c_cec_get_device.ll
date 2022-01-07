; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-core.c_cec_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-core.c_cec_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_devnode = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cec_get_device(%struct.cec_devnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cec_devnode*, align 8
  store %struct.cec_devnode* %0, %struct.cec_devnode** %3, align 8
  %4 = load %struct.cec_devnode*, %struct.cec_devnode** %3, align 8
  %5 = getelementptr inbounds %struct.cec_devnode, %struct.cec_devnode* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.cec_devnode*, %struct.cec_devnode** %3, align 8
  %8 = getelementptr inbounds %struct.cec_devnode, %struct.cec_devnode* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.cec_devnode*, %struct.cec_devnode** %3, align 8
  %13 = getelementptr inbounds %struct.cec_devnode, %struct.cec_devnode* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.cec_devnode*, %struct.cec_devnode** %3, align 8
  %19 = getelementptr inbounds %struct.cec_devnode, %struct.cec_devnode* %18, i32 0, i32 1
  %20 = call i32 @get_device(i32* %19)
  %21 = load %struct.cec_devnode*, %struct.cec_devnode** %3, align 8
  %22 = getelementptr inbounds %struct.cec_devnode, %struct.cec_devnode* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
