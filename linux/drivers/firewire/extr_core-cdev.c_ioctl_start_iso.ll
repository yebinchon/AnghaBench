; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_start_iso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_start_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%union.ioctl_arg = type { %struct.fw_cdev_start_iso }
%struct.fw_cdev_start_iso = type { i64, i32, i32, i32 }

@FW_CDEV_ISO_CONTEXT_MATCH_TAG0 = common dso_local global i64 0, align 8
@FW_ISO_CONTEXT_MATCH_TAG0 = common dso_local global i64 0, align 8
@FW_CDEV_ISO_CONTEXT_MATCH_TAG1 = common dso_local global i64 0, align 8
@FW_ISO_CONTEXT_MATCH_TAG1 = common dso_local global i64 0, align 8
@FW_CDEV_ISO_CONTEXT_MATCH_TAG2 = common dso_local global i64 0, align 8
@FW_ISO_CONTEXT_MATCH_TAG2 = common dso_local global i64 0, align 8
@FW_CDEV_ISO_CONTEXT_MATCH_TAG3 = common dso_local global i64 0, align 8
@FW_ISO_CONTEXT_MATCH_TAG3 = common dso_local global i64 0, align 8
@FW_CDEV_ISO_CONTEXT_MATCH_ALL_TAGS = common dso_local global i64 0, align 8
@FW_ISO_CONTEXT_MATCH_ALL_TAGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FW_ISO_CONTEXT_RECEIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_start_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_start_iso(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  %6 = alloca %struct.fw_cdev_start_iso*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %7 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %8 = bitcast %union.ioctl_arg* %7 to %struct.fw_cdev_start_iso*
  store %struct.fw_cdev_start_iso* %8, %struct.fw_cdev_start_iso** %6, align 8
  %9 = load i64, i64* @FW_CDEV_ISO_CONTEXT_MATCH_TAG0, align 8
  %10 = load i64, i64* @FW_ISO_CONTEXT_MATCH_TAG0, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @FW_CDEV_ISO_CONTEXT_MATCH_TAG1, align 8
  %14 = load i64, i64* @FW_ISO_CONTEXT_MATCH_TAG1, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @FW_CDEV_ISO_CONTEXT_MATCH_TAG2, align 8
  %18 = load i64, i64* @FW_ISO_CONTEXT_MATCH_TAG2, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* @FW_CDEV_ISO_CONTEXT_MATCH_TAG3, align 8
  %22 = load i64, i64* @FW_ISO_CONTEXT_MATCH_TAG3, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @FW_CDEV_ISO_CONTEXT_MATCH_ALL_TAGS, align 8
  %26 = load i64, i64* @FW_ISO_CONTEXT_MATCH_ALL_TAGS, align 8
  %27 = icmp ne i64 %25, %26
  br label %28

28:                                               ; preds = %24, %20, %16, %12, %2
  %29 = phi i1 [ true, %20 ], [ true, %16 ], [ true, %12 ], [ true, %2 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUILD_BUG_ON(i32 %30)
  %32 = load %struct.client*, %struct.client** %4, align 8
  %33 = getelementptr inbounds %struct.client, %struct.client* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp eq %struct.TYPE_2__* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load %struct.fw_cdev_start_iso*, %struct.fw_cdev_start_iso** %6, align 8
  %38 = getelementptr inbounds %struct.fw_cdev_start_iso, %struct.fw_cdev_start_iso* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %28
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %84

44:                                               ; preds = %36
  %45 = load %struct.client*, %struct.client** %4, align 8
  %46 = getelementptr inbounds %struct.client, %struct.client* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FW_ISO_CONTEXT_RECEIVE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %44
  %53 = load %struct.fw_cdev_start_iso*, %struct.fw_cdev_start_iso** %6, align 8
  %54 = getelementptr inbounds %struct.fw_cdev_start_iso, %struct.fw_cdev_start_iso* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load %struct.fw_cdev_start_iso*, %struct.fw_cdev_start_iso** %6, align 8
  %59 = getelementptr inbounds %struct.fw_cdev_start_iso, %struct.fw_cdev_start_iso* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 15
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.fw_cdev_start_iso*, %struct.fw_cdev_start_iso** %6, align 8
  %64 = getelementptr inbounds %struct.fw_cdev_start_iso, %struct.fw_cdev_start_iso* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 15
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %57, %52
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %84

70:                                               ; preds = %62, %44
  %71 = load %struct.client*, %struct.client** %4, align 8
  %72 = getelementptr inbounds %struct.client, %struct.client* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.fw_cdev_start_iso*, %struct.fw_cdev_start_iso** %6, align 8
  %75 = getelementptr inbounds %struct.fw_cdev_start_iso, %struct.fw_cdev_start_iso* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fw_cdev_start_iso*, %struct.fw_cdev_start_iso** %6, align 8
  %78 = getelementptr inbounds %struct.fw_cdev_start_iso, %struct.fw_cdev_start_iso* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fw_cdev_start_iso*, %struct.fw_cdev_start_iso** %6, align 8
  %81 = getelementptr inbounds %struct.fw_cdev_start_iso, %struct.fw_cdev_start_iso* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @fw_iso_context_start(%struct.TYPE_2__* %73, i32 %76, i32 %79, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %70, %67, %41
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @fw_iso_context_start(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
