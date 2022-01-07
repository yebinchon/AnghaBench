; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-iops.c_ide_in_drive_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-iops.c_ide_in_drive_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drive_list_entry = type { i32, i64 }

@ATA_ID_PROD = common dso_local global i64 0, align 8
@ATA_ID_FW_REV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_in_drive_list(i32* %0, %struct.drive_list_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drive_list_entry*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.drive_list_entry* %1, %struct.drive_list_entry** %5, align 8
  br label %6

6:                                                ; preds = %38, %2
  %7 = load %struct.drive_list_entry*, %struct.drive_list_entry** %5, align 8
  %8 = getelementptr inbounds %struct.drive_list_entry, %struct.drive_list_entry* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = load %struct.drive_list_entry*, %struct.drive_list_entry** %5, align 8
  %13 = getelementptr inbounds %struct.drive_list_entry, %struct.drive_list_entry* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* @ATA_ID_PROD, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @strcmp(i64 %14, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %11
  %22 = load %struct.drive_list_entry*, %struct.drive_list_entry** %5, align 8
  %23 = getelementptr inbounds %struct.drive_list_entry, %struct.drive_list_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* @ATA_ID_FW_REV, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = bitcast i32* %29 to i8*
  %31 = load %struct.drive_list_entry*, %struct.drive_list_entry** %5, align 8
  %32 = getelementptr inbounds %struct.drive_list_entry, %struct.drive_list_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @strstr(i8* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26, %21
  store i32 1, i32* %3, align 4
  br label %42

37:                                               ; preds = %26, %11
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.drive_list_entry*, %struct.drive_list_entry** %5, align 8
  %40 = getelementptr inbounds %struct.drive_list_entry, %struct.drive_list_entry* %39, i32 1
  store %struct.drive_list_entry* %40, %struct.drive_list_entry** %5, align 8
  br label %6

41:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i64 @strstr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
