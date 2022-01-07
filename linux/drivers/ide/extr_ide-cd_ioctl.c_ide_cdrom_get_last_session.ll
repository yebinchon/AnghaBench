; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_get_last_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_get_last_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.cdrom_info* }
%struct.cdrom_info = type { %struct.atapi_toc* }
%struct.atapi_toc = type { i32, i32 }
%struct.cdrom_multisession = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IDE_AFLAG_TOC_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cdrom_get_last_session(%struct.cdrom_device_info* %0, %struct.cdrom_multisession* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.cdrom_multisession*, align 8
  %6 = alloca %struct.atapi_toc*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.cdrom_info*, align 8
  %9 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.cdrom_multisession* %1, %struct.cdrom_multisession** %5, align 8
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.cdrom_info*, %struct.cdrom_info** %14, align 8
  store %struct.cdrom_info* %15, %struct.cdrom_info** %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IDE_AFLAG_TOC_VALID, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.cdrom_info*, %struct.cdrom_info** %8, align 8
  %24 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %23, i32 0, i32 0
  %25 = load %struct.atapi_toc*, %struct.atapi_toc** %24, align 8
  %26 = icmp ne %struct.atapi_toc* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = call i32 @ide_cd_read_toc(%struct.TYPE_5__* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.cdrom_info*, %struct.cdrom_info** %8, align 8
  %37 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %36, i32 0, i32 0
  %38 = load %struct.atapi_toc*, %struct.atapi_toc** %37, align 8
  store %struct.atapi_toc* %38, %struct.atapi_toc** %6, align 8
  %39 = load %struct.atapi_toc*, %struct.atapi_toc** %6, align 8
  %40 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cdrom_multisession*, %struct.cdrom_multisession** %5, align 8
  %43 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.atapi_toc*, %struct.atapi_toc** %6, align 8
  %46 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cdrom_multisession*, %struct.cdrom_multisession** %5, align 8
  %49 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %35, %32
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ide_cd_read_toc(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
