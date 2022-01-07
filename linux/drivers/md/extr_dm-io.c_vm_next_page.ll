; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_vm_next_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_vm_next_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpages = type { i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpages*)* @vm_next_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_next_page(%struct.dpages* %0) #0 {
  %2 = alloca %struct.dpages*, align 8
  store %struct.dpages* %0, %struct.dpages** %2, align 8
  %3 = load i64, i64* @PAGE_SIZE, align 8
  %4 = load %struct.dpages*, %struct.dpages** %2, align 8
  %5 = getelementptr inbounds %struct.dpages, %struct.dpages* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = sub nsw i64 %3, %6
  %8 = load %struct.dpages*, %struct.dpages** %2, align 8
  %9 = getelementptr inbounds %struct.dpages, %struct.dpages* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 8
  %14 = load %struct.dpages*, %struct.dpages** %2, align 8
  %15 = getelementptr inbounds %struct.dpages, %struct.dpages* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
