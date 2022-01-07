; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_verify_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_verify_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i32* }
%struct.ims_pcu_flash_fmt = type { i32, i32, i32 }

@READ_APP = common dso_local global i32 0, align 4
@IMS_PCU_CMD_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to retrieve block at 0x%08x, len %d, error: %d\0A\00", align 1
@IMS_PCU_BL_DATA_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Wrong block when retrieving 0x%08x (0x%08x), len %d (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Mismatch in block at 0x%08x, len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*, i64, i32, i32*)* @ims_pcu_verify_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_verify_block(%struct.ims_pcu* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ims_pcu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ims_pcu_flash_fmt*, align 8
  %11 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %13 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.ims_pcu_flash_fmt*
  store %struct.ims_pcu_flash_fmt* %17, %struct.ims_pcu_flash_fmt** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.ims_pcu_flash_fmt*, %struct.ims_pcu_flash_fmt** %10, align 8
  %20 = getelementptr inbounds %struct.ims_pcu_flash_fmt, %struct.ims_pcu_flash_fmt* %19, i32 0, i32 2
  %21 = call i32 @put_unaligned_le32(i64 %18, i32* %20)
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ims_pcu_flash_fmt*, %struct.ims_pcu_flash_fmt** %10, align 8
  %24 = getelementptr inbounds %struct.ims_pcu_flash_fmt, %struct.ims_pcu_flash_fmt* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %26 = load i32, i32* @READ_APP, align 4
  %27 = load i32, i32* @IMS_PCU_CMD_RESPONSE_TIMEOUT, align 4
  %28 = call i32 @ims_pcu_execute_bl_command(%struct.ims_pcu* %25, i32 %26, i32* null, i32 5, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  %32 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %33 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i32, i8*, i64, i64, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %94

41:                                               ; preds = %4
  %42 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %43 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @IMS_PCU_BL_DATA_OFFSET, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = bitcast i32* %46 to i8*
  %48 = bitcast i8* %47 to %struct.ims_pcu_flash_fmt*
  store %struct.ims_pcu_flash_fmt* %48, %struct.ims_pcu_flash_fmt** %10, align 8
  %49 = load %struct.ims_pcu_flash_fmt*, %struct.ims_pcu_flash_fmt** %10, align 8
  %50 = getelementptr inbounds %struct.ims_pcu_flash_fmt, %struct.ims_pcu_flash_fmt* %49, i32 0, i32 2
  %51 = call i64 @get_unaligned_le32(i32* %50)
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %41
  %55 = load %struct.ims_pcu_flash_fmt*, %struct.ims_pcu_flash_fmt** %10, align 8
  %56 = getelementptr inbounds %struct.ims_pcu_flash_fmt, %struct.ims_pcu_flash_fmt* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54, %41
  %61 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %62 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.ims_pcu_flash_fmt*, %struct.ims_pcu_flash_fmt** %10, align 8
  %66 = getelementptr inbounds %struct.ims_pcu_flash_fmt, %struct.ims_pcu_flash_fmt* %65, i32 0, i32 2
  %67 = call i64 @get_unaligned_le32(i32* %66)
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ims_pcu_flash_fmt*, %struct.ims_pcu_flash_fmt** %10, align 8
  %70 = getelementptr inbounds %struct.ims_pcu_flash_fmt, %struct.ims_pcu_flash_fmt* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i64, i64, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %67, i32 %68, i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %94

75:                                               ; preds = %54
  %76 = load %struct.ims_pcu_flash_fmt*, %struct.ims_pcu_flash_fmt** %10, align 8
  %77 = getelementptr inbounds %struct.ims_pcu_flash_fmt, %struct.ims_pcu_flash_fmt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @memcmp(i32 %78, i32* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %85 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 (i32, i8*, i64, i64, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %87, i64 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %94

93:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %83, %60, %31
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @put_unaligned_le32(i64, i32*) #1

declare dso_local i32 @ims_pcu_execute_bl_command(%struct.ims_pcu*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64, ...) #1

declare dso_local i64 @get_unaligned_le32(i32*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
