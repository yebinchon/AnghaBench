; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_get_mcn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_get_mcn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32* }
%struct.cdrom_mcn = type { i8* }

@BLK_MAX_CDB = common dso_local global i32 0, align 4
@GPCMD_READ_SUBCHANNEL = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cdrom_get_mcn(%struct.cdrom_device_info* %0, %struct.cdrom_mcn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.cdrom_mcn*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [24 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.cdrom_mcn* %1, %struct.cdrom_mcn** %5, align 8
  %14 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %15 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* @BLK_MAX_CDB, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i32 24, i32* %12, align 4
  %21 = load i32, i32* @BLK_MAX_CDB, align 4
  %22 = call i32 @memset(i8* %20, i32 0, i32 %21)
  %23 = load i8, i8* @GPCMD_READ_SUBCHANNEL, align 1
  %24 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %23, i8* %24, align 16
  %25 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 2, i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %20, i64 2
  store i8 64, i8* %26, align 2
  %27 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 2, i8* %27, align 1
  %28 = load i32, i32* %12, align 4
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds i8, i8* %20, i64 8
  store i8 %29, i8* %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds [24 x i8], [24 x i8]* %9, i64 0, i64 0
  %33 = call i32 @ide_cd_queue_pc(i32* %31, i8* %20, i32 0, i8* %32, i32* %12, i32* null, i32 0, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %52

38:                                               ; preds = %2
  store i32 7, i32* %8, align 4
  %39 = load %struct.cdrom_mcn*, %struct.cdrom_mcn** %5, align 8
  %40 = getelementptr inbounds %struct.cdrom_mcn, %struct.cdrom_mcn* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds [24 x i8], [24 x i8]* %9, i64 0, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 9
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @memcpy(i8* %41, i8* %43, i32 %44)
  %46 = load %struct.cdrom_mcn*, %struct.cdrom_mcn** %5, align 8
  %47 = getelementptr inbounds %struct.cdrom_mcn, %struct.cdrom_mcn* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %52

52:                                               ; preds = %38, %36
  %53 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ide_cd_queue_pc(i32*, i8*, i32, i8*, i32*, i32*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
