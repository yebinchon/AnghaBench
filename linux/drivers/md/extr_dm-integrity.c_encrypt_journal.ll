; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_encrypt_journal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_encrypt_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i64 }
%struct.journal_completion = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, i32, i32, i32, %struct.journal_completion*)* @encrypt_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encrypt_journal(%struct.dm_integrity_c* %0, i32 %1, i32 %2, i32 %3, %struct.journal_completion* %4) #0 {
  %6 = alloca %struct.dm_integrity_c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.journal_completion*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.journal_completion* %4, %struct.journal_completion** %10, align 8
  %11 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %12 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.journal_completion*, %struct.journal_completion** %10, align 8
  call void @xor_journal(%struct.dm_integrity_c* %16, i32 %17, i32 %18, i32 %19, %struct.journal_completion* %20)
  br label %27

21:                                               ; preds = %5
  %22 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.journal_completion*, %struct.journal_completion** %10, align 8
  call void @crypt_journal(%struct.dm_integrity_c* %22, i32 %23, i32 %24, i32 %25, %struct.journal_completion* %26)
  br label %27

27:                                               ; preds = %21, %15
  ret void
}

declare dso_local void @xor_journal(%struct.dm_integrity_c*, i32, i32, i32, %struct.journal_completion*) #1

declare dso_local void @crypt_journal(%struct.dm_integrity_c*, i32, i32, i32, %struct.journal_completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
