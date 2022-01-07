; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_check_firmware_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_check_firmware_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i32, i32, i64 }

@HDR_OFFSET = common dso_local global i64 0, align 8
@HDR_FW_VERS = common dso_local global i64 0, align 8
@HDR_API_VERS = common dso_local global i64 0, align 8
@HDR_FW_OPTIONS = common dso_local global i64 0, align 8
@FW_OPTION_TRACE_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"ColdFire initialized, firmware v%d API v%d.%d (trace %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@API_VERSION_MAJ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Unsupported coprocessor API version !\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*)* @check_firmware_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_firmware_image(%struct.fsi_master_acf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_master_acf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %3, align 8
  %7 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %8 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HDR_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* @HDR_FW_VERS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @ioread16be(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %16 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HDR_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @HDR_API_VERS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @ioread16be(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %24 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HDR_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* @HDR_FW_OPTIONS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @ioread32be(i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @FW_OPTION_TRACE_EN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %39 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %41 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 8
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 255
  %48 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %49 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %54 = call i32 @dev_info(i32 %42, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45, i32 %47, i8* %53)
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 8
  %57 = load i32, i32* @API_VERSION_MAJ, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %1
  %60 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %61 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @ioread16be(i64) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
