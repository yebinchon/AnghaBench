; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper-x86.c_print_err_info_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper-x86.c_print_err_info_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHECK_VALID_MS_ERR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%sError Type: %u, %s\0A\00", align 1
@ia_check_ms_error_type_strs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@CHECK_VALID_MS_PCC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Processor Context Corrupt\00", align 1
@CHECK_MS_PCC = common dso_local global i32 0, align 4
@CHECK_VALID_MS_UNCORRECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Uncorrected\00", align 1
@CHECK_MS_UNCORRECTED = common dso_local global i32 0, align 4
@CHECK_VALID_MS_PRECISE_IP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Precise IP\00", align 1
@CHECK_MS_PRECISE_IP = common dso_local global i32 0, align 4
@CHECK_VALID_MS_RESTARTABLE_IP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Restartable IP\00", align 1
@CHECK_MS_RESTARTABLE_IP = common dso_local global i32 0, align 4
@CHECK_VALID_MS_OVERFLOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@CHECK_MS_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @print_err_info_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_err_info_ms(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @CHECK_VALID_MS_ERR_TYPE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @CHECK_MS_ERR_TYPE(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i8**, i8*** @ia_check_ms_error_type_strs, align 8
  %19 = call i64 @ARRAY_SIZE(i8** %18)
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load i8**, i8*** @ia_check_ms_error_type_strs, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  br label %27

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i8* [ %25, %21 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %15, i64 %16, i8* %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CHECK_VALID_MS_PCC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @CHECK_MS_PCC, align 4
  %39 = call i32 @print_bool(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @CHECK_VALID_MS_UNCORRECTED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CHECK_MS_UNCORRECTED, align 4
  %49 = call i32 @print_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @CHECK_VALID_MS_PRECISE_IP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @CHECK_MS_PRECISE_IP, align 4
  %59 = call i32 @print_bool(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @CHECK_VALID_MS_RESTARTABLE_IP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @CHECK_MS_RESTARTABLE_IP, align 4
  %69 = call i32 @print_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @CHECK_VALID_MS_OVERFLOW, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @CHECK_MS_OVERFLOW, align 4
  %79 = call i32 @print_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %70
  ret void
}

declare dso_local i64 @CHECK_MS_ERR_TYPE(i32) #1

declare dso_local i32 @printk(i8*, i8*, i64, i8*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @print_bool(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
