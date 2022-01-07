; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dvr_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dvr_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.dvb_device* }
%struct.dvb_device = type { i32, i32, i32, %struct.dmxdev* }
%struct.dmxdev = type { i32, i32, i32, %struct.TYPE_4__, i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*)* }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dvb_dvr_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dvr_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dvb_device*, align 8
  %6 = alloca %struct.dmxdev*, align 8
  %7 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 1
  %10 = load %struct.dvb_device*, %struct.dvb_device** %9, align 8
  store %struct.dvb_device* %10, %struct.dvb_device** %5, align 8
  %11 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %11, i32 0, i32 3
  %13 = load %struct.dmxdev*, %struct.dmxdev** %12, align 8
  store %struct.dmxdev* %13, %struct.dmxdev** %6, align 8
  %14 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %15 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @O_ACCMODE, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @O_WRONLY, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %2
  %25 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %26 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %25, i32 0, i32 7
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %28, align 8
  %30 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %31 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %30, i32 0, i32 7
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 %29(%struct.TYPE_5__* %32)
  %34 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %35 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %34, i32 0, i32 7
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %37, align 8
  %39 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %40 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %39, i32 0, i32 7
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %43 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %38(%struct.TYPE_5__* %41, i32 %44)
  br label %46

46:                                               ; preds = %24, %2
  %47 = load %struct.file*, %struct.file** %4, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @O_ACCMODE, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @O_RDONLY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %56 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %106

59:                                               ; preds = %54, %46
  %60 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %61 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %66 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %65, i32 0, i32 4
  %67 = call i64 @dvb_vb2_is_streaming(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %71 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %70, i32 0, i32 4
  %72 = call i32 @dvb_vb2_stream_off(i32* %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %75 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %74, i32 0, i32 4
  %76 = call i32 @dvb_vb2_release(i32* %75)
  br label %77

77:                                               ; preds = %73, %59
  %78 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %79 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %83 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %105

87:                                               ; preds = %77
  %88 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %89 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = bitcast i32* %91 to i8*
  store i8* %92, i8** %7, align 8
  %93 = call i32 (...) @mb()
  %94 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %95 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %94, i32 0, i32 2
  %96 = call i32 @spin_lock_irq(i32* %95)
  %97 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %98 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  %100 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %101 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %100, i32 0, i32 2
  %102 = call i32 @spin_unlock_irq(i32* %101)
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @vfree(i8* %103)
  br label %105

105:                                              ; preds = %87, %77
  br label %106

106:                                              ; preds = %105, %54
  %107 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %108 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %108, align 8
  %111 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %112 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %127

115:                                              ; preds = %106
  %116 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %117 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %122 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %121, i32 0, i32 1
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %125 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %124, i32 0, i32 1
  %126 = call i32 @wake_up(i32* %125)
  br label %131

127:                                              ; preds = %115, %106
  %128 = load %struct.dmxdev*, %struct.dmxdev** %6, align 8
  %129 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %128, i32 0, i32 1
  %130 = call i32 @mutex_unlock(i32* %129)
  br label %131

131:                                              ; preds = %127, %120
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dvb_vb2_is_streaming(i32*) #1

declare dso_local i32 @dvb_vb2_stream_off(i32*) #1

declare dso_local i32 @dvb_vb2_release(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
