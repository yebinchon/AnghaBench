; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_do_probe_ddc_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_do_probe_ddc_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@DDC_SEGMENT_ADDR = common dso_local global i32 0, align 4
@DDC_ADDR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"drm: skipping non-existent adapter %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64)* @drm_do_probe_ddc_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_do_probe_ddc_edid(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x %struct.i2c_msg], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.i2c_adapter*
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @EDID_LENGTH, align 4
  %20 = mul i32 %18, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %10, align 1
  %22 = load i32, i32* %7, align 4
  %23 = lshr i32 %22, 1
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %11, align 1
  %25 = load i8, i8* %11, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 3, i32 2
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %12, align 1
  store i32 5, i32* %14, align 4
  br label %31

31:                                               ; preds = %81, %4
  %32 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %15, i64 0, i64 0
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 1
  store i8* %11, i8** %34, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 3
  %37 = load i32, i32* @DDC_SEGMENT_ADDR, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 1
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 1
  store i8* %10, i8** %40, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 3
  %43 = load i32, i32* @DDC_ADDR, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 1
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 0
  %46 = load i64, i64* %8, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %45, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 1
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %48, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 2
  %51 = load i32, i32* @I2C_M_RD, align 4
  store i32 %51, i32* %50, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 3
  %53 = load i32, i32* @DDC_ADDR, align 4
  store i32 %53, i32* %52, align 4
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %55 = load i8, i8* %12, align 1
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 3, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %15, i64 0, i64 %58
  %60 = load i8, i8* %12, align 1
  %61 = call i32 @i2c_transfer(%struct.i2c_adapter* %54, %struct.i2c_msg* %59, i8 zeroext %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %31
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %68 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %83

71:                                               ; preds = %31
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %13, align 4
  %74 = load i8, i8* %12, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %77, %72
  %82 = phi i1 [ false, %72 ], [ %80, %77 ]
  br i1 %82, label %31, label %83

83:                                               ; preds = %81, %66
  %84 = load i32, i32* %13, align 4
  %85 = load i8, i8* %12, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 -1
  ret i32 %89
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i8 zeroext) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
