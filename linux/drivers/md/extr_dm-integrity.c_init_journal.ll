; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_init_journal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_init_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, i32 }
%struct.journal_sector = type { i32, i32 }
%struct.journal_entry = type { i32 }

@JOURNAL_SECTOR_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, i32, i32, i8)* @init_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_journal(%struct.dm_integrity_c* %0, i32 %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.dm_integrity_c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.journal_sector*, align 8
  %13 = alloca %struct.journal_entry*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %79

17:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %71, %17
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %11, align 4
  %25 = add i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %27 = call i32 @wraparound_section(%struct.dm_integrity_c* %26, i32* %9)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %50, %22
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %31 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.journal_sector* @access_journal(%struct.dm_integrity_c* %35, i32 %36, i32 %37)
  store %struct.journal_sector* %38, %struct.journal_sector** %12, align 8
  %39 = load %struct.journal_sector*, %struct.journal_sector** %12, align 8
  %40 = getelementptr inbounds %struct.journal_sector, %struct.journal_sector* %39, i32 0, i32 1
  %41 = load i32, i32* @JOURNAL_SECTOR_DATA, align 4
  %42 = call i32 @memset(i32* %40, i32 0, i32 %41)
  %43 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i8, i8* %8, align 1
  %47 = call i32 @dm_integrity_commit_id(%struct.dm_integrity_c* %43, i32 %44, i32 %45, i8 zeroext %46)
  %48 = load %struct.journal_sector*, %struct.journal_sector** %12, align 8
  %49 = getelementptr inbounds %struct.journal_sector, %struct.journal_sector* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %28

53:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %57 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.journal_entry* @access_journal_entry(%struct.dm_integrity_c* %61, i32 %62, i32 %63)
  store %struct.journal_entry* %64, %struct.journal_entry** %13, align 8
  %65 = load %struct.journal_entry*, %struct.journal_entry** %13, align 8
  %66 = call i32 @journal_entry_set_unused(%struct.journal_entry* %65)
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %54

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %18

74:                                               ; preds = %18
  %75 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @write_journal(%struct.dm_integrity_c* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %16
  ret void
}

declare dso_local i32 @wraparound_section(%struct.dm_integrity_c*, i32*) #1

declare dso_local %struct.journal_sector* @access_journal(%struct.dm_integrity_c*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dm_integrity_commit_id(%struct.dm_integrity_c*, i32, i32, i8 zeroext) #1

declare dso_local %struct.journal_entry* @access_journal_entry(%struct.dm_integrity_c*, i32, i32) #1

declare dso_local i32 @journal_entry_set_unused(%struct.journal_entry*) #1

declare dso_local i32 @write_journal(%struct.dm_integrity_c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
