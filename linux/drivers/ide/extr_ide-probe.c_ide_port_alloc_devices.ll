; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-probe.c_ide_port_alloc_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-probe.c_ide_port_alloc_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32* }

@MAX_DRIVES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @ide_port_alloc_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_port_alloc_devices(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MAX_DRIVES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @kzalloc_node(i32 8, i32 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = icmp eq %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %48

20:                                               ; preds = %12
  %21 = load i32, i32* @SECTOR_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @kzalloc_node(i32 %21, i32 %22, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %45

33:                                               ; preds = %20
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 %39
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %40, align 8
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %8

44:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %53

45:                                               ; preds = %32
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = call i32 @kfree(%struct.TYPE_7__* %46)
  br label %48

48:                                               ; preds = %45, %19
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = call i32 @ide_port_free_devices(%struct.TYPE_6__* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i8* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i32 @ide_port_free_devices(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
