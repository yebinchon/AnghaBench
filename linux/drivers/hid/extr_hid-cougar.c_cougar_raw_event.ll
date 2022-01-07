; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cougar.c_cougar_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cougar.c_cougar_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.cougar = type { i32, %struct.cougar_shared* }
%struct.cougar_shared = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@COUGAR_FIELD_CODE = common dso_local global i64 0, align 8
@COUGAR_FIELD_ACTION = common dso_local global i64 0, align 8
@cougar_mapping = common dso_local global i8** null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unmapped special key code %0x: ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i8*, i32)* @cougar_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cougar_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cougar*, align 8
  %11 = alloca %struct.cougar_shared*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %16 = call %struct.cougar* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.cougar* %16, %struct.cougar** %10, align 8
  %17 = load %struct.cougar*, %struct.cougar** %10, align 8
  %18 = getelementptr inbounds %struct.cougar, %struct.cougar* %17, i32 0, i32 1
  %19 = load %struct.cougar_shared*, %struct.cougar_shared** %18, align 8
  store %struct.cougar_shared* %19, %struct.cougar_shared** %11, align 8
  %20 = load %struct.cougar*, %struct.cougar** %10, align 8
  %21 = getelementptr inbounds %struct.cougar, %struct.cougar* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.cougar_shared*, %struct.cougar_shared** %11, align 8
  %26 = icmp ne %struct.cougar_shared* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %4
  store i32 0, i32* %5, align 4
  br label %106

28:                                               ; preds = %24
  %29 = load %struct.cougar_shared*, %struct.cougar_shared** %11, align 8
  %30 = getelementptr inbounds %struct.cougar_shared, %struct.cougar_shared* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.cougar_shared*, %struct.cougar_shared** %11, align 8
  %35 = getelementptr inbounds %struct.cougar_shared, %struct.cougar_shared* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %106

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* @COUGAR_FIELD_CODE, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %12, align 1
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* @COUGAR_FIELD_ACTION, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %13, align 1
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %92, %41
  %51 = load i8**, i8*** @cougar_mapping, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %50
  %60 = load i8, i8* %12, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8**, i8*** @cougar_mapping, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %61, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %59
  %72 = load %struct.cougar_shared*, %struct.cougar_shared** %11, align 8
  %73 = getelementptr inbounds %struct.cougar_shared, %struct.cougar_shared* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @EV_KEY, align 4
  %76 = load i8**, i8*** @cougar_mapping, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = load i8, i8* %13, align 1
  %84 = call i32 @input_event(i32 %74, i32 %75, i8 signext %82, i8 zeroext %83)
  %85 = load %struct.cougar_shared*, %struct.cougar_shared** %11, align 8
  %86 = getelementptr inbounds %struct.cougar_shared, %struct.cougar_shared* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @input_sync(i32 %87)
  %89 = load i32, i32* @EPERM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %106

91:                                               ; preds = %59
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %50

95:                                               ; preds = %50
  %96 = load i8, i8* %13, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %101 = load i8, i8* %12, align 1
  %102 = call i32 @hid_warn(%struct.hid_device* %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8 zeroext %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i32, i32* @EPERM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %71, %38, %27
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.cougar* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_event(i32, i32, i8 signext, i8 zeroext) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
