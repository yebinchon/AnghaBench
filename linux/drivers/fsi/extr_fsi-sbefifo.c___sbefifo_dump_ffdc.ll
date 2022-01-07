; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c___sbefifo_dump_ffdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c___sbefifo_dump_ffdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@__sbefifo_dump_ffdc.ffdc_line = internal global [60 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [35 x i8] c"SBE invalid FFDC package size %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"SBE invalid FFDC package signature %08x %08x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"SBE FFDC package len %d words but only %zd remaining\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"+---- SBE FFDC package %d for async err -----+\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"+---- SBE FFDC package %d for cmd %02x:%02x -----+\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"| Response code: %08x                   |\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"|-------------------------------------------|\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"| %04x:\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"         \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s |\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"+-------------------------------------------+\0A\00", align 1
@FFDC_LSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32*, i64, i32)* @__sbefifo_dump_ffdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sbefifo_dump_ffdc(%struct.device* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__sbefifo_dump_ffdc.ffdc_line, i64 0, i64 0), i8** %10, align 8
  br label %15

15:                                               ; preds = %144, %4
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %147

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %19, 3
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %147

26:                                               ; preds = %18
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %27, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* %31, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %6, align 8
  %37 = load i32, i32* %35, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %39, 3
  store i64 %40, i64* %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 16
  %43 = icmp ne i32 %42, 65500
  br i1 %43, label %44, label %50

44:                                               ; preds = %26
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  br label %147

50:                                               ; preds = %26
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 65535
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %7, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i64, i64* %7, align 8
  %61 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %59, i64 %60)
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %11, align 4
  br label %147

64:                                               ; preds = %50
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %82

72:                                               ; preds = %64
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %12, align 4
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 255
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 255
  %81 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %72, %67
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %141, %82
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %144

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = and i32 %93, 3
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__sbefifo_dump_ffdc.ffdc_line, i64 0, i64 0), i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %14, align 4
  %99 = shl i32 %98, 4
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load i8*, i8** %10, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %96, %92
  %105 = load i8*, i8** %10, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %6, align 8
  %108 = load i32, i32* %106, align 4
  %109 = call i32 @be32_to_cpu(i32 %108)
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = load i8*, i8** %10, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %10, align 8
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %114, -1
  store i64 %115, i64* %7, align 8
  %116 = load i32, i32* %14, align 4
  %117 = and i32 %116, 3
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %124, label %119

119:                                              ; preds = %104
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %11, align 4
  %122 = sub nsw i32 %121, 1
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %119, %104
  br label %125

125:                                              ; preds = %129, %124
  %126 = load i32, i32* %14, align 4
  %127 = and i32 %126, 3
  %128 = icmp slt i32 %127, 3
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 (i8*, i8*, ...) @sprintf(i8* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %132 = load i8*, i8** %10, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %10, align 8
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %125

137:                                              ; preds = %125
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__sbefifo_dump_ffdc.ffdc_line, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %119
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %88

144:                                              ; preds = %88
  %145 = load %struct.device*, %struct.device** %5, align 8
  %146 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %145, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  br label %15

147:                                              ; preds = %21, %57, %44, %15
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
