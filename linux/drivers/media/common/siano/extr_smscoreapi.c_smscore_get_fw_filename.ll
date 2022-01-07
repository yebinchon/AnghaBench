; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_get_fw_filename.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_get_fw_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32 }
%struct.TYPE_2__ = type { i8** }

@SMS_UNKNOWN_TYPE = common dso_local global i32 0, align 4
@SMS_NUM_OF_DEVICE_TYPES = common dso_local global i32 0, align 4
@DEVICE_MODE_NONE = common dso_local global i32 0, align 4
@DEVICE_MODE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"trying to get fw name from sms_boards board_id %d mode %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"cannot find fw name in sms_boards, getting from lookup table mode %d type %d\0A\00", align 1
@smscore_fw_lkup = common dso_local global i8*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.smscore_device_t*, i32)* @smscore_get_fw_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @smscore_get_fw_filename(%struct.smscore_device_t* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.smscore_device_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %10 = call i32 @smscore_get_board_id(%struct.smscore_device_t* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %12 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @smscore_registry_gettype(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SMS_UNKNOWN_TYPE, align 4
  %17 = icmp ule i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SMS_NUM_OF_DEVICE_TYPES, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %2
  store i8* null, i8** %3, align 8
  br label %68

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DEVICE_MODE_NONE, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @DEVICE_MODE_MAX, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  store i8* null, i8** %3, align 8
  br label %68

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.TYPE_2__* @sms_get_board(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  store i8** %39, i8*** %6, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load i8**, i8*** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %42, %32
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i8***, i8**** @smscore_fw_lkup, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8**, i8*** %53, i64 %55
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %3, align 8
  br label %68

62:                                               ; preds = %42
  %63 = load i8**, i8*** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %3, align 8
  br label %68

68:                                               ; preds = %62, %49, %31, %22
  %69 = load i8*, i8** %3, align 8
  ret i8* %69
}

declare dso_local i32 @smscore_get_board_id(%struct.smscore_device_t*) #1

declare dso_local i32 @smscore_registry_gettype(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @sms_get_board(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
