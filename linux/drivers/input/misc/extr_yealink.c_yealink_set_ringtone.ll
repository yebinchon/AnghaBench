; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_yealink.c_yealink_set_ringtone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_yealink.c_yealink_set_ringtone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yealink_dev = type { %struct.yld_ctl_packet* }
%struct.yld_ctl_packet = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CMD_RING_VOLUME = common dso_local global i32 0, align 4
@CMD_RING_NOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.yealink_dev*, i32*, i64)* @yealink_set_ringtone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yealink_set_ringtone(%struct.yealink_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.yealink_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.yld_ctl_packet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.yealink_dev* %0, %struct.yealink_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.yealink_dev*, %struct.yealink_dev** %5, align 8
  %12 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %11, i32 0, i32 0
  %13 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %12, align 8
  store %struct.yld_ctl_packet* %13, %struct.yld_ctl_packet** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ule i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %91

19:                                               ; preds = %3
  %20 = load %struct.yealink_dev*, %struct.yealink_dev** %5, align 8
  %21 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %20, i32 0, i32 0
  %22 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %21, align 8
  %23 = call i32 @memset(%struct.yld_ctl_packet* %22, i32 0, i32 24)
  %24 = load i32, i32* @CMD_RING_VOLUME, align 4
  %25 = load %struct.yealink_dev*, %struct.yealink_dev** %5, align 8
  %26 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %25, i32 0, i32 0
  %27 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %26, align 8
  %28 = getelementptr inbounds %struct.yld_ctl_packet, %struct.yld_ctl_packet* %27, i32 0, i32 3
  store i32 %24, i32* %28, align 4
  %29 = load %struct.yealink_dev*, %struct.yealink_dev** %5, align 8
  %30 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %29, i32 0, i32 0
  %31 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %30, align 8
  %32 = getelementptr inbounds %struct.yld_ctl_packet, %struct.yld_ctl_packet* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.yealink_dev*, %struct.yealink_dev** %5, align 8
  %37 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %36, i32 0, i32 0
  %38 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %37, align 8
  %39 = getelementptr inbounds %struct.yld_ctl_packet, %struct.yld_ctl_packet* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %35, i32* %41, align 4
  %42 = load %struct.yealink_dev*, %struct.yealink_dev** %5, align 8
  %43 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %8, align 8
  %44 = call i32 @yealink_cmd(%struct.yealink_dev* %42, %struct.yld_ctl_packet* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %7, align 8
  %49 = load i32, i32* @CMD_RING_NOTE, align 4
  %50 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %8, align 8
  %51 = getelementptr inbounds %struct.yld_ctl_packet, %struct.yld_ctl_packet* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %67, %19
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %52
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %58, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ugt i64 %64, 8
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 8, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %57
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %8, align 8
  %70 = getelementptr inbounds %struct.yld_ctl_packet, %struct.yld_ctl_packet* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @cpu_to_be16(i32 %71)
  %73 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %8, align 8
  %74 = getelementptr inbounds %struct.yld_ctl_packet, %struct.yld_ctl_packet* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %8, align 8
  %76 = getelementptr inbounds %struct.yld_ctl_packet, %struct.yld_ctl_packet* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @memcpy(i32* %77, i32* %81, i32 %82)
  %84 = load %struct.yealink_dev*, %struct.yealink_dev** %5, align 8
  %85 = load %struct.yld_ctl_packet*, %struct.yld_ctl_packet** %8, align 8
  %86 = call i32 @yealink_cmd(%struct.yealink_dev* %84, %struct.yld_ctl_packet* %85)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %52

90:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %16
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @memset(%struct.yld_ctl_packet*, i32, i32) #1

declare dso_local i32 @yealink_cmd(%struct.yealink_dev*, %struct.yld_ctl_packet*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
