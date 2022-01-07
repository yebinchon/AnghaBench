; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_vv_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_vv_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32*, %struct.saa7146_vv*, i32, i32, i32 }
%struct.saa7146_vv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@SAA7146_CLIPPING_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_vv_release(%struct.saa7146_dev* %0) #0 {
  %2 = alloca %struct.saa7146_dev*, align 8
  %3 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %2, align 8
  %4 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %5 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %4, i32 0, i32 1
  %6 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  store %struct.saa7146_vv* %6, %struct.saa7146_vv** %3, align 8
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %8 = call i32 @DEB_EE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %7)
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %10 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %9, i32 0, i32 4
  %11 = call i32 @v4l2_device_unregister(i32* %10)
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %13 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SAA7146_CLIPPING_MEM, align 4
  %16 = load %struct.saa7146_vv*, %struct.saa7146_vv** %3, align 8
  %17 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.saa7146_vv*, %struct.saa7146_vv** %3, align 8
  %21 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_free_consistent(i32 %14, i32 %15, i32 %19, i32 %23)
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %26 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %25, i32 0, i32 2
  %27 = call i32 @v4l2_ctrl_handler_free(i32* %26)
  %28 = load %struct.saa7146_vv*, %struct.saa7146_vv** %3, align 8
  %29 = call i32 @kfree(%struct.saa7146_vv* %28)
  %30 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %31 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %30, i32 0, i32 1
  store %struct.saa7146_vv* null, %struct.saa7146_vv** %31, align 8
  %32 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %33 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  ret i32 0
}

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @kfree(%struct.saa7146_vv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
