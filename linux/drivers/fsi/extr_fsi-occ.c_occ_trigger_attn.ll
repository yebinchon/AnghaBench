; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_occ_trigger_attn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_occ_trigger_attn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occ = type { i32, i32 }

@OCC_SBE_STATUS_WORDS = common dso_local global i32 0, align 4
@SBEFIFO_CMD_PUT_OCC_SRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SRAM attn response length invalid: %zd\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"SRAM attn expected 8 bytes got %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"SRAM attn returned failure status: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.occ*)* @occ_trigger_attn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_trigger_attn(%struct.occ* %0) #0 {
  %2 = alloca %struct.occ*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.occ* %0, %struct.occ** %2, align 8
  %8 = load i32, i32* @OCC_SBE_STATUS_WORDS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i64, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @OCC_SBE_STATUS_WORDS, align 4
  %13 = icmp slt i32 %12, 7
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load i32, i32* @OCC_SBE_STATUS_WORDS, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = call i64 @cpu_to_be32(i32 7)
  %19 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 %18, i64* %19, align 16
  %20 = load i32, i32* @SBEFIFO_CMD_PUT_OCC_SRAM, align 4
  %21 = call i64 @cpu_to_be32(i32 %20)
  %22 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 %21, i64* %22, align 8
  %23 = call i64 @cpu_to_be32(i32 3)
  %24 = getelementptr inbounds i64, i64* %11, i64 2
  store i64 %23, i64* %24, align 16
  %25 = call i64 @cpu_to_be32(i32 0)
  %26 = getelementptr inbounds i64, i64* %11, i64 3
  store i64 %25, i64* %26, align 8
  %27 = call i64 @cpu_to_be32(i32 8)
  %28 = getelementptr inbounds i64, i64* %11, i64 4
  store i64 %27, i64* %28, align 16
  %29 = call i64 @cpu_to_be32(i32 536936448)
  %30 = getelementptr inbounds i64, i64* %11, i64 5
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds i64, i64* %11, i64 6
  store i64 0, i64* %31, align 16
  %32 = load %struct.occ*, %struct.occ** %2, align 8
  %33 = getelementptr inbounds %struct.occ, %struct.occ* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sbefifo_submit(i32 %34, i64* %11, i32 7, i64* %11, i64* %5)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  br label %78

39:                                               ; preds = %1
  %40 = load %struct.occ*, %struct.occ** %2, align 8
  %41 = getelementptr inbounds %struct.occ, %struct.occ* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SBEFIFO_CMD_PUT_OCC_SRAM, align 4
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @sbefifo_parse_status(i32 %42, i32 %43, i64* %11, i64 %44, i64* %5)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %78

49:                                               ; preds = %39
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 1
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.occ*, %struct.occ** %2, align 8
  %54 = getelementptr inbounds %struct.occ, %struct.occ* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %5, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EBADMSG, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %77

61:                                               ; preds = %49
  %62 = getelementptr inbounds i64, i64* %11, i64 0
  %63 = load i64, i64* %62, align 16
  %64 = call i64 @be32_to_cpu(i64 %63)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 8
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.occ*, %struct.occ** %2, align 8
  %69 = getelementptr inbounds %struct.occ, %struct.occ* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %6, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EBADMSG, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %67, %61
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %48, %38
  %79 = load i32, i32* %7, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.occ*, %struct.occ** %2, align 8
  %83 = getelementptr inbounds %struct.occ, %struct.occ* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EBADMSG, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %81, %78
  %90 = load i32, i32* %7, align 4
  %91 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %91)
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i64 @cpu_to_be32(i32) #2

declare dso_local i32 @sbefifo_submit(i32, i64*, i32, i64*, i64*) #2

declare dso_local i32 @sbefifo_parse_status(i32, i32, i64*, i64, i64*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i64 @be32_to_cpu(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
