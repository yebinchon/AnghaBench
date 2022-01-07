; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_select_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_select_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.cdrom_info* }
%struct.cdrom_info = type { i32 }

@ATAPI_CAPABILITIES_PAGE_SIZE = common dso_local global i32 0, align 4
@BLK_MAX_CDB = common dso_local global i32 0, align 4
@GPCMD_SET_SPEED = common dso_local global i8 0, align 1
@CDC_CD_R = common dso_local global i32 0, align 4
@CDC_CD_RW = common dso_local global i32 0, align 4
@CDC_DVD_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cdrom_select_speed(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.cdrom_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %12 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.cdrom_info*, %struct.cdrom_info** %15, align 8
  store %struct.cdrom_info* %16, %struct.cdrom_info** %6, align 8
  %17 = load i32, i32* @ATAPI_CAPABILITIES_PAGE_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @BLK_MAX_CDB, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 65535, i32* %4, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 177
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32, i32* @BLK_MAX_CDB, align 4
  %32 = call i32 @memset(i8* %23, i32 0, i32 %31)
  %33 = load i8, i8* @GPCMD_SET_SPEED, align 1
  %34 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %33, i8* %34, align 16
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds i8, i8* %23, i64 2
  store i8 %38, i8* %39, align 2
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, i8* %23, i64 3
  store i8 %42, i8* %43, align 1
  %44 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %45 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CDC_CD_R, align 4
  %48 = load i32, i32* @CDC_CD_RW, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CDC_DVD_R, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %46, %51
  %53 = load i32, i32* @CDC_CD_R, align 4
  %54 = load i32, i32* @CDC_CD_RW, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CDC_DVD_R, align 4
  %57 = or i32 %55, %56
  %58 = icmp ne i32 %52, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %30
  %60 = load i32, i32* %4, align 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, i8* %23, i64 4
  store i8 %63, i8* %64, align 4
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, 255
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds i8, i8* %23, i64 5
  store i8 %67, i8* %68, align 1
  br label %69

69:                                               ; preds = %59, %30
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = call i32 @ide_cd_queue_pc(%struct.TYPE_5__* %70, i8* %23, i32 0, i32* null, i32* null, i32* null, i32 0, i32 0)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = call i32 @ide_cdrom_get_capabilities(%struct.TYPE_5__* %72, i32* %20)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = call i32 @ide_cdrom_update_speed(%struct.TYPE_5__* %76, i32* %20)
  %78 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %79 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %82 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %69
  %84 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %84)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ide_cd_queue_pc(%struct.TYPE_5__*, i8*, i32, i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @ide_cdrom_get_capabilities(%struct.TYPE_5__*, i32*) #2

declare dso_local i32 @ide_cdrom_update_speed(%struct.TYPE_5__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
