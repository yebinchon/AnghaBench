; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c___ims_pcu_execute_bl_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c___ims_pcu_execute_bl_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32*, i32 }

@IMS_PCU_CMD_BOOTLOADER = common dso_local global i32 0, align 4
@IMS_PCU_RSP_BOOTLOADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Failure when sending 0x%02x command to bootloader, error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Unexpected response from bootloader: 0x%02x, wanted 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*, i32, i8*, i64, i32, i32)* @__ims_pcu_execute_bl_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ims_pcu_execute_bl_command(%struct.ims_pcu* %0, i32 %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ims_pcu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %17 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %24 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @memcpy(i32* %26, i8* %27, i64 %28)
  br label %30

30:                                               ; preds = %22, %6
  %31 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %32 = load i32, i32* @IMS_PCU_CMD_BOOTLOADER, align 4
  %33 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %34 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @IMS_PCU_RSP_BOOTLOADER, align 4
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @__ims_pcu_execute_command(%struct.ims_pcu* %31, i32 %32, i32* %35, i64 %37, i32 %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %51 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %54 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %7, align 4
  br label %86

61:                                               ; preds = %43
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %66 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %74 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ims_pcu*, %struct.ims_pcu** %8, align 8
  %77 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %86

85:                                               ; preds = %64, %61
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %72, %49
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @__ims_pcu_execute_command(%struct.ims_pcu*, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
