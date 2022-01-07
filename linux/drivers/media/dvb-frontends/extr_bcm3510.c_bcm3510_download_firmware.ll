; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.bcm3510_state* }
%struct.bcm3510_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend*, %struct.firmware**, i32)* }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"requesting firmware\0A\00", align 1
@BCM3510_DEFAULT_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not load firmware (%s): %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"got firmware: %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"firmware chunk, addr: 0x%04x, len: 0x%04x, total length: 0x%04zx\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"firmware download failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"firmware download successfully completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @bcm3510_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_download_firmware(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.bcm3510_state*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.bcm3510_state*, %struct.bcm3510_state** %12, align 8
  store %struct.bcm3510_state* %13, %struct.bcm3510_state** %4, align 8
  %14 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.bcm3510_state*, %struct.bcm3510_state** %4, align 8
  %16 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.dvb_frontend*, %struct.firmware**, i32)*, i32 (%struct.dvb_frontend*, %struct.firmware**, i32)** %18, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = load i32, i32* @BCM3510_DEFAULT_FIRMWARE, align 4
  %22 = call i32 %19(%struct.dvb_frontend* %20, %struct.firmware** %5, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @BCM3510_DEFAULT_FIRMWARE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %1
  %30 = load %struct.firmware*, %struct.firmware** %5, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.firmware*, %struct.firmware** %5, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %77, %29
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.firmware*, %struct.firmware** %5, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %37
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le16_to_cpu(i32 %48)
  store i64 %49, i64* %6, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le16_to_cpu(i32 %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.firmware*, %struct.firmware** %5, align 8
  %60 = getelementptr inbounds %struct.firmware, %struct.firmware* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i64 %57, i64 %58, i32 %61)
  %63 = load %struct.bcm3510_state*, %struct.bcm3510_state** %4, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @bcm3510_write_ram(%struct.bcm3510_state* %63, i64 %64, i32* %69, i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %43
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %2, align 4
  br label %88

77:                                               ; preds = %43
  %78 = load i64, i64* %7, align 8
  %79 = add nsw i64 4, %78
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %10, align 4
  br label %37

84:                                               ; preds = %37
  %85 = load %struct.firmware*, %struct.firmware** %5, align 8
  %86 = call i32 @release_firmware(%struct.firmware* %85)
  %87 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %73, %24
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @bcm3510_write_ram(%struct.bcm3510_state*, i64, i32*, i64) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
