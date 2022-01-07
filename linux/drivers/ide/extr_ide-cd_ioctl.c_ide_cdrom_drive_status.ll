; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_drive_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_drive_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32* }
%struct.media_event_desc = type { i64, i64 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }

@CDSL_CURRENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@CDS_DISC_OK = common dso_local global i32 0, align 4
@CDS_TRAY_OPEN = common dso_local global i32 0, align 4
@CDS_NO_DISC = common dso_local global i32 0, align 4
@NOT_READY = common dso_local global i64 0, align 8
@CDS_DRIVE_NOT_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cdrom_drive_status(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.media_event_desc, align 8
  %8 = alloca %struct.scsi_sense_hdr, align 8
  %9 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CDSL_CURRENT, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %83

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @cdrom_check_status(i32* %20, %struct.scsi_sense_hdr* %8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UNIT_ATTENTION, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %83

31:                                               ; preds = %24
  %32 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %33 = call i32 @cdrom_get_media_event(%struct.cdrom_device_info* %32, %struct.media_event_desc* %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.media_event_desc, %struct.media_event_desc* %7, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %83

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.media_event_desc, %struct.media_event_desc* %7, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @CDS_TRAY_OPEN, align 4
  store i32 %46, i32* %3, align 4
  br label %83

47:                                               ; preds = %41
  %48 = load i32, i32* @CDS_NO_DISC, align 4
  store i32 %48, i32* %3, align 4
  br label %83

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NOT_READY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %58, %54, %49
  %65 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NOT_READY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 58
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @CDS_NO_DISC, align 4
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %73, %69
  %80 = load i32, i32* @CDS_TRAY_OPEN, align 4
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %64
  %82 = load i32, i32* @CDS_DRIVE_NOT_READY, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %79, %77, %62, %47, %45, %39, %29, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @cdrom_check_status(i32*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @cdrom_get_media_event(%struct.cdrom_device_info*, %struct.media_event_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
