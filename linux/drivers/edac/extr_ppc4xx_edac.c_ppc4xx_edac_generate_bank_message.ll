; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_generate_bank_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_generate_bank_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i8*, i32 }
%struct.ppc4xx_ecc_status = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s: Banks: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s; \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*, i8*, i64)* @ppc4xx_edac_generate_bank_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_edac_generate_bank_message(%struct.mem_ctl_info* %0, %struct.ppc4xx_ecc_status* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.ppc4xx_ecc_status*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.ppc4xx_ecc_status* %1, %struct.ppc4xx_ecc_status** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %13, i64 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %8, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %4
  br label %112

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %81, %27
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %42 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %39
  %46 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @ppc4xx_edac_check_bank_error(%struct.ppc4xx_ecc_status* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = icmp ne i32 %53, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %51, i64 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %8, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %50
  br label %112

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %68, %45
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %39

84:                                               ; preds = %39
  %85 = load i8*, i8** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %91 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %85, i64 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %8, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %84
  br label %112

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %8, align 8
  %108 = sub i64 %107, %106
  store i64 %108, i64* %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %100, %99, %67, %26
  %113 = load i32, i32* %10, align 4
  ret i32 %113
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i64 @ppc4xx_edac_check_bank_error(%struct.ppc4xx_ecc_status*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
