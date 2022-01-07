; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_occ_putsram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-occ.c_occ_putsram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occ = type { i32, i32 }

@OCC_SBE_STATUS_WORDS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SBEFIFO_CMD_PUT_OCC_SRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"SRAM write response length invalid: %zd\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"SRAM write expected %d bytes got %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"SRAM write returned failure status: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.occ*, i32, i8*, i32)* @occ_putsram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_putsram(%struct.occ* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.occ*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.occ* %0, %struct.occ** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 7
  %19 = sdiv i32 %18, 8
  %20 = mul nsw i32 %19, 8
  store i32 %20, i32* %14, align 4
  %21 = load i64, i64* @OCC_SBE_STATUS_WORDS, align 8
  store i64 %21, i64* %12, align 8
  %22 = load i32, i32* %14, align 4
  %23 = ashr i32 %22, 2
  %24 = add nsw i32 %23, 5
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i64 @max(i64 %26, i64 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = shl i64 %29, 2
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kzalloc(i64 %30, i32 %31)
  store i32* %32, i32** %15, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %132

38:                                               ; preds = %4
  %39 = load i64, i64* %10, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @cpu_to_be32(i32 %40)
  %42 = load i32*, i32** %15, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @SBEFIFO_CMD_PUT_OCC_SRAM, align 4
  %45 = call i32 @cpu_to_be32(i32 %44)
  %46 = load i32*, i32** %15, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  %48 = call i32 @cpu_to_be32(i32 1)
  %49 = load i32*, i32** %15, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @cpu_to_be32(i32 %51)
  %53 = load i32*, i32** %15, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @cpu_to_be32(i32 %55)
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @memcpy(i32* %60, i8* %61, i32 %62)
  %64 = load %struct.occ*, %struct.occ** %6, align 8
  %65 = getelementptr inbounds %struct.occ, %struct.occ* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @sbefifo_submit(i32 %66, i32* %67, i64 %68, i32* %69, i64* %12)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %38
  br label %117

74:                                               ; preds = %38
  %75 = load %struct.occ*, %struct.occ** %6, align 8
  %76 = getelementptr inbounds %struct.occ, %struct.occ* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SBEFIFO_CMD_PUT_OCC_SRAM, align 4
  %79 = load i32*, i32** %15, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @sbefifo_parse_status(i32 %77, i32 %78, i32* %79, i64 %80, i64* %12)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %117

85:                                               ; preds = %74
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 1
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.occ*, %struct.occ** %6, align 8
  %90 = getelementptr inbounds %struct.occ, %struct.occ* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %12, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EBADMSG, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %16, align 4
  br label %116

97:                                               ; preds = %85
  %98 = load i32*, i32** %15, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @be32_to_cpu(i32 %100)
  store i64 %101, i64* %13, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ne i64 %102, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load %struct.occ*, %struct.occ** %6, align 8
  %108 = getelementptr inbounds %struct.occ, %struct.occ* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i64, i64* %13, align 8
  %112 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %110, i64 %111)
  %113 = load i32, i32* @EBADMSG, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %16, align 4
  br label %115

115:                                              ; preds = %106, %97
  br label %116

116:                                              ; preds = %115, %88
  br label %117

117:                                              ; preds = %116, %84, %73
  %118 = load i32, i32* %16, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load %struct.occ*, %struct.occ** %6, align 8
  %122 = getelementptr inbounds %struct.occ, %struct.occ* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %16, align 4
  %125 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EBADMSG, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %16, align 4
  br label %128

128:                                              ; preds = %120, %117
  %129 = load i32*, i32** %15, align 8
  %130 = call i32 @kfree(i32* %129)
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %128, %35
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @sbefifo_submit(i32, i32*, i64, i32*, i64*) #1

declare dso_local i32 @sbefifo_parse_status(i32, i32, i32*, i64, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
