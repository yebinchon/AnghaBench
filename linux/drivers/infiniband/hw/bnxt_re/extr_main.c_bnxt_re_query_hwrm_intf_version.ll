; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_query_hwrm_intf_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_query_hwrm_intf_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { %struct.TYPE_4__, %struct.bnxt_en_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_en_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)* }
%struct.bnxt_fw_msg = type { i32 }
%struct.hwrm_ver_get_output = type { i32, i64, i64, i64, i32 }
%struct.hwrm_ver_get_input = type { i32, i32, i32, i32 }

@HWRM_VER_GET = common dso_local global i32 0, align 4
@HWRM_VERSION_MAJOR = common dso_local global i32 0, align 4
@HWRM_VERSION_MINOR = common dso_local global i32 0, align 4
@HWRM_VERSION_UPDATE = common dso_local global i32 0, align 4
@DFLT_HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to query HW version, rc = 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_re_dev*)* @bnxt_re_query_hwrm_intf_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_re_query_hwrm_intf_version(%struct.bnxt_re_dev* %0) #0 {
  %2 = alloca %struct.bnxt_re_dev*, align 8
  %3 = alloca %struct.bnxt_en_dev*, align 8
  %4 = alloca %struct.hwrm_ver_get_output, align 8
  %5 = alloca %struct.hwrm_ver_get_input, align 4
  %6 = alloca %struct.bnxt_fw_msg, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %2, align 8
  %8 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %9 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %8, i32 0, i32 1
  %10 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %9, align 8
  store %struct.bnxt_en_dev* %10, %struct.bnxt_en_dev** %3, align 8
  %11 = bitcast %struct.hwrm_ver_get_output* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = bitcast %struct.hwrm_ver_get_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  %13 = call i32 @memset(%struct.bnxt_fw_msg* %6, i32 0, i32 4)
  %14 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %15 = bitcast %struct.hwrm_ver_get_input* %5 to i8*
  %16 = load i32, i32* @HWRM_VER_GET, align 4
  %17 = call i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev* %14, i8* %15, i32 %16, i32 -1, i32 -1)
  %18 = load i32, i32* @HWRM_VERSION_MAJOR, align 4
  %19 = getelementptr inbounds %struct.hwrm_ver_get_input, %struct.hwrm_ver_get_input* %5, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @HWRM_VERSION_MINOR, align 4
  %21 = getelementptr inbounds %struct.hwrm_ver_get_input, %struct.hwrm_ver_get_input* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @HWRM_VERSION_UPDATE, align 4
  %23 = getelementptr inbounds %struct.hwrm_ver_get_input, %struct.hwrm_ver_get_input* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = bitcast %struct.hwrm_ver_get_input* %5 to i8*
  %25 = bitcast %struct.hwrm_ver_get_output* %4 to i8*
  %26 = load i32, i32* @DFLT_HWRM_CMD_TIMEOUT, align 4
  %27 = call i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg* %6, i8* %24, i32 16, i8* %25, i32 40, i32 %26)
  %28 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)*, i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)** %31, align 8
  %33 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %3, align 8
  %34 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %35 = call i32 %32(%struct.bnxt_en_dev* %33, i32 %34, %struct.bnxt_fw_msg* %6)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %40 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %64

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %4, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 48
  %48 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %4, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 32
  %52 = or i32 %47, %51
  %53 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %4, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %55, 16
  %57 = or i32 %52, %56
  %58 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %57, %59
  %61 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %62 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  br label %64

64:                                               ; preds = %43, %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.bnxt_fw_msg*, i32, i32) #2

declare dso_local i32 @bnxt_re_init_hwrm_hdr(%struct.bnxt_re_dev*, i8*, i32, i32, i32) #2

declare dso_local i32 @bnxt_re_fill_fw_msg(%struct.bnxt_fw_msg*, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
