; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_parse_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_parse_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"sbefifo: cmd %04x, response too small: %zd\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"SBE cmd %02x:%02x status offset out of range: %d/%zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"SBE cmd %02x:%02x, status signature invalid: 0x%08x 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"SBE error cmd %02x:%02x status=%04x:%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbefifo_parse_status(%struct.device* %0, i32 %1, i32* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ult i64 %16, 3
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %20)
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %124

24:                                               ; preds = %5
  %25 = load i32*, i32** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @be32_to_cpu(i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i64, i64* %12, align 8
  %36 = icmp ult i64 %35, 3
  br i1 %36, label %37, label %48

37:                                               ; preds = %34, %24
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 8
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 255
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42, i64 %43, i64 %44)
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %124

48:                                               ; preds = %34
  %49 = load i32*, i32** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %12, align 8
  %52 = sub i64 %50, %51
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @be32_to_cpu(i32 %54)
  store i64 %55, i64* %13, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = sub i64 %57, %58
  %60 = add i64 %59, 1
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @be32_to_cpu(i32 %62)
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %13, align 8
  %65 = lshr i64 %64, 16
  %66 = icmp ne i64 %65, 49374
  br i1 %66, label %73, label %67

67:                                               ; preds = %48
  %68 = load i64, i64* %13, align 8
  %69 = and i64 %68, 65535
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67, %48
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 8
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 255
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %78, i64 %79, i64 %80)
  %82 = load i32, i32* @ENXIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %124

84:                                               ; preds = %67
  %85 = load i64, i64* %14, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %84
  %88 = load i64, i64* %12, align 8
  %89 = sub i64 %88, 3
  store i64 %89, i64* %15, align 8
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = ashr i32 %91, 8
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, 255
  %95 = load i64, i64* %14, align 8
  %96 = lshr i64 %95, 16
  %97 = load i64, i64* %14, align 8
  %98 = and i64 %97, 65535
  %99 = call i32 @dev_warn(%struct.device* %90, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %94, i64 %96, i64 %98)
  %100 = load i64, i64* %15, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %87
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub i64 %105, %106
  %108 = add i64 %107, 2
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i64, i64* %15, align 8
  %111 = call i32 @sbefifo_dump_ffdc(%struct.device* %103, i32* %109, i64 %110, i32 0)
  br label %112

112:                                              ; preds = %102, %87
  br label %113

113:                                              ; preds = %112, %84
  %114 = load i64*, i64** %11, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %12, align 8
  %119 = sub i64 %117, %118
  %120 = load i64*, i64** %11, align 8
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %116, %113
  %122 = load i64, i64* %14, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %121, %73, %37, %18
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @sbefifo_dump_ffdc(%struct.device*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
