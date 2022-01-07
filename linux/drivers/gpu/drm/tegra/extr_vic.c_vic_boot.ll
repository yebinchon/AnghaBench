; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vic = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { i64 }

@CG_IDLE_CG_EN = common dso_local global i32 0, align 4
@NV_PVIC_MISC_PRI_VIC_CG = common dso_local global i32 0, align 4
@VIC_UCODE_FCE_DATA_OFFSET = common dso_local global i32 0, align 4
@VIC_UCODE_FCE_HEADER_OFFSET = common dso_local global i32 0, align 4
@FCE_UCODE_SIZE_OFFSET = common dso_local global i32 0, align 4
@VIC_SET_APPLICATION_ID = common dso_local global i32 0, align 4
@VIC_SET_FCE_UCODE_SIZE = common dso_local global i32 0, align 4
@VIC_SET_FCE_UCODE_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to set application ID and FCE base\0A\00", align 1
@TRANSCFG_SID_FALCON = common dso_local global i32 0, align 4
@TRANSCFG_SID_HW = common dso_local global i32 0, align 4
@VIC_TFBIF_TRANSCFG = common dso_local global i32 0, align 4
@VIC_THI_STREAMID0 = common dso_local global i32 0, align 4
@VIC_THI_STREAMID1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vic*)* @vic_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vic_boot(%struct.vic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.vic* %0, %struct.vic** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.vic*, %struct.vic** %3, align 8
  %9 = getelementptr inbounds %struct.vic, %struct.vic* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

13:                                               ; preds = %1
  %14 = load %struct.vic*, %struct.vic** %3, align 8
  %15 = call i32 @CG_IDLE_CG_DLY_CNT(i32 4)
  %16 = load i32, i32* @CG_IDLE_CG_EN, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @CG_WAKEUP_DLY_CNT(i32 4)
  %19 = or i32 %17, %18
  %20 = load i32, i32* @NV_PVIC_MISC_PRI_VIC_CG, align 4
  %21 = call i32 @vic_writel(%struct.vic* %14, i32 %19, i32 %20)
  %22 = load %struct.vic*, %struct.vic** %3, align 8
  %23 = getelementptr inbounds %struct.vic, %struct.vic* %22, i32 0, i32 2
  %24 = call i32 @falcon_boot(%struct.TYPE_8__* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %95

29:                                               ; preds = %13
  %30 = load %struct.vic*, %struct.vic** %3, align 8
  %31 = getelementptr inbounds %struct.vic, %struct.vic* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @VIC_UCODE_FCE_DATA_OFFSET, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.vic*, %struct.vic** %3, align 8
  %42 = getelementptr inbounds %struct.vic, %struct.vic* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @VIC_UCODE_FCE_HEADER_OFFSET, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %45, i64 %52
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @FCE_UCODE_SIZE_OFFSET, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %54, i64 %56
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %4, align 4
  %60 = load %struct.vic*, %struct.vic** %3, align 8
  %61 = getelementptr inbounds %struct.vic, %struct.vic* %60, i32 0, i32 2
  %62 = load i32, i32* @VIC_SET_APPLICATION_ID, align 4
  %63 = call i32 @falcon_execute_method(%struct.TYPE_8__* %61, i32 %62, i32 1)
  %64 = load %struct.vic*, %struct.vic** %3, align 8
  %65 = getelementptr inbounds %struct.vic, %struct.vic* %64, i32 0, i32 2
  %66 = load i32, i32* @VIC_SET_FCE_UCODE_SIZE, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @falcon_execute_method(%struct.TYPE_8__* %65, i32 %66, i32 %67)
  %69 = load %struct.vic*, %struct.vic** %3, align 8
  %70 = getelementptr inbounds %struct.vic, %struct.vic* %69, i32 0, i32 2
  %71 = load i32, i32* @VIC_SET_FCE_UCODE_OFFSET, align 4
  %72 = load %struct.vic*, %struct.vic** %3, align 8
  %73 = getelementptr inbounds %struct.vic, %struct.vic* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %76, %77
  %79 = ashr i32 %78, 8
  %80 = call i32 @falcon_execute_method(%struct.TYPE_8__* %70, i32 %71, i32 %79)
  %81 = load %struct.vic*, %struct.vic** %3, align 8
  %82 = getelementptr inbounds %struct.vic, %struct.vic* %81, i32 0, i32 2
  %83 = call i32 @falcon_wait_idle(%struct.TYPE_8__* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %29
  %87 = load %struct.vic*, %struct.vic** %3, align 8
  %88 = getelementptr inbounds %struct.vic, %struct.vic* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %95

92:                                               ; preds = %29
  %93 = load %struct.vic*, %struct.vic** %3, align 8
  %94 = getelementptr inbounds %struct.vic, %struct.vic* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %92, %86, %27, %12
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @vic_writel(%struct.vic*, i32, i32) #1

declare dso_local i32 @CG_IDLE_CG_DLY_CNT(i32) #1

declare dso_local i32 @CG_WAKEUP_DLY_CNT(i32) #1

declare dso_local i32 @falcon_boot(%struct.TYPE_8__*) #1

declare dso_local i32 @falcon_execute_method(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @falcon_wait_idle(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
