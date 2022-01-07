; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_mci_size_mb_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_mci_size_mb_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mem_ctl_info = type { i32, %struct.csrow_info** }
%struct.csrow_info = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @mci_size_mb_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mci_size_mb_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mem_ctl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.csrow_info*, align 8
  %12 = alloca %struct.dimm_info*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.mem_ctl_info* @to_mci(%struct.device* %13)
  store %struct.mem_ctl_info* %14, %struct.mem_ctl_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %56, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %18 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %23 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %22, i32 0, i32 1
  %24 = load %struct.csrow_info**, %struct.csrow_info*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %24, i64 %26
  %28 = load %struct.csrow_info*, %struct.csrow_info** %27, align 8
  store %struct.csrow_info* %28, %struct.csrow_info** %11, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %52, %21
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.csrow_info*, %struct.csrow_info** %11, align 8
  %32 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load %struct.csrow_info*, %struct.csrow_info** %11, align 8
  %37 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.dimm_info*, %struct.dimm_info** %43, align 8
  store %struct.dimm_info* %44, %struct.dimm_info** %12, align 8
  %45 = load %struct.dimm_info*, %struct.dimm_info** %12, align 8
  %46 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %29

55:                                               ; preds = %29
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %15

59:                                               ; preds = %15
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @PAGES_TO_MiB(i32 %61)
  %63 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %62)
  ret i32 %63
}

declare dso_local %struct.mem_ctl_info* @to_mci(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @PAGES_TO_MiB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
