; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_occ_getsram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_occ_getsram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occ = type { i32, i32 }

@SBEFIFO_CMD_GET_OCC_SRAM = common dso_local global i32 0, align 4
@OCC_SBE_STATUS_WORDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SRAM read expected %d bytes got %zd\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"SRAM read returned failure status: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.occ*, i32, i8*, i32)* @occ_getsram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_getsram(%struct.occ* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.occ*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [5 x i32], align 16
  %15 = alloca i32, align 4
  store %struct.occ* %0, %struct.occ** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 7
  %18 = sdiv i32 %17, 8
  %19 = mul nsw i32 %18, 8
  store i32 %19, i32* %10, align 4
  %20 = call i32 @cpu_to_be32(i32 5)
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i32, i32* @SBEFIFO_CMD_GET_OCC_SRAM, align 4
  %23 = call i32 @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = call i32 @cpu_to_be32(i32 1)
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @cpu_to_be32(i32 %27)
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @cpu_to_be32(i32 %30)
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 4
  store i32 %31, i32* %32, align 16
  %33 = load i32, i32* %10, align 4
  %34 = ashr i32 %33, 2
  %35 = load i32, i32* @OCC_SBE_STATUS_WORDS, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = shl i64 %38, 2
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @kzalloc(i64 %39, i32 %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %109

47:                                               ; preds = %4
  %48 = load %struct.occ*, %struct.occ** %6, align 8
  %49 = getelementptr inbounds %struct.occ, %struct.occ* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @sbefifo_submit(i32 %50, i32* %51, i32 5, i32* %52, i64* %11)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %94

57:                                               ; preds = %47
  %58 = load %struct.occ*, %struct.occ** %6, align 8
  %59 = getelementptr inbounds %struct.occ, %struct.occ* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SBEFIFO_CMD_GET_OCC_SRAM, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @sbefifo_parse_status(i32 %60, i32 %61, i32* %62, i64 %63, i64* %11)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %94

68:                                               ; preds = %57
  %69 = load i32*, i32** %13, align 8
  %70 = load i64, i64* %11, align 8
  %71 = sub i64 %70, 1
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @be32_to_cpu(i32 %73)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %68
  %80 = load %struct.occ*, %struct.occ** %6, align 8
  %81 = getelementptr inbounds %struct.occ, %struct.occ* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i64, i64* %12, align 8
  %85 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %83, i64 %84)
  %86 = load i32, i32* @EBADMSG, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %15, align 4
  br label %93

88:                                               ; preds = %68
  %89 = load i8*, i8** %8, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @memcpy(i8* %89, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %79
  br label %94

94:                                               ; preds = %93, %67, %56
  %95 = load i32, i32* %15, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load %struct.occ*, %struct.occ** %6, align 8
  %99 = getelementptr inbounds %struct.occ, %struct.occ* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EBADMSG, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %97, %94
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @kfree(i32* %106)
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %44
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @sbefifo_submit(i32, i32*, i32, i32*, i64*) #1

declare dso_local i32 @sbefifo_parse_status(i32, i32, i32*, i64, i64*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
