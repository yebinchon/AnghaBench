; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_restore_last_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_restore_last_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32 }
%struct.journal_sector = type { i32 }
%struct.journal_entry = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, %struct.journal_sector*, %struct.journal_entry*)* @restore_last_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_last_bytes(%struct.dm_integrity_c* %0, %struct.journal_sector* %1, %struct.journal_entry* %2) #0 {
  %4 = alloca %struct.dm_integrity_c*, align 8
  %5 = alloca %struct.journal_sector*, align 8
  %6 = alloca %struct.journal_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %4, align 8
  store %struct.journal_sector* %1, %struct.journal_sector** %5, align 8
  store %struct.journal_entry* %2, %struct.journal_entry** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %20, %3
  %9 = load %struct.journal_entry*, %struct.journal_entry** %6, align 8
  %10 = getelementptr inbounds %struct.journal_entry, %struct.journal_entry* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.journal_sector*, %struct.journal_sector** %5, align 8
  %17 = getelementptr inbounds %struct.journal_sector, %struct.journal_sector* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.journal_sector*, %struct.journal_sector** %5, align 8
  %19 = getelementptr inbounds %struct.journal_sector, %struct.journal_sector* %18, i32 1
  store %struct.journal_sector* %19, %struct.journal_sector** %5, align 8
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %24 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %8, label %27

27:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
