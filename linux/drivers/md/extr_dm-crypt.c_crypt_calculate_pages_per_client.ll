; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_calculate_pages_per_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_calculate_pages_per_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DM_CRYPT_MEMORY_PERCENT = common dso_local global i32 0, align 4
@dm_crypt_clients_n = common dso_local global i64 0, align 8
@DM_CRYPT_MIN_PAGES_PER_CLIENT = common dso_local global i64 0, align 8
@dm_crypt_pages_per_client = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @crypt_calculate_pages_per_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_calculate_pages_per_client() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @totalram_pages()
  %3 = call i32 (...) @totalhigh_pages()
  %4 = sub nsw i32 %2, %3
  %5 = load i32, i32* @DM_CRYPT_MEMORY_PERCENT, align 4
  %6 = mul nsw i32 %4, %5
  %7 = sdiv i32 %6, 100
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* @dm_crypt_clients_n, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %23

12:                                               ; preds = %0
  %13 = load i64, i64* @dm_crypt_clients_n, align 8
  %14 = load i64, i64* %1, align 8
  %15 = udiv i64 %14, %13
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @DM_CRYPT_MIN_PAGES_PER_CLIENT, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i64, i64* @DM_CRYPT_MIN_PAGES_PER_CLIENT, align 8
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %19, %12
  %22 = load i64, i64* %1, align 8
  store i64 %22, i64* @dm_crypt_pages_per_client, align 8
  br label %23

23:                                               ; preds = %21, %11
  ret void
}

declare dso_local i32 @totalram_pages(...) #1

declare dso_local i32 @totalhigh_pages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
