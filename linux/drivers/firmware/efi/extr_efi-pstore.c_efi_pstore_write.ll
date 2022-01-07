; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c_efi_pstore_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c_efi_pstore_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore_record = type { i32, i32, i32, i64, %struct.TYPE_4__*, i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@DUMP_NAME_LEN = common dso_local global i32 0, align 4
@LINUX_EFI_CRASH_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dump-type%u-%u-%d-%lld-%c\00", align 1
@PSTORE_EFI_ATTRIBUTES = common dso_local global i32 0, align 4
@KMSG_DUMP_OOPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore_record*)* @efi_pstore_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_pstore_write(%struct.pstore_record* %0) #0 {
  %2 = alloca %struct.pstore_record*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pstore_record* %0, %struct.pstore_record** %2, align 8
  %9 = load i32, i32* @DUMP_NAME_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @DUMP_NAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load i32, i32* @LINUX_EFI_CRASH_GUID, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %18 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %22 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %25 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @generic_id(i64 %20, i32 %23, i32 %26)
  %28 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %29 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = trunc i64 %10 to i32
  %31 = call i32 @memset(i8* %12, i32 0, i32 %30)
  %32 = trunc i64 %10 to i32
  %33 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %34 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %37 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %40 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %43 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %47 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 67, i32 68
  %52 = trunc i32 %51 to i8
  %53 = call i32 @snprintf(i8* %12, i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %41, i64 %45, i8 signext %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %66, %1
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DUMP_NAME_LEN, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %12, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %15, i64 %64
  store i8 %62, i8* %65, align 1
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %54

69:                                               ; preds = %54
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @PSTORE_EFI_ATTRIBUTES, align 4
  %72 = call i32 (...) @preemptible()
  %73 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %74 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %77 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %76, i32 0, i32 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @efivar_entry_set_safe(i8* %15, i32 %70, i32 %71, i32 %72, i32 %75, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.pstore_record*, %struct.pstore_record** %2, align 8
  %83 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @KMSG_DUMP_OOPS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %69
  %88 = call i32 (...) @efivar_run_worker()
  br label %89

89:                                               ; preds = %87, %69
  %90 = load i32, i32* %8, align 4
  %91 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %91)
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @generic_id(i64, i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i64, i8 signext) #2

declare dso_local i32 @efivar_entry_set_safe(i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @preemptible(...) #2

declare dso_local i32 @efivar_run_worker(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
