; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_stdp2690_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_stdp2690_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unable to read EDID.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid EDID data\0A\00", align 1
@EDID_EXT_BLOCK_CNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to read EDID extension blocks.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.i2c_client*)* @stdp2690_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stdp2690_get_edid(%struct.i2c_client* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %4, align 8
  store i8 0, i8* %5, align 1
  %12 = load i32, i32* @EDID_LENGTH, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kmalloc(i32 %12, i32 %13)
  store i32* %14, i32** %7, align 8
  %15 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  store i8* %5, i8** %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i64 1
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  %25 = load i32, i32* @EDID_LENGTH, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 1
  %27 = load i32*, i32** %7, align 8
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %26, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 2
  %30 = load i32, i32* @I2C_M_RD, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 3
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %31, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %97

38:                                               ; preds = %1
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %40 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %41 = call i32 @i2c_transfer(%struct.i2c_adapter* %39, %struct.i2c_msg* %40, i32 2)
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %94

45:                                               ; preds = %38
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @drm_edid_block_valid(i32* %46, i32 0, i32 0, i32* null)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %94

51:                                               ; preds = %45
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* @EDID_EXT_BLOCK_CNT, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* @EDID_LENGTH, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @EDID_LENGTH, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %51
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32* @kmalloc(i32 %65, i32 %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  store i32* null, i32** %2, align 8
  br label %97

71:                                               ; preds = %62
  store i8 0, i8* %5, align 1
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 1
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 1
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %80 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %81 = call i32 @i2c_transfer(%struct.i2c_adapter* %79, %struct.i2c_msg* %80, i32 2)
  %82 = icmp ne i32 %81, 2
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %94

85:                                               ; preds = %71
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @drm_edid_block_valid(i32* %86, i32 1, i32 0, i32* null)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %94

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %51
  %93 = load i32*, i32** %7, align 8
  store i32* %93, i32** %2, align 8
  br label %97

94:                                               ; preds = %89, %83, %49, %43
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @kfree(i32* %95)
  store i32* null, i32** %2, align 8
  br label %97

97:                                               ; preds = %94, %92, %70, %37
  %98 = load i32*, i32** %2, align 8
  ret i32* %98
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_edid_block_valid(i32*, i32, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
