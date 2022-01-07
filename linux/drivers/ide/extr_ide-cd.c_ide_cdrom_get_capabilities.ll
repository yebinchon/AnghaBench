; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cdrom_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cdrom_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.cdrom_info* }
%struct.cdrom_info = type { %struct.cdrom_device_info }
%struct.cdrom_device_info = type { i32 }
%struct.packet_command = type { i32 }

@ATAPI_CAPABILITIES_PAGE_SIZE = common dso_local global i32 0, align 4
@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@IDE_AFLAG_FULL_CAPS_PAGE = common dso_local global i32 0, align 4
@ATAPI_CAPABILITIES_PAGE_PAD_SIZE = common dso_local global i64 0, align 8
@CGC_DATA_UNKNOWN = common dso_local global i32 0, align 4
@GPMODE_CAPABILITIES_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cdrom_get_capabilities(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cdrom_info*, align 8
  %6 = alloca %struct.cdrom_device_info*, align 8
  %7 = alloca %struct.packet_command, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.cdrom_info*, %struct.cdrom_info** %12, align 8
  store %struct.cdrom_info* %13, %struct.cdrom_info** %5, align 8
  %14 = load %struct.cdrom_info*, %struct.cdrom_info** %5, align 8
  %15 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %14, i32 0, i32 0
  store %struct.cdrom_device_info* %15, %struct.cdrom_device_info** %6, align 8
  store i32 3, i32* %9, align 4
  %16 = load i32, i32* @ATAPI_CAPABILITIES_PAGE_SIZE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @IDE_DBG_FUNC, align 4
  %18 = call i32 @ide_debug_log(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IDE_AFLAG_FULL_CAPS_PAGE, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i64, i64* @ATAPI_CAPABILITIES_PAGE_PAD_SIZE, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %25, %2
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @CGC_DATA_UNKNOWN, align 4
  %35 = call i32 @init_cdrom_command(%struct.packet_command* %7, i32* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %44, %31
  %37 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %38 = load i32, i32* @GPMODE_CAPABILITIES_PAGE, align 4
  %39 = call i32 @cdrom_mode_sense(%struct.cdrom_device_info* %37, %struct.packet_command* %7, i32 %38, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %48

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %36, label %48

48:                                               ; preds = %44, %42
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @ide_debug_log(i32, i8*) #1

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i32*, i32, i32) #1

declare dso_local i32 @cdrom_mode_sense(%struct.cdrom_device_info*, %struct.packet_command*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
