; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_get_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_get_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.firmware = type { i32 }

@SEV_FW_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"amd/amd_sev_fam%.2xh_model%.2xh.sbin\00", align 1
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"amd/amd_sev_fam%.2xh_model%.1xxh.sbin\00", align 1
@SEV_FW_FILE = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.firmware**)* @sev_get_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sev_get_firmware(%struct.device* %0, %struct.firmware** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.firmware**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.firmware** %1, %struct.firmware*** %5, align 8
  %10 = load i32, i32* @SEV_FW_NAME_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @SEV_FW_NAME_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %17 = trunc i64 %11 to i32
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %20 = call i32 @snprintf(i8* %13, i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = trunc i64 %15 to i32
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %24 = and i32 %23, 240
  %25 = ashr i32 %24, 4
  %26 = call i32 @snprintf(i8* %16, i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.firmware**, %struct.firmware*** %5, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i64 @firmware_request_nowarn(%struct.firmware** %27, i8* %13, %struct.device* %28)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %2
  %32 = load %struct.firmware**, %struct.firmware*** %5, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i64 @firmware_request_nowarn(%struct.firmware** %32, i8* %16, %struct.device* %33)
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.firmware**, %struct.firmware*** %5, align 8
  %38 = load i8*, i8** @SEV_FW_FILE, align 8
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i64 @firmware_request_nowarn(%struct.firmware** %37, i8* %38, %struct.device* %39)
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %31, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i64 @firmware_request_nowarn(%struct.firmware**, i8*, %struct.device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
