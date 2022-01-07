; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_le64_inc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_le64_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @le64_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le64_inc(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dm_transaction_manager*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.dm_transaction_manager*
  store %struct.dm_transaction_manager* %8, %struct.dm_transaction_manager** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @memcpy(i32* %6, i8* %9, i32 4)
  %11 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @le64_to_cpu(i32 %12)
  %14 = call i32 @dm_tm_inc(%struct.dm_transaction_manager* %11, i32 %13)
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @dm_tm_inc(%struct.dm_transaction_manager*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
