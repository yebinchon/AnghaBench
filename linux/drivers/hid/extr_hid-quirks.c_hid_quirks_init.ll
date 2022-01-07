; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-quirks.c_hid_quirks_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-quirks.c_hid_quirks_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device_id = type { i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"0x%hx:0x%hx:0x%x\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not parse HID quirk module param %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_quirks_init(i8** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device_id, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = bitcast %struct.hid_device_id* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %7, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  br label %16

16:                                               ; preds = %58, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i1 [ false, %16 ], [ %26, %20 ]
  br i1 %28, label %29, label %61

29:                                               ; preds = %27
  %30 = load i8**, i8*** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i16* %10, i16* %11, i32* %12)
  store i32 %35, i32* %9, align 4
  %36 = load i16, i16* %10, align 2
  %37 = zext i16 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %7, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i16, i16* %11, align 2
  %41 = zext i16 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %7, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 3
  br i1 %45, label %50, label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @hid_modify_dquirk(%struct.hid_device_id* %7, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46, %29
  %51 = load i8**, i8*** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %50, %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %16

61:                                               ; preds = %27
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sscanf(i8*, i8*, i16*, i16*, i32*) #2

declare dso_local i64 @hid_modify_dquirk(%struct.hid_device_id*, i32) #2

declare dso_local i32 @pr_warn(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
