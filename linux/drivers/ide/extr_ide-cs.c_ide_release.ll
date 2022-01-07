; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cs.c_ide_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cs.c_ide_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.ide_host* }
%struct.ide_host = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"ide_release(0x%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @ide_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.ide_host*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.ide_host*, %struct.ide_host** %12, align 8
  store %struct.ide_host* %13, %struct.ide_host** %4, align 8
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 0
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %17 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load %struct.ide_host*, %struct.ide_host** %4, align 8
  %24 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %5, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.ide_host*, %struct.ide_host** %4, align 8
  %37 = call i32 @ide_host_remove(%struct.ide_host* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @release_region(i64 %40, i32 1)
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @release_region(i64 %42, i32 8)
  br label %44

44:                                               ; preds = %22, %1
  %45 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %46 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %45)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.pcmcia_device*) #1

declare dso_local i32 @ide_host_remove(%struct.ide_host*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
