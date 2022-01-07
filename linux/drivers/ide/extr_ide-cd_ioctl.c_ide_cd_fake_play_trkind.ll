; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cd_fake_play_trkind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cd_fake_play_trkind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_ti = type { i64, i64 }
%struct.atapi_toc_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BLK_MAX_CDB = common dso_local global i32 0, align 4
@CDROM_LEADOUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GPCMD_PLAY_AUDIO_MSF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ide_cd_fake_play_trkind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cd_fake_play_trkind(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cdrom_ti*, align 8
  %7 = alloca %struct.atapi_toc_entry*, align 8
  %8 = alloca %struct.atapi_toc_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.cdrom_ti*
  store %struct.cdrom_ti* %16, %struct.cdrom_ti** %6, align 8
  %17 = load i32, i32* @BLK_MAX_CDB, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.cdrom_ti*, %struct.cdrom_ti** %6, align 8
  %23 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ide_cd_get_toc_entry(i32* %21, i64 %24, %struct.atapi_toc_entry** %7)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %82

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.cdrom_ti*, %struct.cdrom_ti** %6, align 8
  %33 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ide_cd_get_toc_entry(i32* %31, i64 %34, %struct.atapi_toc_entry** %8)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %82

40:                                               ; preds = %30
  %41 = load %struct.cdrom_ti*, %struct.cdrom_ti** %6, align 8
  %42 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CDROM_LEADOUT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %8, align 8
  %48 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %47, i32 1
  store %struct.atapi_toc_entry* %48, %struct.atapi_toc_entry** %8, align 8
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %7, align 8
  %51 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  %54 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %8, align 8
  %55 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ule i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %82

64:                                               ; preds = %49
  %65 = load i32, i32* @BLK_MAX_CDB, align 4
  %66 = call i32 @memset(i8* %20, i32 0, i32 %65)
  %67 = load i8, i8* @GPCMD_PLAY_AUDIO_MSF, align 1
  %68 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %67, i8* %68, align 16
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i8, i8* %20, i64 3
  %71 = getelementptr inbounds i8, i8* %20, i64 4
  %72 = getelementptr inbounds i8, i8* %20, i64 5
  %73 = call i32 @lba_to_msf(i64 %69, i8* %70, i8* %71, i8* %72)
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds i8, i8* %20, i64 6
  %77 = getelementptr inbounds i8, i8* %20, i64 7
  %78 = getelementptr inbounds i8, i8* %20, i64 8
  %79 = call i32 @lba_to_msf(i64 %75, i8* %76, i8* %77, i8* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @ide_cd_queue_pc(i32* %80, i8* %20, i32 0, i32* null, i32* null, i32* null, i32 0, i32 0)
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %82

82:                                               ; preds = %64, %61, %38, %28
  %83 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ide_cd_get_toc_entry(i32*, i64, %struct.atapi_toc_entry**) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @lba_to_msf(i64, i8*, i8*, i8*) #2

declare dso_local i32 @ide_cd_queue_pc(i32*, i8*, i32, i32*, i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
