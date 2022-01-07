; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_rw_section_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_rw_section_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32 }
%struct.journal_sector = type { i32 }

@JOURNAL_MAC_SIZE = common dso_local global i32 0, align 4
@JOURNAL_BLOCK_SECTORS = common dso_local global i32 0, align 4
@JOURNAL_MAC_PER_SECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"journal mac\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, i32, i32)* @rw_section_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rw_section_mac(%struct.dm_integrity_c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_integrity_c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.journal_sector*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @JOURNAL_MAC_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %17 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %69

21:                                               ; preds = %3
  %22 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @section_mac(%struct.dm_integrity_c* %22, i32 %23, i32* %15)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %65, %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @JOURNAL_BLOCK_SECTORS, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.journal_sector* @access_journal(%struct.dm_integrity_c* %30, i32 %31, i32 %32)
  store %struct.journal_sector* %33, %struct.journal_sector** %11, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = load %struct.journal_sector*, %struct.journal_sector** %11, align 8
  %39 = getelementptr inbounds %struct.journal_sector, %struct.journal_sector* %38, i32 0, i32 0
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @JOURNAL_MAC_PER_SECTOR, align 4
  %42 = mul i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %15, i64 %43
  %45 = load i32, i32* @JOURNAL_MAC_PER_SECTOR, align 4
  %46 = call i32 @memcpy(i32* %39, i32* %44, i32 %45)
  br label %64

47:                                               ; preds = %29
  %48 = load %struct.journal_sector*, %struct.journal_sector** %11, align 8
  %49 = getelementptr inbounds %struct.journal_sector, %struct.journal_sector* %48, i32 0, i32 0
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @JOURNAL_MAC_PER_SECTOR, align 4
  %52 = mul i32 %50, %51
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %15, i64 %53
  %55 = load i32, i32* @JOURNAL_MAC_PER_SECTOR, align 4
  %56 = call i64 @memcmp(i32* %49, i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %60 = load i32, i32* @EILSEQ, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %47
  br label %64

64:                                               ; preds = %63, %37
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %25

68:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %20
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %10, align 4
  switch i32 %71, label %73 [
    i32 0, label %72
    i32 1, label %72
  ]

72:                                               ; preds = %69, %69
  ret void

73:                                               ; preds = %69
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @section_mac(%struct.dm_integrity_c*, i32, i32*) #2

declare dso_local %struct.journal_sector* @access_journal(%struct.dm_integrity_c*, i32, i32) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @dm_integrity_io_error(%struct.dm_integrity_c*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
