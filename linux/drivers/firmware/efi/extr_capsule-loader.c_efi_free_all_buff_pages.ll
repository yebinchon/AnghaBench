; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_capsule-loader.c_efi_free_all_buff_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_capsule-loader.c_efi_free_all_buff_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capsule_info = type { i64, i32* }

@NO_FURTHER_WRITE_ACTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.capsule_info*)* @efi_free_all_buff_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_free_all_buff_pages(%struct.capsule_info* %0) #0 {
  %2 = alloca %struct.capsule_info*, align 8
  store %struct.capsule_info* %0, %struct.capsule_info** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.capsule_info*, %struct.capsule_info** %2, align 8
  %5 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ugt i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = load %struct.capsule_info*, %struct.capsule_info** %2, align 8
  %10 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.capsule_info*, %struct.capsule_info** %2, align 8
  %13 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__free_page(i32 %17)
  br label %3

19:                                               ; preds = %3
  %20 = load i64, i64* @NO_FURTHER_WRITE_ACTION, align 8
  %21 = load %struct.capsule_info*, %struct.capsule_info** %2, align 8
  %22 = getelementptr inbounds %struct.capsule_info, %struct.capsule_info* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  ret void
}

declare dso_local i32 @__free_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
