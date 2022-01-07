; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_cdrom_eject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_cdrom_eject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.cdrom_info* }
%struct.cdrom_info = type { %struct.cdrom_device_info }
%struct.cdrom_device_info = type { i32 }

@BLK_MAX_CDB = common dso_local global i32 0, align 4
@IDE_AFLAG_NO_EJECT = common dso_local global i32 0, align 4
@EDRIVE_CANT_DO_THIS = common dso_local global i32 0, align 4
@IDE_AFLAG_DOOR_LOCKED = common dso_local global i32 0, align 4
@CDC_CLOSE_TRAY = common dso_local global i32 0, align 4
@GPCMD_START_STOP_UNIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @cdrom_eject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_eject(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdrom_info*, align 8
  %7 = alloca %struct.cdrom_device_info*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.cdrom_info*, %struct.cdrom_info** %13, align 8
  store %struct.cdrom_info* %14, %struct.cdrom_info** %6, align 8
  %15 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %16 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %15, i32 0, i32 0
  store %struct.cdrom_device_info* %16, %struct.cdrom_device_info** %7, align 8
  store i8 2, i8* %8, align 1
  %17 = load i32, i32* @BLK_MAX_CDB, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IDE_AFLAG_NO_EJECT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EDRIVE_CANT_DO_THIS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %70

33:                                               ; preds = %27, %2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IDE_AFLAG_DOOR_LOCKED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %70

44:                                               ; preds = %40, %33
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %7, align 8
  %49 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CDC_CLOSE_TRAY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i8 0, i8* %8, align 1
  br label %55

55:                                               ; preds = %54, %47, %44
  %56 = load i32, i32* @BLK_MAX_CDB, align 4
  %57 = call i32 @memset(i8* %20, i32 0, i32 %56)
  %58 = load i8, i8* @GPCMD_START_STOP_UNIT, align 1
  %59 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %58, i8* %59, align 16
  %60 = load i8, i8* %8, align 1
  %61 = sext i8 %60 to i32
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = or i32 %61, %64
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, i8* %20, i64 4
  store i8 %66, i8* %67, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = call i32 @ide_cd_queue_pc(%struct.TYPE_4__* %68, i8* %20, i32 0, i32* null, i32* null, i32* null, i32 0, i32 0)
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %55, %43, %30
  %71 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ide_cd_queue_pc(%struct.TYPE_4__*, i8*, i32, i32*, i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
